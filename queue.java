/*
 * File: Queue.java
 */
package com.uwec.gradiance;

import lombok.Getter;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

public class Queue {
    private LinkedList<QueueNode> queueSelf;
    @Getter
    private String ID;

    public Queue(String ID) {
        this.queueSelf = new LinkedList<>();
        this.ID = ID;
    }

    public void updatePriority(String priorityTarget) {
        // TODO: recalculate each node's priority based on target
        for (QueueNode node : queueSelf) {
            // e.g. node.setPriority(calculatePriority(node, priorityTarget));
        }
    }

    public QueueNode findNext() {
        if (queueSelf.isEmpty()) {
            return null;
        }
        // Use Comparable implementation
        return Collections.max(queueSelf);
    }

    public QueueNode findStudent(String email) {
        return queueSelf.stream()
                .filter(n -> n.getEmail().equalsIgnoreCase(email))
                .findFirst()
                .orElse(null);
    }

    public void appendStudent(QueueNode newStudent) {
        queueSelf.addLast(newStudent);
    }

    public void removeStudent(QueueNode node) {
        queueSelf.remove(node);
    }

    public List<QueueNode> getAll() {
        return Collections.unmodifiableList(queueSelf);
    }
}