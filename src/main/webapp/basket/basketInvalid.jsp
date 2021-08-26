<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    session.invalidate(); // 세션 무효화
   	response.sendRedirect("index.html"); //다른 페이지로 제어권 이동
%>
   	<script>
   	location.href = "index.html";
   	</script>