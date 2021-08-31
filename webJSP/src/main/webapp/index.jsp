<!-- 지시부 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%!
   //선언부
   
   //메소드정의 -> 선언부에서 정의 -> 호출안해서 실행안됨
   
   public int sum(int a,int b){
      return a+b;
   }


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   img{width:200px;height:200px;}
</style>
<script>
   document.write('javascript!!!!!');
</script>
</head>
<body>
<h1>jsp첫번째 페이지</h1>
<%    //스크립트릿

   int a=100;
   String name="홍길동";
   
   a = a*2;   
   
   //out:내장객체
   out.println("a="+a);
   out.println("<img src='img/flower3.jpg'/>"); //크롬을 만나면 이미지가 되는것
   
   System.out.println("sum(56,43)="+sum(56,43)); //콘솔에찍힘
   
   out.println("sum(123,457)="+sum(123,457));
   
   for(int i=1; i<10; i++){
      out.println(i);
   }
   
%>
<hr/>
<h1>변수, 간단한수식, 메소드를 호출하여 결과를 처리할때</h1>
a=<% //출력했던 변수 a 가 넘어옴
out.println(a);
%>
a=<%=a%><br/> <!--  '=' 을 'out.print'의 기능을 한다고 본다, ; 콜로안쓴다 -->
a=<%=a+10 %><br/> <!-- html과jsp섞어서사용 -->
sum=<%=sum(5,124) %>


</body>
</html>