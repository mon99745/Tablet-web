package com.member.action;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.commons.action.Action;
import com.commons.action.ActionForward;

@WebServlet("/MemberFrontController.me")

public class MemberFrontController extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String command = uri.substring(context.length());
		
		
		Action action = null;
		ActionForward forward = null;
		
		if(command.equals("/memberLogin.me")) {
			forward = new ActionForward();
			forward.setPath("login.html");
			forward.setRedirect(false);
		} else if(command.equals("/memberLoginAction.me")) {
			action = new MemberLoginAction();
			forward = action.execute(request, response);
		} else if(command.equals("/memberJoin.me")) {
			forward = new ActionForward();
			forward.setPath("/sign-up.html");
			forward.setRedirect(false);
		} else if(command.equals("/memberJoinAction.me")) {
			action = new MemberJoinAction();
			forward = action.execute(request, response);
		} else if(command.equals("/memberLogout.me")) {
			action = new MemberLogoutAction();
			forward = action.execute(request, response);
		}
		if(forward != null) {
			if(forward.isRedirect()) {	//true : sendRedirect() 전환
				response.sendRedirect(forward.getPath());
			} else {					//false : forward() 전환
				RequestDispatcher rd = request.getRequestDispatcher(forward.getPath());
				rd.forward(request, response);
			}
		}
	}
}
