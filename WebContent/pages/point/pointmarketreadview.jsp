<%@page import="point.dto.PointDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/single/common/styles/mate/model.css">
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>
	<!-- content -->
	<div class="wrapper row2">
		<div id="container">
			<jsp:include page="/pages/template/floatingmenu.jsp" />
			<!-- content body -->
			<% PointDTO dto = (PointDTO)request.getAttribute("dto"); %>
			<form action="" method="post">
				<table border="1">
					<tr>
						<td>����</td>
						<td><%=dto.getPo_title() %></td>
					</tr>
					<tr>
						<td>�Һ�����Ʈ</td>
						<td><%=dto.getPo_pt() %></td>
					</tr>
					<tr>
						<td>�̹���</td>
						<td><%=dto.getPo_img() %></td>
					</tr>
					<tr>
						<td>����</td>
						<td><%=dto.getPo_txt() %></td>
					</tr>
				</table>
				<button class="submitbtn">��ȯ�ϱ�</button>
				<input type="hidden" value="<%=dto.getPo_pt() %>" name="po_pt">
			</form>
			<!-- <footer class="more">
				<a href="/single/pages/point/pointmarketwriteview.jsp">��ȯ�ϱ�
					&raquo;</a>
			</footer> -->
			<!-- ####################################################################################################### -->
			<!-- ####################################################################################################### -->
			<!-- / content body -->
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