<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%
request.setCharacterEncoding("UTF-8");
String food = request.getParameter("food") == null ? "" : request.getParameter("food");
System.out.println("food"); // 데이터가 잘 넘어가는 지 확인 

List list = (List)session.getAttribute("foodList"); // 데이터를 찍어줄때에는 session 객체 형변환 필요
// "foodlist" 존재 여부 확인
if (list == null) {
	list = new ArrayList();
	//list 안에 아무것도 없으면 List 생성
}
list.add(food);

session.setAttribute("foodList", list); //food에 추가된 list 자체를 session에 담는다.
%>
<script>
    alert('<%=food%> 상품이 장바구니에 추가 되었습니다.');
	location.href = '/index.jsp';
</script>
