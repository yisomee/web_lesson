<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- tag library를 사용하기 위해서 지시부를 정의해야한다. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!-- prefix태그이름을 어떻게 할지 보통 c를 쓴다  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jstl(Jsp Standard Tag Library)</h1>
<p style="background-color:#ddd;">
	https://tomcat.apache.org/taglibs/standard에서 라이브러리를 다운로드한다.<br/>
	
	1.압축을 푼 다음 jstl.jar, standard.jar을 이클립스의 /WEB-INF/lib폴더 복사<br/>
	2.지시부에 태그 추가
</p>
<ol>
	<li><a href="01_setTag.jsp">set Tag : 변수선언 및 삭제</a></li>
	<li><a href="02_ifTag.jsp?name=이순신&age=32&userid=goguma">if Tag : 조건문</a></li>
	<li><a href="03_forEachTag.jsp">for Tag : 반복문</a></li>
</ol>
</body>
</html>