<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body>
<h1>if Tag : 조건문</h1>
<c:set var="n1" value="${100}"/>
<c:set var="n2" value="${50}"/>

<c:if test="${n1>n2}">
	n1은 n2보다 크다.<br/>
	n1=${n1 }<br/>
</c:if><!-- taglib는 else는 없다 변수선언때 c가 위에서 설정해준 프리픽스 -->
<c:if test="${true }">
	무조건 실행됨....<br/>
</c:if>
<hr/>
<h1>jstl에서 request하기</h1>
name = ${param.name }<br/><!-- param.변수명 하면 값을request 함 $때문에 값이 화면에 출력된다? -->
age = ${param.age+10 }<br/><!-- Integer 까지 해준다 param이 형변환도 해줌 -->
userid = ${param.userid }<br/>
</body>
</html>