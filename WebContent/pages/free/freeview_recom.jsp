<%@page import="member.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="free.dto.FreeDTO"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��õ�Խ���</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/single/common/styles/layout.css"
	type="text/css" media="all">
<link rel="stylesheet" href="/single/common/styles/mediaqueries.css"
	type="text/css" media="all">

<!-- hs �߰� -->
<link rel="shortcut icon" href="/single/images/favicon.ico">

<link rel='stylesheet' id='kboard-skin-thumbnail-css'
	href='/single/common/styles/free/thumbnail.css?ver=5.3.9' type='text/css'
	media='all' />
<%
	ArrayList<FreeDTO> postlist = (ArrayList<FreeDTO>) request.getAttribute("postlist");
	int size = postlist.size();
	int pageNo = 0;
	if(request.getParameter("page")==null){
		pageNo = 1;
	}else{
		pageNo = Integer.parseInt(request.getParameter("page")); //����������
	}
	System.out.println(pageNo);
	int prdNum = postlist.size();
	int totalPage = 0; // ����������
	if(prdNum%20==0){
		totalPage = prdNum/20;
	}else{
		totalPage = prdNum/20 + 1;
	}
	int firstPage = 1; // ù������
	
	if(pageNo<=5){
		firstPage = 1;
	}else if(totalPage-5<pageNo){
		firstPage = totalPage - 5;
	}else{
		firstPage = pageNo - 5;
	}
	int lastPage = totalPage;	//������������
	if(totalPage<=10){
		lastPage = totalPage;
	}else if(pageNo+5<=10){
		lastPage = 10;
	}else if(pageNo+5>=totalPage){
		lastPage = totalPage;
	}else{
		lastPage = pageNo + 5;
	}
%>
<!-- -------------------------------- -->



<script src="/single/common/scripts/jquery.min.js"></script>
<script src="/single/common/scripts/jquery-mobilemenu.min.js"></script>
</head>
<body>
	<!-- content -->
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>
	<div class="wrapper row2">
		<div id="container">
			<!-- �÷��ù�� -->
		<%MemberDTO loginUser = (MemberDTO)session.getAttribute("loginUser"); %>
		<%if(loginUser!=null){ %>
			<jsp:include page="/pages/template/floatingmenu.jsp" />
			<%} %>

			<div id="kboard-thumbnail-list">

				<!-- ī�װ� ���� -->
 				<div class="kboard-category category-pc">
					<ul class="kboard-category-list"> 
				<li><a href="/single/fr/list.do?category=all">��ü</a></li>
	            <li><a href="/single/fr/list.do?category=free">����</a></li>
	            <li><a href="/single/fr/list.do?category=tip">����</a></li>
	            <li><a href="/single/fr/list.do?category=review">�ı�</a></li>
						<li  class="kboard-category-selected"><a href="/single/fr/list.do?category=recom">��õ</a></li>
					</ul>
				</div>
				<!-- ī�װ� �� -->
				<!-- ����Ʈ ���� -->
				<div class="kboard-list">
					<table>
						<thead>
							<tr>
								<td class="kboard-list-uid">��ȣ</td>
								<td class="kboard-list-title">����</td>
								<td class="kboard-list-user">�ۼ���</td>
								<td class="kboard-list-date">�ۼ���</td>
								<td class="kboard-list-view">��ȸ</td>
							</tr>
						</thead>
						<tbody>
							<%
								for (int i = 0; i < size; i++) {
									FreeDTO post = postlist.get(i);
									if(post.getMe_id().equals("single")){
							%>

							<tr class="kboard-list-notice">
								<td class="kboard-list-uid"><%=post.getFr_no()%></td>
								<td class="kboard-list-title"><a href="/single/fr/read.do?no=<%=post.getFr_no()%>&action=read">
										<div class="kboard-thumbnail-cut-strings">
											<span class="admin"> <%=post.getFr_title()%> </span> <span class="kboard-comments-count">(<%=post.getCmtcount()%>)</span>
										</div>
								</a>
								</td>
								<td class="kboard-list-user">������</td>
								<td class="kboard-list-date"><%=post.getFr_date()%></td>
								<td class="kboard-list-view"><%=post.getFr_hits()%></td>
							</tr>

							<%
								} else {
							%>

							<tr class="">
								<td class="kboard-list-uid"><%=post.getFr_no()%></td>

								<td class="kboard-list-title"><a
									href="/single/fr/read.do?no=<%=post.getFr_no()%>&action=read">
										<div class="kboard-thumbnail-cut-strings">
											<%=post.getFr_title()%>
											<span class="kboard-comments-count">(<%=post.getCmtcount()%>)</span>
										</div>
								</a> </td>
								<td class="kboard-list-user"><%=post.getMe_id()%></td>
								<td class="kboard-list-date"><%=post.getFr_date()%></td>
								<td class="kboard-list-view"><%=post.getFr_hits()%></td>
							</tr>
							<%
								}
								}
							%>

						</tbody>
					</table>
				</div>
				<!-- ����Ʈ �� -->

				<!-- ����¡ ���� -->
				<div class="pagination">
					<ul>
						<li class="prev">
						<%if(pageNo==1){ %>
							&laquo; Previous
						<%}else{ %>
							<a href="/single/fr/list.do?category=recom&page=<%=pageNo-1%>">&laquo; Previous</a>
						<%} %>
						</li>
							<%for(int i=firstPage;i<=lastPage;i++){ 
								if(i==pageNo){%>
								<li class="current"><strong><%=i %></strong></li>
								<%}else{ %>
								<li><a href="/single/fr/list.do?category=recom&page=<%=i%>"><%=i %></a></li>
							<%}} %>
						<li class="next">
						<%if(pageNo==totalPage){ %>
							Next &raquo;
						<%}else{ %>
							<a href="/single/fr/list.do?category=recom&page=<%=pageNo+1 %>">Next &raquo;</a>
						<%} %>
						</li>
					</ul>
				</div>
				<!-- ����¡ �� -->

				<!-- �˻��� ���� -->
				<div class="kboard-search">
					<form id="kboard-search-form-1" method="get" action="/single/fr/search.do">
						<select name="column">
							<option value="">��ü</option>
							<option value="title">����</option>
							<option value="content">����</option>
							<option value="writer">�ۼ���</option>
						</select> <input type="text" name="search" value="">
						<button type="submit" class="kboard-thumbnail-button-small">�˻�</button>
					</form>
				</div>
				<!-- �˻��� �� -->
				<!-- ��ư ���� -->
				<%if(loginUser!=null  && loginUser.getMe_black()<10){ %>
				<div class="kboard-control">
					<a href="/single/pages/free/freeview_write.jsp" class="kboard-thumbnail-button-small">�۾���</a>
				</div>
				<%} %>
				<!-- ��ư �� -->
				<!-- ########################################################################################## -->
			</div>
			<!-- ################################################################################################ -->
			<div class="clear"></div>
		</div>
	</div>
	<!-- Copyright -->
	<div class="wrapper row3">
		<jsp:include page="/pages/template/Footer.jsp" />
	</div>
</body>
</html>