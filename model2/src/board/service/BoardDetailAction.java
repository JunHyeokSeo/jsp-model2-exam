package board.service;

import board.dao.BoardDAO;
import board.model.BoardBean;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardDetailAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		String page = request.getParameter("page");

		BoardDAO dao = BoardDAO.getInstance();
		dao.readCountUpdate(board_num);
		BoardBean board = dao.getDetail(board_num);
		System.out.println("상세정보 = " + board);

		//글내용 줄바꿈 기능
		String content = board.getBoard_content().replace("\n", "<br>");

		//공유 설정
		request.setAttribute("board", board);
		request.setAttribute("content", content);
		request.setAttribute("page", page);

		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./board/board_view.jsp");
		return forward;
	}
}
