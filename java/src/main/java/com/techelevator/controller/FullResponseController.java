package com.techelevator.controller;

import com.techelevator.dao.FullResponseDao;
import com.techelevator.model.FullResponse;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin
public class FullResponseController {

    private FullResponseDao fullResponseDao;

    public FullResponseController(FullResponseDao fullResponseDao) {
        this.fullResponseDao = fullResponseDao;
    }

    @RequestMapping(path="/", method= RequestMethod.GET)
    public List<FullResponse> getResponses() {
        return fullResponseDao.getEverything();
    }

}
