package com.cart.action;

import java.io.IOException;
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
		doGet(request,response);
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8"); //한글처리 
		
		String name = request.getParameter("product");
		int price = Integer.parseInt(request.getParameter("price"));
		
		//세션 객체 생성
		HttpSession session = request.getSession(true);
		session.setAttribute("products",name); //세션에 정보 저장 
		session.setAttribute("prices",price);
		
		
		// 총합과 효율적인 호출을 위해 Product List 생성 
		ArrayList<Products>	 pList = (ArrayList<Products>)session.getAttribute("list");
		
		//리스트가 없을경우 리스트를 생성
		if(pList == null) pList = new ArrayList<Products>();
		
		//추가된 상품 객체를 리스트에 담음
		pList.add(new Products(name,price));
		
		//세션에 리스트를 추가
		session.setAttribute("list", pList);
		
		//세션의 정보를 리다이렉트 응답
		response.sendRedirect("menu.jsp");
		
//		
//		
	}

}



