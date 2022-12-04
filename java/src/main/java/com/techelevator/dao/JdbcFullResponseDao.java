package com.techelevator.dao;

import com.techelevator.model.FullResponse;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcFullResponseDao implements FullResponseDao{

    private final JdbcTemplate jdbcTemplate;

    public JdbcFullResponseDao(DataSource dataSource) {

        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }


    @Override
    public List<FullResponse> getEverything() {
        List<FullResponse> response = new ArrayList<>();
        String sql = "SELECT categories.name, question_text, subject_type, description FROM categories " +
                "JOIN cat_question ON categories.cat_id = cat_question.cat_id " +
                "JOIN questions ON cat_question.question_id = questions.question_id " +
                "JOIN question_sub ON questions.question_id = question_sub.question_id " +
                "JOIN subjects ON question_sub.subject_id = subjects.subject_id " +
                "JOIN sub_answer ON subjects.subject_id = sub_answer.subject_id " +
                "JOIN answers ON sub_answer.answer_id = answers.answer_id;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while(results.next()) {
            response.add(mapRowToResponse(results));
        }
        return response;
    }

    private FullResponse mapRowToResponse(SqlRowSet rowSet) {
        FullResponse fullResponse = new FullResponse();

        fullResponse.setCategory(rowSet.getString("name"));
        fullResponse.setQuestion(rowSet.getString("question_text"));
        fullResponse.setSubject(rowSet.getString("subject_type"));
        fullResponse.setAnswer(rowSet.getString("description"));

        return fullResponse;
    }
}
