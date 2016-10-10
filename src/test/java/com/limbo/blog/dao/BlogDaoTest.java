package com.limbo.blog.dao;

import com.limbo.blog.entity.Blog;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

import java.util.List;

import static org.junit.Assert.*;

/**
 * 配置spring和junit整合，junit启动时加载springIoc容器
 */

@RunWith(SpringJUnit4ClassRunner.class)
//告诉junit，spring配置文件
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class BlogDaoTest {

    @Resource
    BlogDao blogDao;

    @Test
    public void plusNumber() throws Exception {
           int updateCount =  blogDao.plusNumber(2);
           System.out.println("updateCount = "+updateCount);
    }

    @Test
    public void queryCount() throws Exception {
        int count;

        count=blogDao.queryCount().getBlogId();
        System.out.println("Count = "+count);
    }

    @Test
    public void queryById() throws Exception {

        System.out.println(blogDao.queryById(1));

    }

    @Test
    public void queryAll() throws Exception {

        int count=blogDao.queryCount().getBlogId();

        List<Blog> list = blogDao.queryAll(count-3,count);

        for (Blog blog:list){
            System.out.println("##"+blog);
        }

    }

}