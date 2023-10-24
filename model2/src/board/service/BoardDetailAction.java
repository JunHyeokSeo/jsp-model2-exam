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
		return null;
	}
}
