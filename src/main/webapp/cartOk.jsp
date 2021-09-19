<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="com.cart.action.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart OK</title>
</head>
<body>
<%
	
	out.print("음식명:"+session.getAttribute("products")+ "<br>");
	out.print("가격:"+session.getAttribute("prices")+ "<br>");
	out.print("============================");
	
	ArrayList list = (ArrayList)(session.getAttribute("list"));
	
	for (int i = 0; i < list.size(); i++) {
		Products goods = (Products)list.get(i);
		out.print("음식명 : "+goods.getName()+"&nbsp&nbsp;");
		out.print("가격 : "+goods.getPrice()+"원</br>");
			 
		} 
%>

</body>
</html>