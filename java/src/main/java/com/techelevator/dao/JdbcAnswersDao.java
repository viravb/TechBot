package com.techelevator.dao;

import com.techelevator.model.Answers;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcAnswersDao implements AnswersDao {

    private JdbcTemplate jdbcTemplate;

    public JdbcAnswersDao(DataSource datasource) {
        this.jdbcTemplate = new JdbcTemplate(datasource);
    }

    @Override
    public List<Answers> getAllAnswers() {
        List<Answers> allAnswers = new ArrayList<Answers>();
        String sql = "SELECT answers.answer_id, description, subject_type FROM answers " +
                "JOIN sub_answer ON answers.answer_id = sub_answer.answer_id " +
                "JOIN subjects ON sub_answer.subject_id = subjects.subject_id";

        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql);

        while (rowSet.next()) {
            allAnswers.add(mapRowToAnswers(rowSet));
        }
        return allAnswers;
    }

    @Override
    public Answers getAnswerById(int id) {
        Answers answer = new Answers();

        String sql = "SELECT answer_id, description FROM answers WHERE answer_id=?";

        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql, id);

        while (rowSet.next()) {
            answer = mapRowToAnswers(rowSet);
        }
        return answer;
    }

    private Answers mapRowToAnswers(SqlRowSet rowSet) {
        Answers answer = new Answers();
        answer.setAnswerId(rowSet.getInt("answer_id"));
        answer.setDescription(rowSet.getString("description"));
        answer.setSubjectType(rowSet.getString("subject_type"));

        return answer;
    }
}
