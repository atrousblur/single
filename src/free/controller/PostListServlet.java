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
		
		String action = req.getParameter("action");
		String view="";
		
		FreeService service = new FreeServiceImpl();
		ArrayList<FreeDTO> postlist = null;
		
		if(action.equals("free")){
			view = "/pages/free/freeview_free.jsp";
			postlist = service.getCtgList("����");

		}else if(action.equals("tip")){
			view = "/pages/free/freeview_tip.jsp";
			postlist = service.getCtgList("����");

		}else if(action.equals("review")){
			view = "/pages/free/freeview_review.jsp";
			postlist = service.getCtgList("�ı�");

		}else if(action.equals("recom")){
			view = "/pages/free/freeview_recom.jsp";
			postlist = service.getCtgList("��õ");

		}else if(action.equals("all")){
			view = "/pages/free/freeview.jsp";
			postlist = service.getPostList();
		}

		// 1.�����Ͻ� �޼ҵ� ȣ��
		//FreeService service = new FreeServiceImpl();
		//ArrayList<FreeDTO> postlist = service.getPostList();

		// 2.�����Ͱ���
		req.setAttribute("postlist", postlist);

		// 3.��û������
		RequestDispatcher rd = req.getRequestDispatcher(view);	
		rd.forward(req, res);
	}
}
