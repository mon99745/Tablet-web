package com.member.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.commons.action.Action;
import com.commons.action.ActionForward;
import com.member.study.MemberDAO;
import com.member.study.MemberDTO;

public class MemberUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		MemberDTO dto = new MemberDTO();
		dto.setMember_id(request.getParameter("member_id"));
		dto.setMember_pwd(request.getParameter("member_pwd"));
		dto.setMember_name(request.getParameter("member_name"));
		dto.setMember_birthday(Integer.parseInt(request.getParameter("member_birthday")));
		dto.setMember_gender(request.getParameter("member_gender"));
		dto.setMember_phone(request.getParameter("member_phone"));
		
		MemberDAO dao = new MemberDAO();
		int succ = dao.updateMember(dto);

		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		if (succ > 0) {
			out.println("<script>alert('수정 성공');");
			out.println("location.href='boardList.bo'</script>");
		} else {
			out.println("<script>alert('수정 실패');");
			out.println("location.href='boardList.bo'</script>");
		}
		return null;
	}
}