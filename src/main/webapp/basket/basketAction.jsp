<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%
request.setCharacterEncoding("UTF-8");
String product = request.getParameter("product") == null ? "" : request.getParameter("product");

List<String> list = (List)session.getAttribute("productList"); // 데이터를 찍어줄때에는 session 객체 형변환 필요
// "foodlist" 존재 여부 확인
if (list == null) {
	list = new ArrayList();
	//list 안에 아무것도 없으면 List 생성
}
list.add(product);

session.setAttribute("productList", list); //food에 추가된 list 자체를 session에 담는다.
%>
<script>
    alert('<%=product%> 상품이 장바구니에 추가 되었습니다.');
	location.href = '/Danta/index.jsp';
</script>
