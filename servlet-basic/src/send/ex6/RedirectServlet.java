package send.ex6;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RedirectServlet")
public class RedirectServlet extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request객체로 공유 설정
		request.setAttribute("request", "requestValue");  
		
		// redirect 방식으로 포워딩 - request 객체로 공유한 값 사용 불가
//		response.sendRedirect("servlet/ex6/redirect.jsp");
		response.sendRedirect("/servlet/ex6/redirect.jsp");
	}

}
