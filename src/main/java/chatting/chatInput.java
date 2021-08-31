package chatting;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/chatInput")

public class chatInput extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet{
	 static final long serialVersionUID = 1L;
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  response.setContentType("text/html;charset=UTF-8");
		  PrintWriter out = response.getWriter();
		  request.setCharacterEncoding("UTF-8");
		  String id = request.getParameter("id");
		  if(id == null || id.trim().length() == 0){
		   response.sendRedirect("/chat.jsp");
		   return;
		  }
//		  id = myclasses.StringUtil.toHangul(id);
		  out.println("<html><head>");
		  out.println("<script language='JavaScript'>");
		  out.println("function send(form){");
		  out.println("    form.msg.value = form.temp.value;");
		  out.println("    form.temp.value = '';");
		  out.println("    form.temp.focus();");
		  out.println("    return true;");
		  out.println("}");
		  out.println("</script>");
		  out.println("<title>단타포차에 오신걸 환영합니다.</title>"
		  		+ "<link rel=\"stylesheet\" href=\"css/style.css\">"
		  		+ "<link rel=\"stylesheet\" href=\"css/chat.css\"></head>");
		  out.println("<body>");
		  out.println("<form method=post action=./chatServlet");
		  out.println("onSubmit='return send(this)' target='main'>");
		  
		  // 메시지 입력란 
		  out.println("<c>");
		  out.println("<input type=text size=100 name=temp placeholder=\"메세지를 입력해주세요.\">");
		  out.println("<input type=hidden name=msg>");
		  out.println("<input type=hidden name=id value="+id+"'>");
		  out.println("</form> <p style = \"color:red;\">❗️지나친 욕설과 성희롱 관련의 폭언은 처벌의 대상이 될 수 있습니다.</p>");
		  out.println("</c></body></html>");
		 }   
		}