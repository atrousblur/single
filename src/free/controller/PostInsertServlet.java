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

@WebServlet(name = "fr/insert", urlPatterns = { "/fr/insert.do" })
public class PostInsertServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("���� ��û ����");
		req.setCharacterEncoding("euc-kr");

		// 1. Ŭ���̾�Ʈ�� ��û���� ����
		String title = req.getParameter("title");
		String txt = req.getParameter("txt");
		String ctg = req.getParameter("ctg");

		// String fr_img = req.getParameter("attch");
		// String me_id = req.getParameter("id");

		// 2. �����Ͻ� �޼ҵ� ȣ��
		FreeDTO post = new FreeDTO(title, txt, ctg);

		System.out.println("�Խñ� ��� ����: " + post);
		FreeService service = new FreeServiceImpl();
		int result = service.insert(post);

		// ��û������
		res.sendRedirect("/single/fr/list.do");
	}
}
