package friends.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import friends.dto.MsgDTO;
import friends.service.FriendsService;
import friends.service.FriendsServiceImpl;
import vs.dto.VsDTO;
import vs.service.VsService;
import vs.service.VsServiceImpl;

@WebServlet(name = "msg_insert", urlPatterns = { "/msg/msg_insert.do" })
public class MsgInsertServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		System.out.println("Servlet요청성공");
		
		String sender = "ocean1";
		String receiver = "ocean2";
		String msg_title = "";
		String msg_txt = "";
		
		FriendsService service = new FriendsServiceImpl();
		MsgDTO msg = new MsgDTO(sender, receiver, msg_title, msg_txt);
		System.out.println(msg);
		int result = service.insertMsg(msg);
		
		String message = "";
		if (result >= 1) {
			message = result + "개 행 삽입 성공";
		} else {
			message = "삽입실패";
		}
		System.out.println(message);
		
		request.setAttribute("msg", msg);
		
		response.sendRedirect("/single/vs/vs_read.do");
	}
}
