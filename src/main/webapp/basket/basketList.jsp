<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>
<%
List<String> list = (List) (session.getAttribute("foodList"));
if (list == null) { %>

장바구니에 넣은 상품이 없습니다.

	<% }else {
		for (String food : list) {
		%><% 
		System.out.println(food);
		out.println(food); %> <br> <% //String 밖으로 내보내는 뜻
		// 줄바꿈을 원할 경우 (food)안에 html 형식으로 작성
	}
	
} 
%>

</p>
</body>
</html>