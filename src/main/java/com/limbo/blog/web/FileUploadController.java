package com.limbo.blog.web;

import com.limbo.blog.entity.Blog;
import com.limbo.blog.service.BlogService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;

/**
 * Created by limbo on 16-10-2.
 */

@Controller
@RequestMapping("/file")
public class FileUploadController {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    BlogService blogService;

    @RequestMapping(value = "/upload",method = RequestMethod.POST)
    public String filrUpload(Blog uploadDto, @RequestParam(value = "file",required = false) MultipartFile file,
                             HttpServletRequest request)throws Exception{



        String pathRoot = request.getSession().getServletContext().getRealPath("");
        String path="";
        if(!file.isEmpty()){
            String uuid=uploadDto.getTitle();

            String contentTYpe = file.getContentType();

            String imageName = contentTYpe.substring(contentTYpe.indexOf("/")+1);

            path=uuid+"."+imageName;
            uploadDto.setImg(path);
            path="/resources/images/"+uuid+"."+imageName;
            file.transferTo(new File(pathRoot+path));
            blogService.upload(uploadDto);
          //  System.out.println(uploadDto.toString());

        }
        System.out.println("###"+pathRoot+"#"+path);
        request.setAttribute("path",path);
        return "success";
    }

    @RequestMapping("/forward")
    public String forward(){
        return "upload";
    }


}
