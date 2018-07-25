<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>registration</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="/single/common/styles/registration/registration.css" rel="stylesheet">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="/single/common/scripts/member/register.js"></script>
</head>
<body>
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>
	<div class="wrapper row2">
		<div id="container">
			<div class="page-header">
				<h1>
					ȸ������ <small>horizontal form</small>
				</h1>
			</div>
			<form class="form-horizontal" action="/single/memberinsert.do" method="POST" name="myform">
				<!-- ȸ������ -->
				<div class="form-group">
					<label class="col-sm-3 control-label">�����ʻ���</label>
					<div class="col-sm-9">
						<img class="img-circle" src="/single/images/basicUser.png" id="me_img"> <input
							type="file" name="me_img"
							onchange="document.getElementById('me_img').src = window.URL.createObjectURL(this.files[0])"
							accept="image/*">
					</div>
				</div>

				<!-- ���̵� -->
				<div class="form-group">
					<label class="col-sm-3 control-label">���̵�</label>
					<span class="col-sm-4">
						<input class="form-control" name="me_id" id="me_id" type="text"
							placeholder="ID">
					</span>
					<span class="col-sm-2">
						<button class="btn" type="button">�ߺ�Ȯ��</button>
					</span>
				</div>

				<!-- ��й�ȣ -->
				<div class="form-group">
					<label class="col-sm-3 control-label">��й�ȣ</label>
					<div class="col-sm-6">
						<input class="form-control" name="me_pwd" id="me_pwd" type="password"
							placeholder="Password">
						<p class="help-block">����, Ư������ ���� 8�� �̻�</p>
					</div>
				</div>
				<!-- ��й�ȣȮ�� -->
				<div class="form-group">
					<label class="col-sm-3 control-label">��й�ȣ Ȯ��</label>
					<div class="col-sm-6">
						<input class="form-control" name="pwdChk" id="pwdChk"
							type="password" placeholder="Password Check">
						<p class="help-block">��й�ȣ�� �ѹ� �� �Է����ּ���.</p>
					</div>
				</div>

				<!-- �̸� -->
				<div class="form-group">
					<label class="col-sm-3 control-label">����</label>
					<div class="col-sm-6">
						<input class="form-control" name="me_name" id="me_name" type="text"
							placeholder="Name">
					</div>
				</div>

				<!-- ������� -->
				<div class="form-group">
					<label class="col-sm-3 control-label">�������</label>
					<div class="col-sm-6">
						<p><input class="form-control" type="text" id="datepicker" name="me_birth" ></p>
					</div>
				</div>

				<!-- ���� -->
				<div class="form-group">
					<label class="col-md-3 control-label">����</label>
					<div class="col-md-6">
						<div class="radio">
							<label> <input type="radio" name="me_gender" value="male" checked/>����</label> 
							<label> <input type="radio" name="me_gender" value="female" />����
							</label>
						</div>
					</div>
				</div>

				<!-- ��ȭ��ȣ -->
				<div class="form-group">
					<label class="col-sm-3 control-label">��ȭ��ȣ</label>
					<div class="col-sm-6">
						<input class="form-control" name="me_phone" id="me_phone" type="text"
							placeholder="010-0000-0000">
					</div>
				</div>

				<!-- ��󿬶�ó -->
				<div class="form-group">
					<label class="col-sm-3 control-label">��󿬶�ó</label>
					<div class="col-sm-6">
						<input class="form-control" name="me_telnum" id="me_telnum" type="text"
							placeholder="010-0000-0000">
					</div>
				</div>

				<!-- ��󿬶� ���� -->
				<div class="form-group">
					<label class="col-md-3 control-label">��󿬶�����</label>
					<div class="col-md-6">
						<div class="radio">
							<label> <input type="radio" name="me_telchk" value="T" checked/>��
							</label> <label> <input type="radio" name="me_telchk" value="F" />��
							</label>
						</div>
					</div>
				</div>

				<!-- �̸��� -->
				<div class="form-group">
					<label class="col-sm-3 control-label">�̸���</label>
					<div class="col-sm-6">
						<input class="form-control" name="me_email" id="me_email" type="email"
							placeholder="�̸���">
					</div>
				</div>

				<!-- �ּ� -->
				<div class="form-group">
					<label class="col-sm-3 control-label">�ּ�</label>
					<div class="col-sm-6">
						<input class="form-control" name="me_addr" id="me_addr" type="text"
							placeholder="�ּ�">
					</div>
				</div>

				<!-- ���� -->
				<div class="form-group">
					<label class="col-md-3 control-label">����</label>
					<label class="col-md-1 control-label">���ɻ�</label>
					<div class="col-md-4">
						<div class="checkbox">
							<label> <input type="checkbox" name="me_character" value="neighborhood"/>����</label> 
							<label> <input type="checkbox" name="me_character" value="food"/>����</label> 
							<label> <input type="checkbox" name="me_character" value="buy"/>��������</label>
							<label> <input type="checkbox" name="me_character" value="event"/>����</label>
							<label> <input type="checkbox" name="me_character" value="movie"/>��ȭ</label>
							<label> <input type="checkbox" name="me_character" value="musical"/>������</label>
							<label> <input type="checkbox" name="me_character" value="exhibition"/>����ȸ</label>
						</div>
					</div>
				</div>
				
				<!-- <div class="form-group">
					<label class="col-sm-3 control-label">�޴�����ȣ</label>
					<div class="col-sm-6">
						<div class="input-group">
							<input type="tel" class="form-control" id="inputNumber"
								placeholder="- ���� �Է��� �ּ���" /> <span class="input-group-btn">
								<button class="btn btn-success">
									������ȣ ����<i class="fa fa-mail-forward spaceLeft"></i>
								</button>
							</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label">������ȣ Ȯ��</label>
					<div class="col-sm-6">
						<div class="input-group">
							<input class="form-control" id="inputNumberCheck" type="text"
								placeholder="������ȣ"> <span class="input-group-btn">
								<button class="btn btn-success" type="button">
									������ȣ Ȯ��<i class="fa fa-edit spaceLeft"></i>
								</button>
							</span>
						</div>
						<p class="help-block">���۵� ������ȣ�� �Է����ּ���.</p>
					</div>
				</div> -->

				<div class="form-group">
					<div class="col-sm-12 text-center">
						<button class="btn btn-primary" type="submit">ȸ������</button>
						<button class="btn btn-danger" type="reset">�������</button>
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