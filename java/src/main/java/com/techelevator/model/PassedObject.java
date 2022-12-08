package com.techelevator.model;

import java.util.Objects;

public class PassedObject {

    private String currentTopic;
    private String answer;

    public PassedObject() {

    }

    public PassedObject(String currentTopic, String answer) {
        this.currentTopic = currentTopic;
        this.answer = answer;
    }

    public String getCurrentTopic() {
        return currentTopic;
    }

    public void setCurrentTopic(String currentTopic) {
        this.currentTopic = currentTopic;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PassedObject that = (PassedObject) o;
        return Objects.equals(currentTopic, that.currentTopic) && Objects.equals(answer, that.answer);
    }

    @Override
    public int hashCode() {
        return Objects.hash(currentTopic, answer);
    }
}
