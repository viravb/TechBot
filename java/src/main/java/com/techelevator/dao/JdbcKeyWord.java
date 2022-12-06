package com.techelevator.dao;

import com.techelevator.model.Answers;
import com.techelevator.model.KeyWord;
import com.techelevator.model.Subject;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class JdbcKeyWord implements KeyWordDao {

    JdbcSubjectDao jdbcSubjectDao;
    JdbcAnswersDao jdbcAnswersDao;

    @Override
    public String getKeyWord(String string) {

        String[] wordsSplit = string.split("");

        List<String> stringList = List.of(wordsSplit);
        List<Subject> subjects = jdbcSubjectDao.getSubjects();

        for(String word : stringList) {
            for(Subject subject : subjects) {
                if(word.equals(subject.getSubjectType())) {
                    return word;
                }
            }
        }


        List<Answers> answerList = jdbcAnswersDao.getAllAnswers();

        return null;
    }
}
