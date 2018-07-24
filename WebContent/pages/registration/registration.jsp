<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="/single/common/styles/registration/registration.css" rel="stylesheet">
<title>registration</title>
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
			<form class="form-horizontal">

				<!-- ȸ������ -->
				<div class="form-group">
					<label class="col-sm-3 control-label">�����ʻ���</label>
					<div class="col-sm-9">
						<img class="img-circle" src="" id="userImg"> <input
							type="file" name="userImg"
							onchange="document.getElementById('userImg').src = window.URL.createObjectURL(this.files[0])"
							accept="image/*">
					</div>
				</div>

				<!-- ���̵� -->
				<div class="form-group">
					<label class="col-sm-3 control-label">���̵�</label>
					<span class="col-sm-4">
						<input class="form-control" name="id" id="id" type="text"
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
							<label> <input type="checkbox" name="interest" value="movie"/>��ȭ</label>
							<label> <input type="checkbox" name="interest" value="musical"/>������</label>
							<label> <input type="checkbox" name="interest" value="exhibition "/>����ȸ</label>
						</div>
					</div>
				</div>
				
				<div class="form-group">
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
				</div>

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