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
		 
		// session.invalidate(); // 해당 고객의 모든 세션 삭제
		//response.sendRedirect("index.jsp"); //다른 페이지로 제어권 이동
		
		session.removeAttribute("list"); // 상품목록 세션 삭제
		out.close();

	}

}
