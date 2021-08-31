package chatting;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/chatServlet")

public class chatServlet  extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet{
	 static final long serialVersionUID = 1L;
	 String message[];
	 int index = 0, size = 10;
	 
	 public void init(){
	  message = new String[size];
	  for(int i=0; i<size; i++){
	   message[i] = "";
	  }
	 }
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  request.setCharacterEncoding("UTF-8");
	  String id = request.getParameter("id");
	  String msg = request.getParameter("msg");
	  if(msg != null && msg.trim().length()!=0){
	   synchronized(message){
	    message[index] = id + " : " + msg;
	    index = (index+1) % size;
	   }
	  }
	  doGet(request, response);
	 }
	 
	 public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
	  response.setContentType("text/html;charset=UTF-8");
	  String first = request.getParameter("first");
	  if(first != null){
	   String id = request.getParameter("id");
//	   id = myclasses.StringUtil.toHangul(id);
	   synchronized(message){
	    message[index] = "<p align=center>" + id + "님이 들어왔습니다. </p>";
	    index = (index + 1) % size;
	   }
	  }
	  PrintWriter out = response.getWriter();
	  out.println("<html><head>");
	  out.println("<meta http-equiv='pragma' content='no-cache'>");
	  out.println("<meta http-equiv='cache-control' content='no-cache'>");
	  out.println("<meta http-equiv='refresh'");
	  out.println("content='2; URL=./chatServlet'>");
	  out.println("<link rel=\"stylesheet\" href=\"css/chat.css\">");
	  out.println("<link rel=\"stylesheet\" href=\"css/style.css\">");
	  out.println("<title>단타포차에 오신걸 환영합니다.</title></head>");
	  out.println("<body> "
	  		+ "<div class=left-list>"
	  		+ "<ul><li>"
	  		+ "<button type=\"button\" id=\"tab1\" <a href=\"/index.jsp\">HOME</a></button>"
	  		+ "<button type=\"button\" id=\"tab2\" <a href=\"/index.jsp\">채팅방</a></button>"
	  		+ "<button type=\"button\" id=\"tab3\" <a href=\"index.jsp\">노래 신청</a></button>"
	  		+ "</li></ul></hr>"
	  		+ "<c>");
//	  메세지 창
	  int i = index;
	  while(true){
	   out.print(message[i]);
	   out.println("<br>");
	   i = ++i % size;
	   if(i==index-1)
	    break;
	   if(index == 0 && i == size-1)
	    break;
	  }
	  out.print(message[i]);
	  out.println("</c><br>");
	  out.println("</div>"
	  		+ "</body></html>");
	 }
	}