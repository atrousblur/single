<%@page import="member.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/single/common/styles/template/floatingmenu.css" type="text/css" media="all">
</head>
<body>
<% MemberDTO loginUser = (MemberDTO)session.getAttribute("loginUser"); %>
	<div id="floatdiv">
		<div>
			<ul>
				<li><img id="profile" class="img-circle"
					src="/single/upload/<%=loginUser.getMe_img() %>" /></li>
					<li><%=loginUser.getMe_id()%>��</li>
			</ul>
			<ul>
				<li><input id="floatingbtn1" type="button" value="ȸ������"
					class="btn" onclick="location.href='/single/memberinfo.do?action=READ'">
					<input id="floatingbtn2" type="button" value="ģ������" class="btn"
					onclick="location.href='/single/friends/list.do'">
					<%if(loginUser.getMe_id().equals("single")){ %>
					<input id="floatingbtn2" type="button" value="������Ʈ" class="btn"
					onclick="location.href='/single/black/blacklist.do'">
					<%} %>
				</li>
			</ul>
			<ul>
				<li>��������Ʈ: <%=loginUser.getMe_points()%></li>
				<li>��������Ʈ: <%=loginUser.getMe_point() %></li>
				<li>���:	<%=loginUser.getMe_grade() %></li>
			</ul>

			<!-- �Ҹ��� -->
			<ul class="nav" id="sgroup">
				<li><a href="#"><i class="glyphicon glyphicon-ok"></i>����1��</a></li>
				<li><a href="#"><i class="glyphicon glyphicon-ok"></i>���ĳ���</a></li>
				<li><a href="#"><i class="glyphicon glyphicon-ok"></i>���ĳ���</a></li>
			</ul>

			<ul>
				<li>
				<%if(loginUser.getMe_points()<100){ %>
				<img src="/single/images/01.jpg" />
				<%}else if(loginUser.getMe_points()<500){ %>
				<img src="/single/images/02.jpg" />
				<%}else{ %>
				<img src="/single/images/03.jpg" />
				<%}%>				
			</ul>

		</div>
	</div>
</body>
</html>