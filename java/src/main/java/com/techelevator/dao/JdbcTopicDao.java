package com.techelevator.dao;

import com.techelevator.model.Topic;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcTopicDao implements TopicDao {

    private JdbcTemplate jdbcTemplate;

    public JdbcTopicDao(DataSource datasource) {
        this.jdbcTemplate = new JdbcTemplate(datasource);
    }

    @Override
    public List<Topic> getTopics() {
        List<Topic> allTopics = new ArrayList<>();

        String sql = "SELECT * FROM topic";

        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql);

        while(rowSet.next()) {
            allTopics.add(mapRowToTopic(rowSet));
        }

        return allTopics;
    }

    private Topic mapRowToTopic(SqlRowSet rowSet) {
        Topic topic = new Topic();

        topic.setTopicId(rowSet.getInt("topic_id"));
        topic.setTopicName(rowSet.getString("topic_name"));
        topic.setTopicAnswer(rowSet.getString("topic_answer"));

        return topic;
    }
}
