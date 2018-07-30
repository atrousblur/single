package free.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import free.dto.FreeCmtDTO;
import free.service.FreeCmtService;
import free.service.FreeCmtServiceImpl;

@WebServlet(name = "fr/cmtinsert", urlPatterns = { "/fr/cmtinsert.do" })
public class CmtInsertServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("���� ��û ����");
		req.setCharacterEncoding("euc-kr");

		// Ŭ���̾�Ʈ�� ��û���� ����
		String cmt_txt = req.getParameter("cmt");
		int no = Integer.parseInt(req.getParameter("no"));
		// String me_id = req.getParameter("id");

		// �����Ͻ� �޼ҵ� ȣ��
		FreeCmtDTO cmt = new FreeCmtDTO(cmt_txt, no);
		System.out.println("��� ��� ����: " + cmt);
		FreeCmtService service = new FreeCmtServiceImpl();
		int result = service.insert(cmt);

		// ��û������
		res.sendRedirect("/pages/free/freeview_read.jsp");
	}
}
