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
@WebServlet("/Cart")
public class CartServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		int price = Integer.parseInt(request.getParameter("price"));
		
		//세션에서 상품 리스트를 받아옴 //세션생성
		HttpSession session = request.getSession(true);
		ArrayList<Products> gList = (ArrayList<Products>)session.getAttribute("list");
		
		//리스트가 없을경우 리스트를 생성
		if(gList == null) gList = new ArrayList<Products>();
		
		//추가된 상품 객체를 리스트에 담음
		gList.add(new Products(name,price));
		
		//세션에 리스트를 추가
		session.setAttribute("list", gList);
		
		
		//페이지 출력
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html><body><script>\n"
//				+ "    alert('상품이 장바구니에 추가 되었습니다.');\n"
				+ "	location.href = '/Danta/index.jsp';\n"
				+ "</script>");
		
		
		out.println("<p/><table width='80%'>");
		out.println("<br/>[<a href='./index.jsp'>계속 쇼핑</a>]");
		out.println("[<a href='Buy'>결제하기</a>]<br/>");
		out.println("<tr><th>상품명</th><th>가격</th></tr>");
		
		//세션에 담긴 상품리스트를 반복문을 이용해 출력
		for (int i = 0; i < gList.size(); i++) {
			Products goods = (Products)gList.get(i);
			out.println("<tr><td>" + goods.getName() + "</td>");
			out.println("<td>" + goods.getPrice() + "</td></tr>");
		}
		out.println("</table>");
		out.println("</body></html>");
		out.close();
	}

}



