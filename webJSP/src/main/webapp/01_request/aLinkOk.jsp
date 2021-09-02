<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
   // client로부터 전송받은 데이터를 가져오기 > request.getParameter("변수명")
   String username = request.getParameter("username");
   String tel = request.getParameter("tel");
   String addr = request.getParameter("addr");
   
   System.out.println(username);
   System.out.println(tel);
   System.out.println(addr);
%>
이름: <%= username %>
연락처: <%= tel %>
주소: <%= addr %>