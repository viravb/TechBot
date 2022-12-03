package com.techelevator.dao;

import com.techelevator.model.Category;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class JdbcCategoryDaoTest extends BaseDaoTests {

    private CategoryDao sut;

    private static final Category cat1 = new Category(2, "Quotes");

    @Before
    public void setup() {
        this.sut = new JdbcCategoryDao(dataSource);
    }

    @Test
    public void add_category() {
        Category categoryReturned = sut.addCategory(cat1);

        int newId = (int) categoryReturned.getId();

        Assert.assertTrue(newId > 0);

        cat1.setId(newId);
        Category categoryFromdb = sut.getCategory(newId);
        Assert.assertEquals(cat1, categoryFromdb);
    }
}
