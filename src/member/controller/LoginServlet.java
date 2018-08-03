package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.dto.MemberDTO;
import member.service.MemberService;
import member.service.MemberServiceImpl;
@WebServlet(name = "login", urlPatterns = { "/login.do" })
public class LoginServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html;charset=euc-kr");
		response.setHeader("cache-control", "no-cache,no-store");
		PrintWriter pw = response.getWriter();
		
		/*String id = request.getParameter("id");
		String pass = request.getParameter("pass");*/
		String info = request.getParameter("info");
		String[] str = info.split(",");
		String id = str[0];
		String pass = str[1];
		MemberService service = new MemberServiceImpl();
		MemberDTO loginUser = service.getLoginUser(id, pass);
		
		String msg="";
		if(loginUser!=null){//�α��μ���
			if(loginUser.getMe_state().equals("t")){
				HttpSession ses = request.getSession();
				ses.setAttribute("loginUser", loginUser);
				msg="1";
			}else if(loginUser.getMe_state().equals("f")){//Ż����ȸ��
				msg = "���̵�ͺ�й�ȣ�� Ȯ�����ּ���.";
			}
			
		}else{//�α��ν���
			msg = "���̵�ͺ�й�ȣ�� Ȯ�����ּ���.";
		}
		pw.println(msg);

	}
}
