package send.ex3;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(description = "값전달 연습", urlPatterns = { "/QueryString" })
public class QueryString extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String vclass = request.getParameter("class");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		
		out.println("<html><head></head><body>");
		out.println("당신이 입력한 정보(get방식)입니다.<br> 아 이 디 : <b>");
		out.println(id);
		out.println("</b><br> 이름 : <b>");
		out.println(name);
		out.println("</b><br> 구분 : <b>");
		out.println(vclass);
		out.println("</b><br> 전화번호 : <b>");
		out.println(phone1);
		out.println("-");
		out.println(phone2);
		out.println("-");
		out.println(phone3);
		out.println("</b><br><a href='javascript:history.go(-1)'>다시</a>");
		out.println("</body></html>");
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");  // post방식으로 한글값 전달한 경우에 인코딩 처리		
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String vclass = request.getParameter("class");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		
		out.println("<html><head></head><body>");
		out.println("당신이 입력한 정보(post방식)입니다.<br> 아 이 디 : <b>");
		out.println(id);
		out.println("</b><br> 이름 : <b>");
		out.println(name);
		out.println("</b><br> 구분 : <b>");
		out.println(vclass);
		out.println("</b><br> 전화번호 : <b>");
		out.println(phone1);
		out.println("-");
		out.println(phone2);
		out.println("-");
		out.println(phone3);
		out.println("</b><br><a href='javascript:history.go(-1)'>다시</a>");
		out.println("</body></html>");
		out.close();
	}

}
