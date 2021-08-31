<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="formOk.jsp"><!-- get 방식은 괜찮은데 post방식은 한글이 깨짐 전송방식이 달라서 -->
	<ul>
		<li>아이디 : <input type="text" name="userid"/></li>
		<li>이름 : <input type="text" name="username"/></li>
		<li>성별 : <input type="radio" name="gender" value="M"/>남
				  <input type="radio" name="gender" value="F"/>여
		<li><input type="submit" value="확인"/></li>
	</ul>
</form>
</body>
</html>