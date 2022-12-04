package com.techelevator.dao;

import com.techelevator.model.FullResponse;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import java.util.List;

public class JdbcFullResponseDaoTest extends BaseDaoTests {

    private FullResponseDao sut;


    @Before
    public void setup() {
        sut = new JdbcFullResponseDao(dataSource);
    }

    @Test
    public void get_all_responses() {
        List<FullResponse> responses = sut.getEverything();

        Assert.assertEquals(20, responses.size());
    }
}
