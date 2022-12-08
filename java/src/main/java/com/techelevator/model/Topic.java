package com.techelevator.model;

import java.util.Objects;

public class Topic {

    private int topicId;
    private String topicName;
    private String topicAnswer;

    public Topic() {

    }

    public Topic(int topicId, String topicType, String topicAnswer) {
        this.topicId = topicId;
        this.topicName = topicType;
        this.topicAnswer = topicAnswer;
    }

    public int getTopicId() {
        return topicId;
    }

    public void setTopicId(int topicId) {
        this.topicId = topicId;
    }

    public String getTopicName() {
        return topicName;
    }

    public void setTopicName(String topicName) {
        this.topicName = topicName;
    }

    public String getTopicAnswer() {
        return topicAnswer;
    }

    public void setTopicAnswer(String topicAnswer) {
        this.topicAnswer = topicAnswer;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Topic topic = (Topic) o;
        return topicId == topic.topicId && Objects.equals(topicName, topic.topicName) && Objects.equals(topicAnswer, topic.topicAnswer);
    }

    @Override
    public int hashCode() {
        return Objects.hash(topicId, topicName, topicAnswer);
    }

    @Override
    public String toString() {
        return "Topic{" +
                "topicId=" + topicId +
                ", topicName='" + topicName + '\'' +
                ", topicAnswer='" + topicAnswer + '\'' +
                '}';
    }
}
