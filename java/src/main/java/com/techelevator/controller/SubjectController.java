package com.techelevator.controller;

import com.techelevator.dao.SubjectDao;
import com.techelevator.model.Subject;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@RestController
@CrossOrigin
public class SubjectController {

    private SubjectDao subjectDao;

    public SubjectController(SubjectDao subjectDao) {
        this.subjectDao = subjectDao;
    }


    @RequestMapping(path="/subjects", method= RequestMethod.GET)
    public List<Subject> getSubjects() {
        return subjectDao.getSubjects();
    }

    @RequestMapping(path="/subjects/{id}", method = RequestMethod.GET)
    public Subject getSubjectById(@PathVariable int id) {
        Subject subject = subjectDao.getSubjectById(id);

        return subject;
    }

}
