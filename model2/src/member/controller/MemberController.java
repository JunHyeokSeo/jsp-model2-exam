package member.controller;

import member.service.Action;
import member.service.ActionForward;
import member.service.MemberInsert;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//do 확장자로 요청하는 모든 요청을 받는다는 의미
@WebServlet("*.do")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//doGet, doPost 메소드에서 공통적인 작업을 처리하는 메소드
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());


		//요청에 따라 호출할 Service 파일명이 달라짐.
		//따라서 아래 코드를 통해 요청 이름을 파악함.

		//요청 URI : /model2_war_exploded/MemberInsert.do
		System.out.println("requestURI : " + requestURI);
		//현재 프로젝트명 : /model2_war_exploded
		System.out.println("contextPath : " + contextPath);
		//요청 이름 : /MemberInsert.do
		System.out.println("command : " + command);

		Action action = null;
		ActionForward forward = null;

		//회원가입
		if (command.equals("/MemberInsert.do")) {
			action = new MemberInsert();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		//포워딩 처리
		if (forward != null) {
			if (forward.isRedirect()) { //redirect 방식으로 포워딩
				response.sendRedirect(forward.getPath());
			} else {                    //dispatcher 방식으로 포워딩
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("get");

		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("post");

		doProcess(request, response);
	}

}
