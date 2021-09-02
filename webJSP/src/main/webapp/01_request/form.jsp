<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- get방식, post방식 -->
<form method="post" action="formOk.jsp">
	<ul>
		<li>아이디 : <input type="text" name="userid" value="suyeong"/></li>
		<li>이름 : <input type="text" name="username" value="송중기"/></li>
		<li>성별 : <input type="radio" name="gender" value="M" checked/>남
				  <input type="radio" name="gender" value="F"/>여</li>
		<li>관심분야 :
					<input type="checkbox" name="inter" value="운동" checked/>운동
					<input type="checkbox" name="inter" value="쇼핑"/>쇼핑
					<input type="checkbox" name="inter" value="맛집" checked/>맛집
					<input type="checkbox" name="inter" value="웹툰"/>웹툰
					<input type="checkbox" name="inter" value="게임"/>게임
					<input type="checkbox" name="inter" value="IT"/>IT
					<input type="checkbox" name="inter" value="유튭"/>유튭
		<li>지역 :
			<select name="location" multiple>
				<option value="서울">서울</option>
				<option value="경기">경기</option>
				<option value="인천" selected>인천</option>
				<option value="충북">충북</option>
				<option value="충남">충남</option>
				<option value="강원">강원</option>
			</select>
		</li>
		<li><textarea name="content">안내글...</textarea></li>		
		<li><input type="submit" value="확인"></li>
	</ul>
</form>
</body>
</html>