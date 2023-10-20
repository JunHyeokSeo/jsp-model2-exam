package member.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.dao.MemberDAO;

public class IdCheck implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("IdCheck");
		
		request.setCharacterEncoding("utf-8");
		
		// 출력 스트림 객체 생성
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		System.out.println("id:"+ id);
		
		MemberDAO dao = MemberDAO.getInstance();
		int result = dao.idcheck(id);		  // ID중복 검사
		System.out.println("result:"+ result);//  1:중복 ID
											  // -1:사용 가능한 ID	
		
		// 웝 브라우저에 출력되는 값이 callback 함수로 리턴된다.
		out.println(result);
		
		return null;
	}

}
