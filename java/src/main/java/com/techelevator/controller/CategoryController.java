package com.techelevator.controller;

import com.techelevator.dao.CategoryDao;
import com.techelevator.model.Category;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin
public class CategoryController {

    private CategoryDao categoryDao;

    public CategoryController(CategoryDao categoryDao) {
        this.categoryDao = categoryDao;
    }

    @RequestMapping(path="/category", method=RequestMethod.POST)
    public void addCategory(@RequestBody Category category) {
        categoryDao.addCategory(category);
    }

    @RequestMapping(path="/category", method = RequestMethod.GET)
    public Category getCategory(int id) {
        return categoryDao.getCategory(id);
    }
}
