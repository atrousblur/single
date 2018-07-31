package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.dto.MemberDTO;
import member.service.MemberService;
import member.service.MemberServiceImpl;

@WebServlet(name = "idcheck", urlPatterns = { "/idcheck.do" })
public class IdCheckServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("id");

		MemberService service = new MemberServiceImpl();
		MemberDTO user = service.getUserInfo(id);

		String msg = "";
		if (user!=null) {
			msg = "�̹� �����ϴ� ���̵��Դϴ�";
		} else {
			msg = "��밡���� ���̵��Դϴ�";
		}

		response.setContentType("text/html;charset=euc-kr");
		response.setHeader("cache-control", "no-cache,no-store");
		PrintWriter pw = response.getWriter();
		pw.println(msg);
	}
}
