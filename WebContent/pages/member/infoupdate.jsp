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
				<h1>
					ȸ���������� <small>horizontal form</small>
				</h1>
			</div>
			<form class="form-horizontal">

				<!-- ȸ������ -->
				<div class="form-group">
					<label class="col-sm-3 control-label">�����ʻ���</label>
					<div class="col-sm-6">
						<img src="" id="img" style="width: 100px"> <input
							type="file" name="img"
							onchange="document.getElementById('img').src = window.URL.createObjectURL(this.files[0])"
							accept="image/*">
					</div>
				</div>

				<!-- ���̵� -->
				<div class="form-group">
					<label class="col-sm-3 control-label">���̵�</label>
					<div class="col-sm-6">
						<input class="form-control" name="id" id="id" type="text"
							placeholder="ID">
					</div>
				</div>

				<!-- ��й�ȣ -->
				<div class="form-group">
					<label class="col-sm-3 control-label">��й�ȣ</label>
					<div class="col-sm-6">
						<input class="form-control" name="pass" id="pass" type="password"
							placeholder="Password">
						<p class="help-block">����, Ư������ ���� 8�� �̻�</p>
					</div>
				</div>
				<!-- ��й�ȣȮ�� -->
				<div class="form-group">
					<label class="col-sm-3 control-label">��й�ȣ Ȯ��</label>
					<div class="col-sm-6">
						<input class="form-control" name="passChk" id="passChk"
							type="password" placeholder="Password Check">
						<p class="help-block">��й�ȣ�� �ѹ� �� �Է����ּ���.</p>
					</div>
				</div>

				<!-- �̸� -->
				<div class="form-group">
					<label class="col-sm-3 control-label">����</label>
					<div class="col-sm-6">
						<input class="form-control" name="name" id="name" type="text"
							placeholder="Name">
					</div>
				</div>

				<!-- ������� -->
				<div class="form-group">
					<label class="col-sm-3 control-label">�������</label>
					<div class="col-sm-6">
						<input class="form-control" name="birth" id="birth" type="text"
							placeholder="2000/01/01">
					</div>
				</div>

				<!-- ���� -->
				<div class="form-group">
					<label class="col-md-3 control-label">����</label>
					<div class="col-md-6">
						<div class="radio">
							<label> <input type="radio" name="gender" value="male" />����
							</label> <label> <input type="radio" name="gender" value="female" />����
							</label>
						</div>
					</div>
				</div>

				<!-- ��ȭ��ȣ -->
				<div class="form-group">
					<label class="col-sm-3 control-label">��ȭ��ȣ</label>
					<div class="col-sm-6">
						<input class="form-control" name="phone" id="phone" type="text"
							placeholder="010-0000-0000">
					</div>
				</div>

				<!-- ��󿬶�ó -->
				<div class="form-group">
					<label class="col-sm-3 control-label">��󿬶�ó</label>
					<div class="col-sm-6">
						<input class="form-control" name="telnum" id="telnum" type="text"
							placeholder="010-0000-0000">
					</div>
				</div>

				<!-- ��󿬶� ���� -->
				<div class="form-group">
					<label class="col-md-3 control-label">��󿬶�����</label>
					<div class="col-md-6">
						<div class="radio">
							<label> <input type="radio" name="telChk" value="T" />��
							</label> <label> <input type="radio" name="telChk" value="F" />��
							</label>
						</div>
					</div>
				</div>

				<!-- �̸��� -->
				<div class="form-group">
					<label class="col-sm-3 control-label">�̸���</label>
					<div class="col-sm-6">
						<input class="form-control" name="email" id="email" type="email"
							placeholder="�̸���">
					</div>
				</div>

				<!-- �ּ� -->
				<div class="form-group">
					<label class="col-sm-3 control-label">�ּ�</label>
					<div class="col-sm-6">
						<input class="form-control" name="addr" id="addr" type="text"
							placeholder="�ּ�">
					</div>
				</div>

				<!-- ���� -->
				<div class="form-group">
					<label class="col-md-3 control-label">����</label>
					<label class="col-md-1 control-label">���ɻ�</label>
					<div class="col-md-4">
						<div class="checkbox">
							<label> <input type="checkbox" name="interest" value="neighborhood"/>����</label> 
							<label> <input type="checkbox" name="interest" value="food"/>����</label> 
							<label> <input type="checkbox" name="interest" value="buy"/>��������</label>
							<label> <input type="checkbox" name="interest" value="event"/>����</label>
							<label> <input type="checkbox" name="interest" value="culture"/>��ȭ��Ȱ</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-3 control-label"></label>
					<label class="col-md-1 control-label" style="font-size: 9pt;">��ȣ�ο�</label>
					<div class="col-md-4">
						<div class="checkbox">
								<label><input type="checkbox" name="interest" value="small"/>�ұԸ�(4��̸�)</label>
							<label><input type="checkbox" name="interest" value="big"/>��Ը�(4���̻�)</label>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-6 text-center">
						<button class="btn btn-primary" type="submit">Ȯ��</button>
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