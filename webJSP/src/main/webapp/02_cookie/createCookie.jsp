<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
   document.cookie = "food=apple;path=/;expres=2022";
   document.cookie = 'notice-news';
</script>


<%
   //jsp가 먼저 실행된다 
   //jsp에서 쿠키 생성하기
   //                  변수         값 을 이용해 쿠키를 생성한다
    Cookie c = new Cookie("username","홍길동");
   c.setMaxAge(60*60);// 쿠키의 생명주기(초단위)
   
   response.addCookie(c);//client컴퓨터에 쿠키를 저장한다.
%>
</head>
<body>
<input type="button" value="쿠키확인하기" onclick="location.href='<%=request.getContextPath()%>/02_cookie/cookieView.jsp'"/>
</body>
</html>