/*
 * File: QueueNode.java
 */
package com.uwec.gradiance;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class QueueNode implements Comparable<QueueNode> {
    private String email;
    private String course;
    private String evaluation;
    private long joinTime;
    private int priority;

    public QueueNode(String email, String course, String evaluation) {
        this.email = email;
        this.course = course;
        this.evaluation = evaluation;
        this.joinTime = System.currentTimeMillis();
        this.priority = 0;
    }

    @Override
    public int compareTo(QueueNode other) {
        // Higher priority first; tie-breaker by earlier joinTime
        int cmp = Integer.compare(other.priority, this.priority);
        return (cmp != 0) ? cmp : Long.compare(this.joinTime, other.joinTime);
    }
}