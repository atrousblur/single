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
// ��ǥ�� ������Ʈ, �ߺ� ��ǥ ����
@WebServlet(name = "select", urlPatterns = { "/vs/select.do" })
public class SelectServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		System.out.println("Servlet��û����");
		
		String A = request.getParameter("A");
		String B = request.getParameter("B");
		String loginUser = request.getParameter("loginUser");
		String option = "";
		int vs_no = 0;
		
		if(A!=null){
			vs_no = Integer.parseInt(A.substring(1));
			option = "A";
		} else{ 
			vs_no = Integer.parseInt(B.substring(1));
			option = "B";
		}
		
		VsService service = new VsServiceImpl();
		int result = service.voting(vs_no, loginUser, option);
		
		String state = "new";
		if(result==1){	// �̹� ��ǥ �Ϸ�
			state = "already";
		}else{
			service.update(vs_no, option);	// ��ǥ�� ����
		}
		response.sendRedirect("/single/vs/vs_read.do?state="+state);
	}
}