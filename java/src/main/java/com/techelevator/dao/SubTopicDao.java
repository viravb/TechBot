package com.techelevator.dao;

import com.techelevator.model.SubTopic;

import java.util.List;

public interface SubTopicDao {

    List<SubTopic> getSubTopics (String topic);

}
