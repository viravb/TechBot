package com.techelevator.model;

import java.util.Objects;

public class Subject {


    private int subjectId;
    private String subjectType;



    public Subject() {

    }

    public Subject(int subjectId,String subjectType) {
        this.subjectId = subjectId;
        this.subjectType = subjectType;
    }


    public int getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(int subjectId) {
        this.subjectId = subjectId;
    }

    public String getSubjectType() {
        return subjectType;
    }

    public void setSubjectType(String subjectType) {
        this.subjectType = subjectType;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Subject subject = (Subject) o;
        return subjectId == subject.subjectId && Objects.equals(subjectType, subject.subjectType);
    }

    @Override
    public int hashCode() {
        return Objects.hash(subjectId, subjectType);
    }
}
