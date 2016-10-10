package com.limbo.blog.web;

import com.limbo.blog.dao.UserDao;
import com.limbo.blog.entity.Blog;
import com.limbo.blog.service.BlogService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by limbo on 16-10-1.
 */
@Controller
@RequestMapping("/blog")
public class BlogController {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private BlogService blogService;
    @Autowired
    UserDao userDao;



    @RequestMapping(value = "/home/{page}",method = RequestMethod.GET)
    public String homePage(Model model, HttpServletRequest request,@PathVariable("page")int page){
        //获取列表页
        int offSet,limit = 4;
        int pageState=page;
        if(page==0){
            offSet=0;
        }else {
            offSet = (page-1)*4;
        }
        int count=blogService.getCount();
        if(count%4==0)
        model.addAttribute("page",count/4);
        else {
            model.addAttribute("page",count/4+1);
        }
        userDao.addUser(request.getRemoteAddr());

        List<Blog> list = blogService.getBlogList(offSet,limit);
        model.addAttribute("pageState",pageState);
        model.addAttribute("list",list);
        return "home";
    }

    @RequestMapping(value = "/home",method = RequestMethod.GET)
    public String home(Model model, HttpServletRequest request){
        //获取列表页

        int count=blogService.getCount();
        model.addAttribute("page",count/4);

        userDao.addUser(request.getRemoteAddr());
        System.out.println("IP:"+request.getRemoteAddr());
        List<Blog> list = blogService.getBlogList(0,4);
        model.addAttribute("pageState",1);
        model.addAttribute("list",list);
        return "home";
    }

    @RequestMapping(value = "/{blogId}/single",method = RequestMethod.GET)
    public String siingle(@PathVariable("blogId") Long blogId, Model model){
        Blog blog = blogService.getById(blogId);
        model.addAttribute("blog",blog);
        return "single";
    }

    @RequestMapping(value = "/page")
    public String  getPage(Model model){
        int count=blogService.getCount();
      model.addAttribute("page",count/4);
        return "success";
    }

}
