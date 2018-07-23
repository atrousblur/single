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
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="/single/common/styles/registration/bootstrap.min.css" rel="stylesheet">
<link href="/single/common/styles/member/info.css" rel="stylesheet">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
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
			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-info" id="panelinfo" >
						<div class="panel-heading" id="panelhead" >
							<h3 class="panel-title">ȸ�����̵�</h3>
						</div>
						<div class="panel-body" >
							<div class="row" >
								<div class="col-md-3" align="center">
									<img class="img-circle" id="userPic" alt="User Pic" src="/single/images/irene.png">
								</div>
								<div class=" col-md-9" >
									<table class="table table-user-information" >
										<tbody>
											<tr>
												<td>����</td>
												<td>���̸�</td>
											</tr>
											<tr>
												<td>�������</td>
												<td>2000/01/01</td>
											</tr>
											<tr>
												<td>��ȭ��ȣ</td>
												<td>010-0000-0000</td>
											</tr>
											<tr>
												<td>��󿬶�ó</td>
												<td>010-1111-1111</td>
											</tr>
											<tr>
												<td>��󿬶�����</td>
												<td>��or��</td>
											</tr>
											<tr>
												<td>Email</td>
												<td>info@support.com</td>
											</tr>
											<tr>
												<td>����Ʈ</td>
												<td>1000</td>
											</tr>
											<tr>
												<td>��������Ʈ</td>
												<td>2000</td>
											</tr>
											<tr>
												<td>ȸ�����</td>
												<td>����̸�</td>
											</tr>
											<tr>
												<td>�����Ҹ���</td>
												<td>�Ҹ��ӳ���</td>
											</tr>
											<tr>
												<td>����</td>
												<td>���⳪���ϰ�</td>
											</tr>
											<tr>
												<td>������Ʈ�Ű�Ƚ��</td>
												<td>10������Ʈ�Ǹ������Ʈ�����ƴ���</td>
											</tr>

										</tbody>
									</table>
								</div>
							</div>
						</div>
						<div class="panel-footer">
							<a href="/single/pages/member/infoupdate.jsp" class="btn btn-primary"><i class="glyphicon glyphicon-edit">ȸ����������</i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="wrapper row3">
		<jsp:include page="/pages/template/Footer.jsp" />
	</div>
</body>
</html>