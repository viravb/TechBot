package com.techelevator.dao;

import com.techelevator.model.Category;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;

@Component
public class JdbcCategoryDao implements CategoryDao {

    private JdbcTemplate jdbcTemplate;

    public JdbcCategoryDao (DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public Category addCategory(Category category) {
        String sql = "INSERT INTO categories (name) VALUES (?) RETURNING cat_id";

        Integer id = jdbcTemplate.queryForObject(sql, Integer.class, category.getName());

        category.setId(id);
        return category;
    }

    @Override
    public Category getCategory(int id) {
        Category category = new Category();
        String sql = "SELECT cat_id, name FROM categories WHERE cat_id = ?";

        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql, id);
        while(rowSet.next()) {
            category = mapRowToCategory(rowSet);
        }
        return category;
    }

    private Category mapRowToCategory(SqlRowSet rowSet) {
        Category category = new Category();
        category.setId(rowSet.getInt("cat_id"));
        category.setName(rowSet.getString("name"));

        return category;
    }
}
