<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	//post방식의 전송시 한글 인코딩설정(get은 안해도됨)
	request.setCharacterEncoding("UTF-8");

	String userid = request.getParameter("userid");
    String username = request.getParameter("username");
    String gender = request.getParameter("gender");
 %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
아이디 : <%=userid %><br/>
이름 : <%=username %><br/>
성별 : <%=gender %><br/><!-- radio의 value값이 출력된다 -->
</body>
</html>