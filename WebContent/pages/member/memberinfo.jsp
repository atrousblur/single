<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>registration</title>
<link href="/single/common/styles/registration/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>
	<div class="wrapper row2">
		<div id="container">
			<!-- �÷��ù�� -->
			<jsp:include page="/pages/template/floatingmenu.jsp" />
			<div class="page-header">
				<h1>ȸ������</h1>
			</div>
			<form class="form-horizontal" action="infoupdate.jsp">
				<!-- ȸ������ -->
				<div class="form-group">
					<label class="col-sm-3 control-label">�����ʻ���</label>
					<div class="col-sm-6">
						<img src="" id="img" style="width: 100px">
					</div>
				</div>

				<!-- ���̵� -->
				<div class="form-group">
					<label class="col-sm-3 control-label">���̵�</label>
					<div class="col-sm-6">ID</div>
				</div>

				<!-- �̸� -->
				<div class="form-group">
					<label class="col-sm-3 control-label">����</label>
					<div class="col-sm-6">����</div>
				</div>

				<!-- ������� -->
				<div class="form-group">
					<label class="col-sm-3 control-label">�������</label>
					<div class="col-sm-6">2000/01/01</div>
				</div>

				<!-- ���� -->
				<div class="form-group">
					<label class="col-md-3 control-label">����</label>
					<div class="col-md-6">����</div>
				</div>

				<!-- ��ȭ��ȣ -->
				<div class="form-group">
					<label class="col-sm-3 control-label">��ȭ��ȣ</label>
					<div class="col-sm-6">010-0000-000</div>
				</div>

				<!-- ��󿬶�ó -->
				<div class="form-group">
					<label class="col-sm-3 control-label">��󿬶�ó</label>
					<div class="col-sm-6">010-0000-000</div>
				</div>

				<!-- ��󿬶� ���� -->
				<div class="form-group">
					<label class="col-md-3 control-label">��󿬶�����</label>
					<div class="col-md-6">��󿬶�����</div>
				</div>

				<!-- �̸��� -->
				<div class="form-group">
					<label class="col-sm-3 control-label">�̸���</label>
					<div class="col-sm-6">�̸���</div>
				</div>

				<!-- �ּ� -->
				<div class="form-group">
					<label class="col-sm-3 control-label">�ּ�</label>
					<div class="col-sm-6">�ּ�</div>
				</div>

				<!-- ���� -->
				<div class="form-group">
					<label class="col-md-3 control-label">����</label>
					<div class="col-md-6"><label>���ɻ�</label>�����Ѱ͵�</div>
					<div class="col-md-6"><label>��ȣ�ο�</label>��ȣ�ο�</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-6 text-center">
						<button class="btn btn-primary" type="submit">����</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="wrapper row3">
		<jsp:include page="/pages/template/Footer.jsp" />
	</div>
</body>
</html>