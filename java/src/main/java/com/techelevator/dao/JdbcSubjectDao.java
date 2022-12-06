package com.techelevator.dao;

import com.techelevator.model.Subject;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;
@Component
public class JdbcSubjectDao implements SubjectDao {

    private JdbcTemplate jdbcTemplate;

    public JdbcSubjectDao (DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public List<Subject> getSubjects() {
        List<Subject> allSubjects = new ArrayList<Subject>();
        String sql = "SELECT subject_id, subject_type FROM subjects";


        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql);

        while(rowSet.next()) {
            allSubjects.add(mapRowToSubject(rowSet)) ;


        }
        return allSubjects;
    }

    @Override
    public Subject getSubjectById(int id) {
        Subject subject  = new Subject();

        String sql = "SELECT subject_id, subject_type FROM subjects WHERE subject_id= ?";

        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql,id);

        while(rowSet.next()) {
            subject = mapRowToSubject(rowSet);
        }
        return subject;

    }


    private Subject mapRowToSubject(SqlRowSet rowSet) {
        Subject subject = new Subject();
        subject.setSubjectId(rowSet.getInt("subject_id"));
        subject.setSubjectType(rowSet.getString("subject_type"));

        return subject;
    }


}
