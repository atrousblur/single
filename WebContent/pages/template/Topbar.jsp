<%@page import="member.dto.MemberDTO"%>
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
<link rel="stylesheet" href="/single/common/styles/template/topbar.css">
<script type="text/javascript">
function loginCheck(){
    if(!document.myform.id.value){
        alert("���̵� �Է����ּ���.");
       	return false;
    }else if(!document.myform.pass.value){
    	alert("��й�ȣ�� �Է����ּ���.");
       	return false;
    }
}
</script>
</head>
<body id="topbody">
	<%
		MemberDTO loginUser = (MemberDTO) session.getAttribute("loginUser");
	%>
	<div id="logoheader">
		<img src="/single/images/logo.png" id="logo" />
	</div>
	<form name="login" action="/single/login.do" method="post" onsubmit="return loginCheck()">
		<div id="loginheader">
			<%
				if (loginUser == null) {
			%>
			<span class="idpw">ID</span>
			<span><input class="idpwtext" name="id" id="id" type="text"></span> 
			<span class="idpw">PW</span> 
			<span><input class="idpwtext" name="pass" id="pass" type="password" /></span>
			<button class="btn" type="submit" id="loginbtn">|login|</button>
			<button class="btn" type="button" id="joinbtn" onclick="location.href='/single/pages/registration/registration.jsp'">|Join|</button>
			<%
				} else {
			%>
			<button class="btn" type="button" id="logoutbtn" onclick="location.href='/single/logout.do'">|Logout|</button>
			<%
				}
			%>
		</div>
	</form>
	<br/>
	<header id="header">
		<div id="hgroup">
			<a href="/single/pages/mainview.jsp" id="singleHeader">Singlesingle</a>
		</div>
		<nav id="topnav">
			<ul class="topnav clear">
				<li class="active"><a href="/single/pages/mainview.jsp">Home</a></li>
				<li><a href="/single/pages/mate/mate_mainview.jsp">����Ʈ</a></li>
				<li><a href="/single/pages/local/localview.jsp">�������</a></li>
				<li><a href="/single/pages/free/freeview.jsp">�����Խ���</a>
					<ul>
						<li><a href="/single/pages/free/freeview_free.jsp">����</a></li>
						<li><a href="/single/pages/free/freeview_tip.jsp">����</a></li>
						<li><a href="/single/pages/free/freeview_review.jsp">�ı�</a></li>
						<li><a href="/single/pages/free/freeview_recom.jsp">��õ</a></li>
					</ul></li>
				<li><a href="/single/vs/vs_read.do">vs�Խ���</a></li>
				<li><a href="/single/pages/point/pointmarketview.jsp">����Ʈ����</a></li>
			</ul>
		</nav>
	</header>
</body>
</html>