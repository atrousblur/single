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
<%MemberDTO loginUser = (MemberDTO)session.getAttribute("loginUser"); %>
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
			<form action="/single/po/insert.do" method="post" enctype="multipart/form-data">
				<table border="1">
					<tr>
						<td>����</td>
						<td><input type="text" name="po_title" size="40" value="" required>
						</td>
					</tr>
					<tr>
						<td>�ʿ�����Ʈ</td>
						<td><input type="text" name="po_pt" size="10" value="" required>
						</td>
					</tr>
					<tr>
						<td>����</td>
						<td><input type="text" name="po_count" size="10" value="" required>
						</td>
					</tr>
					<tr>
						<td>��������</td>
						<td>����<input type="radio" name="po_state" value="1" checked/>
						�����<input type="radio" name="po_state" value="2" /></td>
					</tr>
					<tr>
						<td>�̹���</td>
						<td><img src="" id="po_img" style="width: 245px; height: 150px; border-style: solid;"> 
						<br/>
						<input type="file" name="po_img" onchange="document.getElementById('po_img').src = window.URL.createObjectURL(this.files[0])"
							accept="upload/*"></td>
					</tr>
					<tr>
						<td>����</td>
						<td><textarea name="po_txt" cols="100" rows="8" required></textarea></td>
					</tr>
				</table>
				<footer class="more">
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