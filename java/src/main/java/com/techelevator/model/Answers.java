package com.techelevator.model;

public class Answers {

    private int answerId;
    private String description;
    private String subjectType;

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

    public String getSubjectType() {
        return subjectType;
    }

    public void setSubjectType(String subjectType) {
        this.subjectType = subjectType;
    }
}

