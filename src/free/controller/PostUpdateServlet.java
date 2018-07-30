package free.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import free.dto.FreeDTO;
import free.service.FreeService;
import free.service.FreeServiceImpl;

@WebServlet(name = "fr/update", urlPatterns = { "/fr/update.do" })
public class PostUpdateServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("�Խñ� ���� ���� ��û ����");
		req.setCharacterEncoding("euc-kr");

		// 1. Ŭ���̾�Ʈ�� ��û���� ����
		String title = req.getParameter("title");
		String txt = req.getParameter("txt");
		String ctg = req.getParameter("ctg");
		int no = Integer.parseInt(req.getParameter("no"));

		// 2. �����Ͻ� �޼ҵ� ȣ��
		FreeDTO post = new FreeDTO(no, title, txt, ctg);
		System.out.println(post);

		FreeService service = new FreeServiceImpl();
		int result = service.update(post);

		// 4. ��û������ - forward
		String view = "";
		if (result >= 1) {
			view = "/single/fr/list.do";
		} else {
			// view = "/serverweb/emp/read.do?id=" + id + "&action=UPDATE";
		}
		res.sendRedirect(view);

	}
}
