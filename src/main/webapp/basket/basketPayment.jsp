<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%
//장바구니 계산 페이지
int sum = 0;
List<String> list = (List) session.getAttribute("foodList");

if (list != null) {
	for (String food : list) {

		if ("생수".equals(food)) {
	sum += 500;
		} else if ("생수".equals(food)) {
	sum += 500;
		} else if ("생수".equals(food)) {
	sum += 500;
		} else if ("생수".equals(food)) {
	sum += 500;
		} else if ("생수".equals(food)) {
	sum += 500;
		} else if ("생수".equals(food)) {
	sum += 500;
		}
	}
%>

<script>
    if(confirm('<%=sum%>
	원을 결제 하시겠습니까?')) {
		alert('결제가 성공적으로 완료 되었습니다.')
	} else {
		alert('결제를 취소했습니다.')
		history.back();
	}
</script>
<%
} else {
%>
<script>
	alert('결제할 상품이 없습니다.')
</script>
<%
}
%>
