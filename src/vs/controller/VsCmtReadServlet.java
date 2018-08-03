package vs.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vs.dto.VsCmtDTO;
import vs.dto.VsDTO;
import vs.service.VsService;
import vs.service.VsServiceImpl;

@WebServlet(name = "vs_cmt_read", urlPatterns = { "/vs/vs_cmt_read.do" })
public class VsCmtReadServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		System.out.println("Servlet��û����");

		int vs_no = 50;
		
		// 2. �����Ͻ� �޼ҵ� ȣ��
		VsService service = new VsServiceImpl();
		ArrayList<VsCmtDTO> comments = service.read(vs_no);

		// 3. �����Ͱ���
		request.setAttribute("comments", comments);
		
		// 4. ��û������
		RequestDispatcher rd = request.getRequestDispatcher("/pages/vs/vsview.jsp");
		rd.forward(request, response);
	}
}