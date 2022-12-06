package com.techelevator.controller;

import com.techelevator.dao.AnswersDao;
import com.techelevator.model.Answers;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class AnswersController {

    private AnswersDao answersDao;

    public AnswersController(AnswersDao answersDao) {
        this.answersDao = answersDao;
    }

    @RequestMapping(path="/answers", method = RequestMethod.GET)
    public List<Answers> getAnswers() {
        return answersDao.getAllAnswers();
    }

    @RequestMapping(path = "/answers/{id}", method = RequestMethod.GET)
    public Answers getAnswerById(@PathVariable int id) {
        Answers answer = answersDao.getAnswerById(id);

                return answer;
    }

}
