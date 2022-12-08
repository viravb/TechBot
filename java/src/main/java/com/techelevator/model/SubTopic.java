package com.techelevator.model;

import java.util.Objects;

public class SubTopic {

    private int subId;
    private String subAnswer;
    private String subName;

    public SubTopic() {

    }

   public SubTopic(int subId, String subAnswer, String subName) {
        this.subId = subId;
        this.subAnswer = subAnswer;
        this.subName = subName;
   }

    public int getSubId() {
        return subId;
    }

    public void setSubId(int subId) {
        this.subId = subId;
    }

    public String getSubAnswer() {
        return subAnswer;
    }

    public void setSubAnswer(String subAnswer) {
        this.subAnswer = subAnswer;
    }

    public String getSubName() {
        return subName;
    }

    public void setSubName(String subName) {
        this.subName = subName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SubTopic subTopic = (SubTopic) o;
        return subId == subTopic.subId && Objects.equals(subAnswer, subTopic.subAnswer) && Objects.equals(subName, subTopic.subName);
    }

    @Override
    public int hashCode() {
        return Objects.hash(subId, subAnswer, subName);
    }

    @Override
    public String toString() {
        return "SubTopic{" +
                "subId=" + subId +
                ", subAnswer='" + subAnswer + '\'' +
                ", subName='" + subName + '\'' +
                '}';
    }
}

