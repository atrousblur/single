<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="/single/common/styles/layout.css" type="text/css" media="all">
	<link rel="stylesheet" href="/single/common/styles/mediaqueries.css" type="text/css" media="all">
	<script src="/single/common/scripts/jquery.min.js"></script>
	<script src="/single/common/scripts/jquery-mobilemenu.min.js"></script>

	<link rel="stylesheet" href="/single/common/styles/vs/vsview.css">
</head>
<body>

	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>

	<div class="wrapper row2">
		
		<div class="container" style="width: 50%">
			<jsp:include page="/pages/template/floatingmenu.jsp" />

			<form>
				<div class="row">
					<h2 style="text-align: center">������ ���� 5�ÿ� ����ؼ� ���� 10�ÿ� ����ϴµ�
						��� �ٳ�ߵǳ���?</h2>
					<h4 style="text-align: center">(���̶� ȸ�� ���� 10�� ���� 3��)</h4>
					<div class="vl">
						<span class="vl-innertext">VS</span>
					</div>
					<div class="col" style="text-align: center">
						<button class="btnA">����ϱ�</button>
					</div>
					<div class="col" style="text-align: center">
						<button class="btnB">��� �ٴϱ�</button>
					</div>
				</div>
			</form>
			<br> <br>
			<div class="bar">
				<jsp:include page="/pages/vs/bar.jsp" />
			</div>

			<div class="bottom-container">
				<a href="/single/pages/vs/vspost.jsp">�۾���</a>
				<a href="/single/pages/vs/vscmt.jsp">��ۺ���</a>
			</div>


		</div>
	</div>

		
	<!-- Copyright -->
	<div class="wrapper row3">
		<jsp:include page="/pages/template/Footer.jsp" />
	</div>

</body>
</html>
