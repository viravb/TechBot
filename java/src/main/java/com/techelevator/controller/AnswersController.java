package com.techelevator.controller;

import com.techelevator.dao.*;
import com.techelevator.model.Answers;

import com.techelevator.model.Subject;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class AnswersController {

    private SubjectDao subjectDao;
    private AnswersDao answersDao;

    public AnswersController(AnswersDao answersDao, SubjectDao subjectDao) {
        this.answersDao = answersDao;
        this.subjectDao = subjectDao;
    }

    @RequestMapping(path="/answers", method = RequestMethod.POST)
    public String getAnswer(@RequestBody String sentence) {

        return returnAnswer(getSubject(sentenceToArray(sentence)));
    }

    private List<String> sentenceToArray(String sentence) {

        String newSentence = "";
        if(sentence.substring(sentence.length() - 1).equals("=")) {
            newSentence = sentence.replace("=", "");
        }
        String[] sentenceArray = newSentence.split("\\+");
        List<String> stringList = List.of(sentenceArray);
        return stringList;
    }

    private String getSubject(List<String> stringList) {
        List<Subject> subjects = subjectDao.getSubjects();

        String subjectType = "";
        for(String word : stringList) {
            for (Subject subject : subjects) {
                if (word.equalsIgnoreCase(subject.getSubjectType())) {
                    subjectType = subject.getSubjectType();
                    break;
                }
            }
        }
        return subjectType;
    }

    private String returnAnswer(String javascript) {
        List<Answers> answerList = answersDao.getAllAnswers();
        String description = "";
        for(Answers answer : answerList) {
            if(answer.getSubjectType().equalsIgnoreCase(javascript)) {
                description = answer.getDescription();
            }
        }
        return description;
    }


}
