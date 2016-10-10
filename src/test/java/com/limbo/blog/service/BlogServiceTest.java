package com.limbo.blog.service;

import com.limbo.blog.entity.Blog;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * Created by limbo on 16-10-1.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml","classpath:spring/spring-service.xml"})
public class BlogServiceTest {

    @Autowired
    private BlogService blogService;

    @Test
    public void getBlogList() throws Exception {
        int offSet=0,limit=0;
        List<Blog> list = blogService.getBlogList(offSet,limit);

        for(Blog blog:list){
            System.out.println("list:"+blog);
        }
    }

    @Test
    public void getById() throws Exception {

        System.out.println("getByID:"+blogService.getById(5));

    }

    @Test
    public void Insert(){
        Blog uploadBlog=new Blog();

        uploadBlog.setTitle("测试");
        uploadBlog.setBrief("测试");
        uploadBlog.setContent("测试ceshi neiyasdd");
        uploadBlog.setSource("Address");
        uploadBlog.setImg("ImgTest");

        blogService.upload(uploadBlog);



    }

}