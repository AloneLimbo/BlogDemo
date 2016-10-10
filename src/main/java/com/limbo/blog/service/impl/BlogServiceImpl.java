package com.limbo.blog.service.impl;

import com.limbo.blog.dao.BlogDao;
import com.limbo.blog.entity.Blog;
import com.limbo.blog.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by limbo on 16-10-1.
 */
@Service
public class BlogServiceImpl implements BlogService{

    //注入Servie依赖
    @Autowired
    BlogDao blogDao;

    /**
     *
     * @param offSet
     * @param limit
     * @return
     */
    public List<Blog> getBlogList(int offSet,int limit) {

        return  blogDao.queryAll(offSet,limit);
    }

    /**
     * 查询单个文章
     *
     * @return
     */
    public Blog getById(long blogId) {

        return blogDao.queryById(blogId);
    }


    /**
     * 上传文章
     * @param uploadBlog
     * @return
     */
    public int upload(Blog uploadBlog) {

       int coount =  blogDao.insertBlog(uploadBlog);
       //  System.out.println("*******#:"+coount);
        return coount;
    }


    /**
     * 获取文章总数
     * @return
     */
    public int getCount() {
        return blogDao.queryCount().getBlogId();
    }
}
