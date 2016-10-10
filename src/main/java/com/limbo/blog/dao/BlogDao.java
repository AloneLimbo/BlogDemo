package com.limbo.blog.dao;

import com.limbo.blog.entity.Blog;
import com.limbo.blog.entity.Count;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 *
 * Created by limbo on 16-10-1.
 */
public interface BlogDao {

    /**
     *访问人数计算
     * @param blogId
     * @return
     */
    int plusNumber(long blogId);

    /**
     * 查询blog表中所有文章数
     * @return
     */
   Count queryCount();

    /**
     * 根据id查询blog对象
     * @param blogId
     * @return
     */
    Blog queryById(long blogId);

    /**
     * 根据偏移量查询秒杀文章列表
     * @param offset
     * @param limit
     * @return
     */
    List<Blog> queryAll(@Param("offset") int offset, @Param("limit") int limit);


    int insertBlog(Blog uploadBlog);
}
