package com.cart.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Buy")

public class CartBuyAction extends HttpServlet {

	@Override

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 세션이 없을경우 새로 생성하면 안된다. 있는 세션만 사용한다
		HttpSession session = request.getSession(false);

		// 세션이 없을경우 종료
		if (session == null)
			return;
		// 세션에 있는 상품목록 가져오기
		ArrayList<Products> gList = (ArrayList<Products>) session.getAttribute("list");
		// 목록이 없을 경우 종료
		if (gList == null)
			return;
		// 출력
		response.setContentType("text/html; charset=utf-8");

		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<p/><table width='80%'>");
		out.println("<tr><th>상품명</th><th>가격</th></tr>");
		// 상품명과 총 계산 금액 계산
		int sum = 0;
		for (Products goods : gList) {
			out.println("<tr><td>" + goods.getName() + "</td>");
			out.println("<td>" + goods.getPrice() + "</td></tr>");
			sum += goods.getPrice();
		}
		out.println("<tr><td colspan='2'>결제 총액 : " + sum + "</td></tr>");
		out.println("</table>");
		out.println("<br>고객님 감사합니다.");
		out.println("<br/><a href='./menu.jsp'>HOME</a>");
		out.println("</body></html>");
		// session.invalidate(); // 해당 고객의 모든 세션 삭제
		session.removeAttribute("list"); // 상품목록 세션 삭제
		out.close();

	}

}
