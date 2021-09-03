<%@page import="com.bitcamp.board.BoardVO"%>
<%@page import="com.bitcamp.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
   //글번호
   int no = Integer.parseInt(request.getParameter("no"));//통신을 통해오면 문자열이라서 형변환 해주야함
   //db조회, 조회수 
   BoardDAO dao = new BoardDAO();
   BoardVO vo = dao.oneRecordSelect(no,1);//1:글내용보기, 2:글수정폼
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#boardView li{
		boarder-bottom:1px solid gray;
		padding:5px;
	}
</style>
<script>
	function delChk() {
		//삭제 여부 확인  ->확인누르면:true반환, 취소:false
		if(confirm("삭제하시겠습니까?")){
			location.href="<%=request.getContextPath()%>/board/boardDel.jsp?no=<%=no%>";
		}
	}
</script>
</head>
<body>
	<%@ include file="../04_include/top.jspf" %>
	<div class="container">
		<h1>글내용보기</h1>
		<ul id="boardView">
			<li>번호 : <%=vo.getNo() %></li>
			<li>작성자 : <%=vo.getUserid() %></li>
			<li>등록일 : <%=vo.getWritedate() %>,조회수 : <%=vo.getHit() %></li>
			<li>제목 : <%=vo.getSubject() %> </li>
			<li>글내용 : <%=vo.getContent() %></li>
		</ul>
		<div>
			<% if(session.getAttribute("logId")!=null && !session.getAttribute("logId").equals("")) {%>
				<a href="<%=request.getContextPath() %>/board/boardEdit.jsp?no=<%=no%>">수정</a>
				<a href="javascript:delChk()">삭제</a>
			<%} %>
		</div>
	</div>
</body>
</html>