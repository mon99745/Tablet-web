<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="com.cart.action.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">

<title> 주문 내역 </title>
</head>
<body>
	<div id=tablet>
		<%
		int sum = 0;
		ArrayList list = (ArrayList) (session.getAttribute("list"));
		if (list == null) {
			out.print("주문이 완료된 상품이 없습니다.");
			return;
		}else{
		%>
		<p />
		<table color="#fff" width='80%'>
			<tr>
				<th>상품명</th>
				<th>가격</th>
			</tr>
			<%
			for (int i = 0; i < list.size(); i++) {
				Products goods = (Products) list.get(i);
				sum += goods.getPrice(); // 결제 총 금액 
			%>
			<tr>
				<th><%=goods.getName()%></th> <!-- goods.getName() 상품이름  -->
				<th><%=goods.getPrice()%></th> <!-- goods.getPrice() 상품 가격 -->
			</tr>
			
			<%
			}
			out.print("총 결제금액: " + sum + "</br>");
			%>

			<button type="button" class="btn">직원호출</button>
			<div class="modal">
				<div class="modal-call">
					<span id=call_close class="close">확인</span>
					<p>직원이 호출 되었습니다.</p>
				</div>
			</div>

			<button type="button" class="btn">결제하기</button>
			<div class="modal">
				<div class="modal-call">
					<span id=call_close class="close">확인</span>
					<%
					session.removeAttribute("list");
					%>
					<p>결제가 완료되었습니다.</p>
				</div>
			</div>
			</table>
			<%
		}
			%>
			</div>
			
			<script src=js/modal.js></script>
</body>
</html>