package com.limbo.blog.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

/**
 * Created by limbo on 16-10-7.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class UserDaoTest {

    @Autowired
    UserDao userDao;
    @Test
    public void addUser() throws Exception {
      int count =   userDao.addUser("127.0.0.1");

        System.out.println("Count；"+count);

    }

}