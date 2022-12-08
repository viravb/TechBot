package com.techelevator.controller;

import com.techelevator.dao.*;
import com.techelevator.model.PassedObject;
import com.techelevator.model.SubTopic;

import com.techelevator.model.Topic;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class TopicController {

    private String userTopic;
    private TopicDao topicDao;
    private SubTopicDao subTopicDao;

    public TopicController(SubTopicDao subTopicDao, TopicDao topicDao) {
        this.subTopicDao = subTopicDao;
        this.topicDao = topicDao;
    }

    @RequestMapping(path="/answers", method = RequestMethod.POST)
    public PassedObject getAnswer(@RequestBody String sentence) {

        String newSentence = "";


        if(sentence.contains("=")) {
            newSentence = sentence.replace("=", "+");
        } else {
            newSentence = sentence;
        }
        return getExactTopic(sentenceToArray(newSentence));
    }

    private List<String> sentenceToArray(String sentence) {

        String[] sentenceArray = sentence.split("\\+");
        String topic = sentenceArray[sentenceArray.length - 1];
        List<String> stringList = List.of(sentenceArray);
        if(topic.equals(userTopic)) {
            stringList.remove(stringList.indexOf(topic));
        }
        return stringList;
    }

    private PassedObject getExactTopic(List<String> stringList) {
        List<Topic> topics = topicDao.getTopics();
        PassedObject passedObject = new PassedObject();

        for(String word : stringList) {
            for (Topic topic : topics) {
                if (word.equalsIgnoreCase(topic.getTopicName())) {
                    passedObject.setAnswer(topic.getTopicAnswer());
                    passedObject.setCurrentTopic(topic.getTopicName());
                    break;
                } else {
                     passedObject.setCurrentTopic(userTopic);
                     passedObject.setAnswer(returnSubTopicAnswer(word, userTopic));
                }
            }
        }
        return passedObject;
    }

    private String returnSubTopicAnswer(String word, String userTopic) {
        List<SubTopic> subTopics = subTopicDao.getSubTopics(userTopic);
        PassedObject passedObject = new PassedObject();

        String answer = "Not A Valid Question";
        for(SubTopic subTopic : subTopics) {
            if(word.equalsIgnoreCase(subTopic.getSubName())) {
                answer = subTopic.getSubAnswer();
            }
        }
        return answer;
    }


}
