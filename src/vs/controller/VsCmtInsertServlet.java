package vs.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vs.dto.VsCmtDTO;
import vs.service.VsService;
import vs.service.VsServiceImpl;

@WebServlet(name = "vs_cmt_insert", urlPatterns = { "/vs/vs_cmt_insert.do" })
public class VsCmtInsertServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		System.out.println("Servlet요청성공");
		
		String vs_cmt_txt = "";
		String me_id = "ocean";
		int vs_no = 50;
		
		VsService service = new VsServiceImpl();
		VsCmtDTO comment = new VsCmtDTO(vs_cmt_txt, me_id, vs_no);
		System.out.println(comment);
		int result = service.insert(comment);

		String msg = "";
		if (result >= 1) {
			msg = result + "개 행 삽입 성공";
		} else {
			msg = "삽입실패";
		}
		System.out.println(msg);
		
		request.setAttribute("comment", comment);
		
		response.sendRedirect("/single/vs/vs_read.do");
	}
}

