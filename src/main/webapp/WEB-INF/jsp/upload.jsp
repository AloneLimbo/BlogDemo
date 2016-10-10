<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    request.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>FileUpload</title>
</head>
<body>
<form action="${basePath}file/upload" method="post" enctype="multipart/form-data">
    <label>标题：</label><input type="text" name="title"/><br/>
    <label>来源：</label><input type="text" name="source"/><br/>
    <label>描述：</label><input type="text" name="brief"/><br/>
    <textarea name="content" rows="30" clos="70">
          内容
    </textarea>
    <label>头 像</label><input type="file" name="file"/><br/>
    <input type="submit" value="提  交"/>
</form>
</body>
</html>