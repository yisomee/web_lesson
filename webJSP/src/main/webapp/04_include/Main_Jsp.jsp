<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   #container{height:500px; border:2px solid gray;width:80%; margin:0 auto; }
</style>
</head>
<body>
   <!-- top.jsp include 액션태그-->
   <jsp:include page="top.jsp"/>
   <div id="container">
   	include파일의 선언변수는 호환되지 않는다.
      <%
      		//out.println(n);
      		//out.println(name);
      %>
   </div>
   <!-- foot.jsp include 액션태그 -->
   <jsp:include page="foot.jsp"/>
</body>
</html>