package board.service;

import board.dao.BoardDAO;
import board.model.BoardBean;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardAddAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("BoardAddAction");

		String path = request.getServletContext().getRealPath("boardupload");
		System.out.println("path = " + path);

		int size = 1024 * 1024;

		MultipartRequest multi = new MultipartRequest(request, path, size,"utf-8", new DefaultFileRenamePolicy());
		BoardBean board = new BoardBean();
		board.setBoard_name(multi.getParameter("board_name"));
		board.setBoard_pass(multi.getParameter("board_pass"));
		board.setBoard_subject(multi.getParameter("board_subject"));
		board.setBoard_content(multi.getParameter("board_content"));
		board.setBoard_file(multi.getFilesystemName("board_file"));

		BoardDAO dao = BoardDAO.getInstance();
		int result = dao.insert(board);	                    // 원문 글작성
		if(result == 1) System.out.println("글작성 성공");

		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("./BoardListAction.do");
		return forward;
	}

}
