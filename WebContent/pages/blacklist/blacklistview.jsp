<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset=EUC-KR" >
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>

	  <h1>������Ʈ���</h1>
	  <p align="center">BlackList</p>
	  <ul class="w3-ul w3-card-4">
	  
	  
	    <li class="w3-bar">
	      <span onclick="this.parentElement.style.display='none'" class="w3-bar-item w3-button w3-white w3-xlarge w3-right">�� ������Ʈ ����</span>
	      <img src="../../images/irene.png" class="w3-bar-item w3-circle w3-hide-small" style="width:85px">
	      <div class="w3-bar-item">
	        <span class="w3-large">������</span> <br>
	        <span>ID : Joo</span> <br>
	        <span>�Ű� Ƚ�� : 2ȸ</span> <br>
	      	<a href="#" data-toggle="modal" data-target="#BckLstDetailModal">������</a>  
	      </div>
	    </li>
	   
	    <li class="w3-bar">
	      <span onclick="this.parentElement.style.display='none'" class="w3-bar-item w3-button w3-white w3-xlarge w3-right">�� ������Ʈ ����</span>
	      <img src="../../images/jun.png" class="w3-bar-item w3-circle w3-hide-small" style="width:85px">
	      <div class="w3-bar-item">
	        <span class="w3-large">�ڼ���</span><br>
	        <span>ID : Jun</span> <br>
	        <span>�Ű� Ƚ�� : 13ȸ</span> <br>
			<a href="#" data-toggle="modal" data-target="#BckLstDetailModal">������</a>  	        
	      </div>
	    </li>
	
	    <li class="w3-bar">
	      <span onclick="this.parentElement.style.display='none'" class="w3-bar-item w3-button w3-white w3-xlarge w3-right">�� ������Ʈ ����</span>
	      <img src="../../images/park.png" class="w3-bar-item w3-circle w3-hide-small" style="width:85px">
	      <div class="w3-bar-item">
	        <span class="w3-large">������</span><br>
	        <span>ID : Sikk</span> <br>
	        <span>�Ű� Ƚ�� : 5ȸ</span> <br>
			<a href="#" data-toggle="modal" data-target="#BckLstDetailModal">������</a>  
	      </div>
	    </li>
	  </ul>
	</div>



	<div class="modal fade" id="BckLstDetailModal" tabindex="-1" role="dialog" aria-labelledby="helpModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times; </span><span class="sr-only">
							Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">ȸ�� �� ����</h4>
				</div>
				
				<div class="modal-body">
					<div class="input-group">
						<span class="input-group-addon">ID</span> 
						<input type="text" class="form-control" placeholder="Joo" />
					</div>
					<p></p>
					<div class="input-group">
						<span class="input-group-addon">�̸�</span>
						<input type="text" class="form-control" placeholder="������" />
					</div>
					<p></p>
					<div class="input-group">
						<span class="input-group-addon">�Ű�Ƚ��</span> 
						<input type="text" class="form-control" placeholder="2ȸ" />
					</div>
					<p></p>
					<div class="input-group">
						<span class="input-group-addon">�������</span> 
						<input type="text" class="form-control" placeholder="950112" />
					</div>
					<p></p>
					<div class="input-group">
						<span class="input-group-addon">��ȭ��ȣ</span>
						<input type="text" class="form-control" placeholder="010-5654-3212" />
					</div>
					<p></p>
					<div class="input-group">
						<span class="input-group-addon">��ȣMATE</span>
						<input type="text" class="form-control" placeholder="��ȭ" />
					</div>
				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-default">����</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">�ݱ�</button>
				</div>
				
			</div>
		</div>
	</div>
		
</body>
</html>