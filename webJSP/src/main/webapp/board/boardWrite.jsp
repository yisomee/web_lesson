<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="//cdn.ckeditor.com/4.16.2/full/ckeditor.js"></script>

    <script>
        $(()=>{
            CKEDITOR.replace('content');
            $('#frm').submit(function(){
            	if($('subject').val()==""){
            		alert("제목을 입력 후 등록하세요.");
            		return false;
            	}
            	if(CKEDITOR.instances.content.getData()==""){
            		alert("글내용을 입력후 등록하세요.");
            		return true;
            	}
            });
        });
    </script>
</head>
<body>
<%@ include file="../04_include/top.jspf" %>
<h1>글쓰기폼</h1>
<form method="post" action="boardWriteOk.jsp">
	제목 : <input type="text" name="subject"/><br/>
	<textarea name="content"></textarea>
	<input type="submit" value="등록"/>
</form>
</body>
</html>