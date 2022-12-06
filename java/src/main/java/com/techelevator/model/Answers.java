package com.techelevator.model;

import java.util.Objects;

public class Answers {
    private int answerId;

    private String description;


    public Answers () {

    }

    public Answers (int answerId, String description) {
        this.answerId = answerId;
        this.description = description;
    }

    public int getAnswerId() {
        return answerId;
    }

    public void setAnswerId(int answerId) {
        this.answerId = answerId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Answers answers = (Answers) o;
        return answerId == answers.answerId && Objects.equals(description, answers.description);
    }

    @Override
    public int hashCode() {
        return Objects.hash(answerId, description);
    }
}

