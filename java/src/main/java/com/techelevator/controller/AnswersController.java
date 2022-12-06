package com.techelevator.controller;

import com.techelevator.dao.*;
import com.techelevator.model.Answers;

import com.techelevator.model.KeyWord;
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
        String[] sentenceArray = sentence.split("");
        List<String> stringList = List.of(sentenceArray);
        return stringList;
    }

    private String getSubject(List<String> stringList) {
        List<Subject> subjects = subjectDao.getSubjects();

        for(String word : stringList) {
            for (Subject subject : subjects) {
                if (word.equals(subject.getSubjectType())) {
                    return word;
                }
            }
        }
        return "word";
    }

    private String returnAnswer(String javascript) {
        List<Answers> answerList = answersDao.getAllAnswers();

        for(Answers answer : answerList) {
            if(answer.getSubjectType().equalsIgnoreCase(javascript)) {
                return answer.getDescription();
            }
        }
        return "here";
    }


}
