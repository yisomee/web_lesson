<!-- 지시부 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%!	//선언부
	//메소드 정의
	
	public int sum(int a, int b){
		return a+b;
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	img{width:200px; height:200px;}
</style>
<script>
	document.write('javascript!!!!!!');
</script>
</head>
<body>
<%@ include file="04_include/top.jspf" %>
<br/>
<%= session.getId() %><hr/>
<!-- 로그인 확인 
	로그인상태: 박보검 로그아웃
	로그인안된경우 : 로그인
	
-->
<%
	//logId, logName
	if(session.getAttribute("logId")!=null && !session.getAttribute("logId").equals("")){//로그인상태 /getContextPath -> webJSP 가져와주는애
		%>
			<%=session.getAttribute("logName") %>님 <a href="<%=request.getContextPath()%>/login/logout.jsp">로그아웃</a>
		<% 
	}else{//로그인 안한 경우
		%>
			<a href="<%=request.getContextPath()%>/login/loginForm.html">로그인</a>
		<%
	}
%>



<h1>jsp첫번째 페이지</h1>
<% //스크립트릿

	int a=100;
	String name="홍길동";
	
	a = a*2;
	
	
	out.println("a="+a);
	out.println("<img src='img/kakao7.png'/>");
	
	System.out.println("sum(56,43)="+ sum(56,43));
	
	out.println("sum(123,457)="+sum(123,457));
	
	for(int i=1; i<10; i++){
		out.println(i);
	}
%>
<hr/>
<h1>변수, 간단한수식, 메소드호출하여 결과를 처리할때</h1>
a=<%=a%><br/>
a=<%=a+10%><br/>
sum=<%=sum(5,124)%>
</body>
</html>