package send.ex5;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();		
		
		String id=request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		if(id.equals("java") && passwd.equals("java")){
			HttpSession session = request.getSession();
			session.setAttribute("id", id);

			//1. Dispatcher 방식으로 포워딩
			//request 영역으로 공유 후 dispatcher 방식으로 포워딩하면 이동한 JSP 파일에서 값을 사용할 수 있다.
			RequestDispatcher dispatcher = request.getRequestDispatcher("/servlet/ex5/loginSuccess.jsp");
			dispatcher.forward(request, response);

			//2. Redirect 방식으로 포워딩
			//request 영역으로 공유 후 redirect 방식으로 포워딩하면 이동한 JSP 파일에서 값을 사용할 수 없다.
//			response.sendRedirect("/servlet/ex5/loginSuccess.jsp");
		}else{
			out.println("<script>");
			out.println("alert('아이디나 비밀번호가 일치하지 않습니다.')");
			out.println("history.back()");
			out.println("</script>");
			out.close();
		}
	}

}
