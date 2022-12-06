package com.techelevator.dao;

import com.techelevator.model.Answers;

import java.util.List;

public interface AnswersDao {

    List<Answers> getAllAnswers ();
    Answers getAnswerById(int id);

}
