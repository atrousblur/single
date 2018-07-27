package free.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import free.dto.FreeDTO;
import free.service.FreeService;
import free.service.FreeServiceImpl;

@WebServlet(name = "fr/list", urlPatterns = { "/fr/list.do" })
public class PostListServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		System.out.println("postlist ���� ��û ����");
		req.setCharacterEncoding("euc-kr");

		// 1.�����Ͻ� �޼ҵ� ȣ��
		FreeService service = new FreeServiceImpl();
		ArrayList<FreeDTO> postlist = service.getPostList();

		//System.out.println("��� ����" + postlist);

		// 2.�����Ͱ���
		req.setAttribute("postlist", postlist);

		// 3.��û������
		RequestDispatcher rd = req.getRequestDispatcher("/single/pages/free/freeview.jsp");	// ��κ����ʿ�
		rd.forward(req, res);
	}
}
