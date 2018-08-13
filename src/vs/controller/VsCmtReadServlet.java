package vs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import friends.service.FriendsService;
import friends.service.FriendsServiceImpl;
import member.dto.MemberDTO;
import member.service.MemberService;
import member.service.MemberServiceImpl;
import vs.dto.VsCmtDTO;
import vs.service.VsService;
import vs.service.VsServiceImpl;

@WebServlet(name = "vs_cmt_read", urlPatterns = { "/vs/vs_cmt_read.do" })
@SuppressWarnings("unchecked")
public class VsCmtReadServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		System.out.println("Servlet��û����");

		int vs_no = Integer.parseInt(request.getParameter("vs_no"));

		VsService service = new VsServiceImpl();
		ArrayList<VsCmtDTO> comments = service.read(vs_no);

		JSONObject cmtroot = new JSONObject();
		JSONArray cmtjsonlist = new JSONArray();
		int size = comments.size();

		for (int i = 0; i < size; i++) {
			VsCmtDTO comment = comments.get(i);
			JSONObject cmtjson = new JSONObject();
			String date = comment.getVs_cmt_date().toString();
			cmtjson.put("vs_cmt_no", comment.getVs_cmt_no());
			cmtjson.put("vs_cmt_txt", comment.getVs_cmt_txt());
			cmtjson.put("vs_cmt_date", date);
			cmtjson.put("vs_no", comment.getVs_no());
			cmtjson.put("me_id", comment.getMe_id());
			MemberService sv = new MemberServiceImpl();
			MemberDTO user = sv.getUserInfo(comment.getMe_id());
			cmtjson.put("me_img", user.getMe_img());
			cmtjsonlist.add(cmtjson);
		}
		cmtroot.put("cmtlist", cmtjsonlist);
		response.setContentType("application/json;charset=euc-kr");
		response.setHeader("cache-control", "no-cache,no-store");
		PrintWriter pw = response.getWriter();
		pw.print(cmtroot.toJSONString()); 
		System.out.println(cmtroot);
		
		// 4. ��û������
		// RequestDispatcher rd = request.getRequestDispatcher("/pages/vs/vsview.jsp");
		// rd.forward(request, response);
	}
}