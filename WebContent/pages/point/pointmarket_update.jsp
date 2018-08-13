<%@page import="point.dto.PointDTO"%>
<%@page import="member.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����Ʈ����</title>
<link rel="shortcut icon" href="/single/images/favicon.ico">
</head>
<body>
<%
	MemberDTO loginUser = (MemberDTO)session.getAttribute("loginUser"); 
	PointDTO prd = (PointDTO)request.getAttribute("prd");
%>
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>
	<!-- content -->
	<div class="wrapper row2">
		<div id="container">
			<%
				if (loginUser != null) {
			%>
			<jsp:include page="/pages/template/floatingmenu.jsp" />
			<%
				}
			%>
			<!-- content body -->
			<form action="/single/po/update.do?action=UPDATE" method="POST" enctype="multipart/form-data">
				<table border="1">
					<tr>
						<td>����</td>
						<td><input type="text" name="po_title" size="40" value="<%=prd.getPo_title()%>">
						</td>
					</tr>
					<tr>
						<td>�ʿ�����Ʈ</td>
						<td><input type="text" name="po_pt" size="10" value="<%=prd.getPo_pt()%>">
						</td>
					</tr>
					<tr>
						<td>����</td>
						<td><input type="text" name="po_count" size="10" value="<%=prd.getPo_count()%>">
						</td>
					</tr>
					<tr>
						<td>��������</td>
						<td>����<input type="radio" name="po_state" value="1" <%if(prd.getPo_state()==1){%>checked<%} %>/>
						�����<input type="radio" name="po_state" value="2"  <%if(prd.getPo_state()==2){%>checked<%} %>/></td>
					</tr>
					<tr>
						<td>�̹���</td>
						<td><img src="/single/upload/<%=prd.getPo_img() %>" id="po_img" style="width: 245px; height: 150px;"> 
						<br/>
						<input type="file" name="po_img" onchange="document.getElementById('po_img').src = window.URL.createObjectURL(this.files[0])"
							accept="upload/*"></td>
					</tr>
					<tr>
						<td>����</td>
						<td><textarea name="po_txt" cols="100" rows="8"><%=prd.getPo_txt() %></textarea></td>
					</tr>
				</table>
				<footer class="more">
					<input type="hidden" name="po_no" value="<%=prd.getPo_no()%>" />
					<a href="/single/po/list.do">���</a>
				</footer>
					<input class="btn btn-danger" type="submit" value="���">
			</form>
			<!-- / content body -->
			<div class="clear"></div>
		</div>
	</div>
	<!-- Copyright -->
	<div class="wrapper row3">
		<jsp:include page="/pages/template/Footer.jsp" />
	</div>
</body>
</html>