<%@page import="com.bitcamp.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");    
%>
<!-- request -->
<!-- Beans를 이용한 request - vo멤버변수, form의 name과 같은 경우 request하여 vo에 값을 세팅한다.

	BoardVO vo = new BoardVO();
	scope : 현재 객체가 언제까지 사용가능한 객체인지를 설정한다.
	request, session, page, application
 -->
<jsp:useBean id="vo" class="com.bitcamp.board.BoardVO" scope="page"/>
<!-- form의 값을 request하여 vo에 세팅
	name - vo 객체명
 -->
 <jsp:setProperty name="vo" property="*"/>
<!-- DB등록 -->
<%
	vo.setUserid((String)session.getAttribute("logId"));
	vo.setIp(request.getRemoteAddr());
	
	BoardDAO dao = new BoardDAO();
	int result = dao.boardInsert(vo);

	//등록여부에 따라 페이지 이동 -->
	if(result>0){//글등록됨
		response.sendRedirect("boardList.jsp");
	}else{//글등록안됨
		%>
		<script>
			alert("글등록실패");
			history.back();
		</script>
		<% 
	}
	
%>

