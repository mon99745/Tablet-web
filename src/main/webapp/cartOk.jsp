<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="com.cart.action.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/login.css">
<% int sum = 0;
ArrayList list = (ArrayList) (session.getAttribute("list"));
%>
<title> 주문 내역 </title>
</head>
<body>
	<div id=tablet>
		 <div id=left-sidebar> <!--왼쪽 사이드 레이아웃-->
         <button class="mainBtn" onClick="history.back();">HOME</button >
         
      </div>
		
		<div id=middle> <!-- 중앙 레이아웃 -->
		<p/>
		<table>
		<%
		
		if (list == null) { %>
		<h2>주문된 내역이 없습니다.</h2> 
		<% 
			return;
		}else{
		%>
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
			</table>
		</div> <!-- middle end -->
		
			<div id=right-sidebar> <!--오른쪽 사이드 레이아웃-->
		<ul>
			<li>
			<button type="button" id="sidebar" class="btn">직원호출</button>
			<div class="modal">
				<div class="modal-call">
					<span id=call_close class="close">확인</span>
					<p>직원이 호출 되었습니다.</p>
				</div>
			</div>
			</li>
		</ul>
		<ul>
			<li>
			<button type="button" id="sidebar" class="btn">결제하기</button>
			<div class="modal">
				<div class="modal-call">
					<span id=call_close class="close" onclick = "location.href = 'menu.jsp'">확인</span>
					<p>결제가 완료되었습니다.</p>	
				</div>
			</div>
			</li>
		</ul>
		</div>
			
			<%
		}
			%>
	</div>
			
			<script src=js/modal.js></script>
</body>
</html>