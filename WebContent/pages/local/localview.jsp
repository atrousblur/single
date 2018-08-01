<%@page import="member.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- hs �߰� -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
<link rel="stylesheet" href="/single/common/styles/local/select.css" type="text/css" media="all">
<!-- --------------- -->
<script src="/single/common/scripts/jquery.min.js"></script>
</head>
<body>
<%MemberDTO loginUser = (MemberDTO)session.getAttribute("loginUser"); %>
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>
	<!-- content -->
	<div class="wrapper row2">
		<div id="container">
			<%if(loginUser!=null){ %>
			<jsp:include page="/pages/template/floatingmenu.jsp" />
			<%} %>
			<!-- content body -->

			<section id="gallery" class="clear">
				<figure>
					<!-- ���� ���� select box ���� -->

					<div class="styled-select">
						<select>
							<option value="" selected>��������</option>
							<option value="����">����</option>
							<option value="���">���</option>
							<option value="��õ">��õ</option>
							<option value="�λ�">�λ�</option>
							<option value="����">����</option>
							<option value="����">����</option>
							<option value="�������������泲">�������������泲</option>
							<option value="���">���</option>
							<option value="���֡�����">���֡�����</option>
							<option value="����">����</option>
							<option value="��ꡤ�泲">��ꡤ�泲</option>
							<option value="�뱸�����">�뱸�����</option>
						</select> <span class="fa fa-sort-desc"></span>
					</div>

					<!-- ���� ���� select box �� -->
					<br />
					<ul>
						<li><a
							href="http://korean.visitkorea.or.kr/kor/bz15/where/festival/festival.jsp?cid=1291408#none"><img
								src="http://tong.visitkorea.or.kr/cms/resource/58/980658_image2_1.jpg"
								alt="�޺�����"></a> â���� �޺�����<br />2018.04.05(��)~2018.10.28(��)</li>
						<li><a
							href="http://korean.visitkorea.or.kr/kor/bz15/where/festival/festival.jsp?cid=2496910"><img
								src="http://tong.visitkorea.or.kr/cms/resource/60/2546960_image2_1.jpg"
								alt="����� �߽���"></a>1890 �����߽��� 2018<br />
							2018.05.05(��)~2018.10.27(��)</li>
						<li><a
							href="http://korean.visitkorea.or.kr/kor/bz15/where/festival/festival.jsp?cid=1291408#none"><img
								src="http://tong.visitkorea.or.kr/cms/resource/58/980658_image2_1.jpg"
								alt="�޺�����"></a> â���� �޺�����<br />2018.04.05(��)~2018.10.28(��)</li>
						<br />
						<li><a
							href="http://korean.visitkorea.or.kr/kor/bz15/where/festival/festival.jsp?cid=1291408#none"><img
								src="http://tong.visitkorea.or.kr/cms/resource/58/980658_image2_1.jpg"
								alt="�޺�����"></a> â���� �޺�����<br />2018.04.05(��)~2018.10.28(��)</li>
						<li><a
							href="http://korean.visitkorea.or.kr/kor/bz15/where/festival/festival.jsp?cid=2496910"><img
								src="http://tong.visitkorea.or.kr/cms/resource/60/2546960_image2_1.jpg"
								alt="����� �߽���"></a>1890 �����߽��� 2018<br />
							2018.05.05(��)~2018.10.27(��)</li>
						<li><a
							href="http://korean.visitkorea.or.kr/kor/bz15/where/festival/festival.jsp?cid=1291408#none"><img
								src="http://tong.visitkorea.or.kr/cms/resource/58/980658_image2_1.jpg"
								alt="�޺�����"></a> â���� �޺�����<br />2018.04.05(��)~2018.10.28(��)</li>
						<br />
						<li><a
							href="http://korean.visitkorea.or.kr/kor/bz15/where/festival/festival.jsp?cid=1291408#none"><img
								src="http://tong.visitkorea.or.kr/cms/resource/58/980658_image2_1.jpg"
								alt="�޺�����"></a> â���� �޺�����<br />2018.04.05(��)~2018.10.28(��)</li>
						<li><a
							href="http://korean.visitkorea.or.kr/kor/bz15/where/festival/festival.jsp?cid=2496910"><img
								src="http://tong.visitkorea.or.kr/cms/resource/60/2546960_image2_1.jpg"
								alt="����� �߽���"></a>1890 �����߽��� 2018<br />
							2018.05.05(��)~2018.10.27(��)</li>
						<li><a
							href="http://korean.visitkorea.or.kr/kor/bz15/where/festival/festival.jsp?cid=1291408#none"><img
								src="http://tong.visitkorea.or.kr/cms/resource/58/980658_image2_1.jpg"
								alt="�޺�����"></a> â���� �޺�����<br />2018.04.05(��)~2018.10.28(��)</li>
						<br />
					</ul>
				</figure>
			</section>
			<!-- ####################################################################################################### -->
			<!-- ####################################################################################################### -->
			<div class="pagination">
				<ul>
					<li class="prev"><a href="#">&laquo; Previous</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li class="splitter"><strong>&hellip;</strong></li>
					<li><a href="#">6</a></li>
					<li class="current"><strong>7</strong></li>
					<li><a href="#">8</a></li>
					<li class="splitter"><strong>&hellip;</strong></li>
					<li><a href="#">14</a></li>
					<li><a href="#">15</a></li>
					<li class="next"><a href="#">Next &raquo;</a></li>
				</ul>
			</div>


			<!-- / content body -->
			<!-- ################################################################################################ -->
			<div class="clear"></div>
		</div>
	</div>
	<!-- Copyright -->
	<div class="wrapper row3">
		<jsp:include page="/pages/template/Footer.jsp" />
	</div>
</body>
</html>