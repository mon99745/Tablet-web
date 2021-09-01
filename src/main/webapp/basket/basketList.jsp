<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link rel="stylesheet" href="/Danta/css/style.css">
<link rel="stylesheet" href="/Danta/css/basket.css">
</head>
<body>
<div id=basket-tablet>
    <div id=left-sidebar> <!—왼쪽 사이드 레이아웃—>

              <button class="mainBtn" onClick="history.back();">HOME</button >
            
      </div>
<div id=basket-middle style= "overflow-y: scroll">
<%
List<String> list = (List) (session.getAttribute("foodList"));
if (list == null) { %>

장바구니에 넣은 상품이 없습니다.

	<% }else {
		for (String food : list) {
		%> <p id=list> <% 
		System.out.println(food);
		out.println(food); %> :15900원 <br> <% //String 밖으로 내보내는 뜻
		// 줄바꿈을 원할 경우 (food)안에 html 형식으로 작성
	}
	
} 
%>
</div>
<div id= basket-bottom>
<p id=bottom>합계: 15900원</p> 
</div>

<button id=order>주문하기</button>
</div>
</body>
</html>