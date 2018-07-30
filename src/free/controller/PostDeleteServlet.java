package free.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import free.service.FreeService;
import free.service.FreeServiceImpl;
@WebServlet(name = "fr/delete", urlPatterns = { "/fr/delete.do" })
public class PostDeleteServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("���� ��û ����");
		req.setCharacterEncoding("euc-kr");
		res.setContentType("text/html;charset=euc-kr");
		PrintWriter out = res.getWriter();
		System.out.println("������û����");

		// 1. ��û���� ����
		int no = Integer.parseInt(req.getParameter("no"));

		// 2. �����Ͻ� �޼ҵ� ȣ��
		FreeService service = new FreeServiceImpl();
		int result = service.delete(no);

		// 3. ����ȭ�����
		String msg = "";
		if (result < 0) {
			msg = "��������";
		} else {
			msg = result + "�� �� ���� ����!!";
		}

		// ��û������
		res.sendRedirect("/single/fr/list.do?action=all");
	}
}
