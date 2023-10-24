package board.service;

import board.dao.BoardDAO;
import board.model.BoardBean;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class BoardListAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("BoardListAction");

		int page = 1;       //1. 현재 페이지 번호
		int limit = 10;     //2. 한 페이지에 출력할 데이터 개수
		//page를 request.getParameter로 받아, 현재 출력해야 할 페이지를 파악
		if (request.getParameter("page") != null) {     //1페이지가 아닌 다른 페이지
			page = Integer.parseInt(request.getParameter("page"));
		}

		BoardDAO dao = BoardDAO.getInstance();
		
		//3. 총 데이터 개수
		int listcount = dao.getCount();
		System.out.println("listcount = " + listcount);

		int startRow = (page - 1) * limit + 1;
		int endRow = page * limit;

		//게시판 목록 구하기
		List<BoardBean> boardList = dao.getList(startRow, endRow);
		System.out.println("boardList = " + boardList);

		// 총페이수
		int pageCount = listcount/limit+((listcount%limit==0)?0:1);

		int startPage = ((page-1)/10) * limit + 1;// 1, 11, 21..
		int endPage = startPage + 10 - 1;		  //10, 20, 30..

		if(endPage > pageCount) endPage = pageCount;

		// 공유 설정
		request.setAttribute("page", page);
		request.setAttribute("listcount", listcount);
		request.setAttribute("boardList", boardList);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("limit", limit);

		// request 객체로 공유한 경우에는 dispatcher 방식으로 포워딩 되어야,
		// view 페이지에서 공유한 값에 접근 할 수 있다.
		ActionForward forward = new ActionForward();
		forward.setRedirect(false); //dispatcher 방식으로 포워딩
		forward.setPath("./board/board_list.jsp");
	
		return forward;
	}

}
