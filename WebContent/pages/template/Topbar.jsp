<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	<title>singlesingle</title>
	<meta charset="EUC-KR">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="/single/common/styles/layout.css" type="text/css" media="all">
	<link rel="stylesheet" href="/single/common/styles/mediaqueries.css" type="text/css" media="all">
	<link rel="stylesheet" href="/single/common/styles/template/topbar.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="/single/common/scripts/jquery.min.js"></script>
	<script src="/single/common/scripts/jquery-mobilemenu.min.js"></script>
</head>
<body>
<div id="logoheader" style="height:20px">
<img src="/single/images/logo.png"/ id="logo"/>
</div>
<div id="loginheader">
	<span>ID</span> <span><input name="id" placeholder="ID"  type="text"></span>
	<span>PW</span> <span><input name="pass" placeholder="Password"  type="text"></span>
	<a href="#">|Login|</a>
	<a href="/single/pages/registration/registration.jsp">|Join|</a>
</div>
    <header id="header">
	    <div id="hgroup">
	      <h1><a href="/single/pages/mainview.jsp">Singlesingle</a></h1>
	    </div>
		<nav id="topnav">
	      <ul class="topnav clear">
	        <li class="active"><a href="/single/pages/mainview.jsp">Home</a></li>
	        <li><a href="/single/pages/intro/introview.jsp">�Ұ�</a></li>
	        <li><a href="/single/pages/mate/mate_mainview.jsp">����Ʈ</a></li>
	        <li><a href="/single/pages/local/localview.jsp">�������</a></li>
	        <li><a href="/single/pages/free/freeview.jsp">�����Խ���</a>
	          <ul>
	            <li><a href="/single/pages/free/freeview_free.jsp">����</a></li>
	            <li><a href="/single/pages/free/freeview_tip.jsp">����</a></li>
	            <li><a href="/single/pages/free/freeview_review.jsp">�ı�</a></li>
	            <li><a href="/single/pages/free/freeview_recom.jsp">��õ</a></li>
	          </ul>
	        </li>
	        <li><a href="/single/pages/vs/vsTxt.jsp">vs�Խ���</a></li>
	        <li><a href="/single/pages/point/pointmarketview.jsp">����Ʈ����</a></li>
	      </ul>
	    </nav>
      </header>
</body>
</html>