package vs.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vs.dto.VsDTO;
import vs.service.VsService;
import vs.service.VsServiceImpl;

@WebServlet(name = "select", urlPatterns = { "/vs/select.do" })
public class SelectServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		System.out.println("Servlet��û����");
		
		String A = request.getParameter("A");
		String B = request.getParameter("B");
		String option = "";
		int vs_no = 0;
		
		if(A!=null){
			vs_no = Integer.parseInt(A.substring(1));
			option = "A";
		} else if(B!=null){ 
			vs_no = Integer.parseInt(B.substring(1));
			option = "B";
		} else{
			System.out.println("???");
		}
		
		// 2. �����Ͻ� �޼ҵ� ȣ��
		VsService service = new VsServiceImpl();
		int result = service.update(vs_no, option);

		// 3. �����Ͱ���

		// 4. ��û������
		response.sendRedirect("/single/vs/vs_read.do");
	}
}