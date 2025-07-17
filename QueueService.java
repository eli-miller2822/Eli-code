/*
 * File: QueueService.java
 */
package com.uwec.gradiance;

import org.springframework.context.ApplicationEventPublisher;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class QueueService {
    private final Queue queue;
    private final ApplicationEventPublisher publisher;

    public QueueService(ApplicationEventPublisher publisher) {
        this.publisher = publisher;
        this.queue = new Queue("defaultQueue");  // or inject via config
    }

    /**
     * Student joins the queue.
     */
    public QueueNode join(String email, String course, String evaluation) {
        QueueNode node = new QueueNode(email, course, evaluation);
        queue.appendStudent(node);
        publisher.publishEvent(new CustomEvent(this, email + " joined queue " + queue.getID()));
        return node;
    }

    /**
     * List current queue.
     */
    public List<QueueNode> list() {
        return queue.getAll();
    }

    /**
     * Instructor calls the next student.
     */
    public QueueNode callNext() {
        QueueNode next = queue.findNext();
        if (next != null) {
            queue.removeStudent(next);
            publisher.publishEvent(new CustomEvent(this, next.getEmail() + " is up from queue " + queue.getID()));
        }
        return next;
    }
}