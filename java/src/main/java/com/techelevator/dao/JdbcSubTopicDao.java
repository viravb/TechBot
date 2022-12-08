package com.techelevator.dao;

import com.techelevator.model.SubTopic;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcSubTopicDao implements SubTopicDao {

    private JdbcTemplate jdbcTemplate;

    public JdbcSubTopicDao(DataSource datasource) {
        this.jdbcTemplate = new JdbcTemplate(datasource);
    }


    @Override
    public List<SubTopic> getSubTopics(String topic) {
        List<SubTopic> allSubTopics = new ArrayList<>();

        String sql = "SELECT * FROM sub_topic " +
                     "JOIN subby_toppy ON sub_topic.sub_id = subby_toppy.sub_id " +
                     "JOIN topic ON subby_toppy.topic_id = topic.topic_id " +
                     "WHERE topic_name = ?";

        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql, topic);

        while(rowSet.next()) {
            allSubTopics.add(mapRowToSubTopic(rowSet));
        }

        return allSubTopics;
    }

    private SubTopic mapRowToSubTopic(SqlRowSet rowSet) {
        SubTopic subTopic = new SubTopic();

        subTopic.setSubId(rowSet.getInt("sub_id"));
        subTopic.setSubName(rowSet.getString("sub_name"));
        subTopic.setSubAnswer(rowSet.getString("sub_answer"));

        return subTopic;
    }
}
