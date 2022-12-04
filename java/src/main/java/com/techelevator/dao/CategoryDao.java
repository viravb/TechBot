package com.techelevator.dao;

import com.techelevator.model.Category;

public interface CategoryDao {

    Category addCategory(Category category);
    Category getCategory(int id);

}
