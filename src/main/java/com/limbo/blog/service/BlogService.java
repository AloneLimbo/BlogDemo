package com.limbo.blog.service;

import com.limbo.blog.entity.Blog;

import java.util.List;

/**
 * Created by limbo on 16-10-1.
 */
public interface BlogService {

    /**
     * 查询所有文章
     * @return
     */
    List<Blog> getBlogList(int offSet,int limit);

    /**
     * 查询单个文章
      * @return
     */
    Blog getById(long blogId);

    /**
     * 上传数据
     * @param uploadBlog
     * @return
     */
    int upload(Blog uploadBlog);

    /**
     *
     * @return
     */
    int getCount();

}
