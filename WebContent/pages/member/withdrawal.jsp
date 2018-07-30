<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>single ȸ��Ż��</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="/single/common/styles/member/info.css" rel="stylesheet">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="/single/common/styles/member/withdrawal.css" rel="stylesheet">
<script src="/single/common/scripts/member/member.js"></script>
</head>
<body>
<div class="wrapper row1">
	<jsp:include page="/pages/template/Topbar.jsp" />
</div>
<div class="wrapper row2">
	<div id="container" class="container bootstrap snippet">
		<%-- <jsp:include page="/pages/template/floatingmenu.jsp" /> --%>
		<div class="page-header">
				<h1>ȸ��Ż��</h1>
		</div>
		<form class="form-horizontal" action="/single/memberwithdrawal.do" method="get" name="myform">
			<div>
				<h2>Ż�� �ȳ�</h2>
				<h3>ȸ��Ż�� ��û�ϱ� ���� �ȳ� ������ �� Ȯ�����ּ���.</h3>
			</div>
			<div class="section_delete">
				<p> 1. ����ϰ� ��� ���̵�(���̵�)�� Ż���� ��� ���� �� ������ �Ұ����մϴ�.</p>
				<p> <em>Ż���� ���̵�� ���ΰ� Ÿ�� ��� ���� �� ������ �Ұ�</em>�Ͽ��� �����ϰ� �����Ͻñ� �ٶ��ϴ�.</p>
				<p> 2. Ż�� �Ŀ��� �Խ����� ���񽺿� ����� �Խù� �� ����� �״�� ���� �ֽ��ϴ�.</p>
				<p> ������ ���ϴ� �Խñ۹� ����� �ִٸ� <em>�ݵ�� Ż�� �� �����Ͻñ� �ٶ��ϴ�.</em></p>
				<p> Ż�� �Ŀ��� ȸ�������� �����Ǿ� ���� ���θ� Ȯ���� �� �ִ� ����� ����, �Խñ��� ���Ƿ� �����ص帱 �� �����ϴ�. </p>
				<input type="checkbox" id="dropoutAgree" name="dropoutAgree" >
				<label for="dropoutAgree"><strong>�ȳ� ������ ��� Ȯ���Ͽ�����, �̿� �����մϴ�.</strong></label>
			</div>
		<button class="btn btn-danger pull-right" type="submit" id="updatebtn"><i class="glyphicon glyphicon-remove">ȸ��Ż��</i></button>
		</form>
	</div>
</div>

<div class="wrapper row3">
	<jsp:include page="/pages/template/Footer.jsp" />
</div>
</body>
</html>