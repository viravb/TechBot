package com.techelevator.dao;

import com.techelevator.model.Subject;

import java.util.List;

public interface SubjectDao {

    List<Subject> getSubjects ();
    Subject getSubjectById(int id);



}
