package songRequest;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/requestInput")

public class requestInput extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet{
	 static final long serialVersionUID = 1L;
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  response.setContentType("text/html;charset=UTF-8");
		  PrintWriter out = response.getWriter();
		  request.setCharacterEncoding("UTF-8");
		  String id = request.getParameter("id");
		  if(id == null || id.trim().length() == 0){
		   response.sendRedirect("/Danta/songRequest.jsp");
		   
		   return;
		  }
//		  id = myclasses.StringUtil.toHangul(id);
		  
		  out.println("<html><head>");
		  out .println("<link rel=\"stylesheet\" href=\"css/style.css\">");
		  out.println("<script language='JavaScript'>");
		  out.println("function send(form){");
		  out.println("    form.msg.value = form.temp.value;");
		  out.println("    form.temp.value = '';");
		  out.println("    form.temp.focus();");
		  out.println("    return true;");
		  out.println("}");
		  out.println("</script>");
		  out.println("<title>노래 신청 로그인</title></head>");
		  out.println("<body>");
		  out.println("<form method=post action=./requestServlet");
		  out.println("onSubmit='return send(this)' target='main'>");
		  
		  // 메시지 입력란 
		  out.println("메시지 : <input type=text size=100 name=temp>");
		  out.println("<input type=hidden name=msg>");
		  out.println("<input type=hidden name=id value="+id+"'>");
		  out.println("</form>");
		  out.println("</body></html>");
		 }   
		}