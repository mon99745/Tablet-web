package chatting;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/chatLogin")

public class chatLogin extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet{
	static final long serialVersionUID = 1L;
	
@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	doPost(request, response);
}
@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html;charset=UTF-8");
	PrintWriter out = response.getWriter();
	String id = request.getParameter("id");
	//닉네임이 없으면 예외 발생
	  if(id == null || id.trim().length() == 0){
	   response.sendRedirect("/chat.html");
	   return;
	  }
	  
	  out.println("<html>");
	  out .println("<link rel=\"stylesheet\" href=\"css/style.css\">");
	  out.println("<frameset rows='85%, 15%'>");
	  out.println("<frame src='/chatting/chatServlet?id=" + id + "&first=true' name='main'>");
	  out.println("<frame src='/chatting/chatInput?id=" + id + "'>");
	  out.println("</frameset>");
	  out.println("</html>");
	 }
	 
	}
