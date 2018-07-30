<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/single/common/styles/layout.css"
	type="text/css" media="all">
<link rel="stylesheet" href="/single/common/styles/mediaqueries.css"
	type="text/css" media="all">

<!-- hs �߰� -->

<link rel='stylesheet' id='kboard-skin-thumbnail-css'
	href='/single/common/styles/free/thumbnail.css?ver=5.3.9' type='text/css'
	media='all' />

<!-- -------------------------------- -->



<script src="/single/common/scripts/jquery.min.js"></script>
<script src="/single/common/scripts/jquery-mobilemenu.min.js"></script>
</head>
<body>
	<!-- content -->
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
	</div>
	<div class="wrapper row2">
		<div id="container">
			<!-- �÷��ù�� -->
			<jsp:include page="/pages/template/floatingmenu.jsp" />

			<div id="kboard-thumbnail-list">

				<!-- ī�װ� ���� -->
				<div class="kboard-category category-pc">
					<ul class="kboard-category-list">
						<li><a href="/single/fr/list.do?action=all">��ü</a></li>
						<li><a href="/single/fr/list.do?action=free">����</a></li>
						<li><a href="/single/fr/list.do?action=tip">����</a></li>
						<li class="kboard-category-selected"><a
							href="/single/fr/list.do?action=review">�ı�</a></li>
						<li><a href="/single/fr/list.do?action=recom">��õ</a></li>
					</ul>
				</div>
				<!-- ī�װ� �� -->
				<!-- ����Ʈ ���� -->
				<div class="kboard-list">
					<table>
						<thead>
							<tr>
								<td class="kboard-list-uid">��ȣ</td>
								<td class="kboard-list-title">����</td>
								<td class="kboard-list-user">�ۼ���</td>
								<td class="kboard-list-date">�ۼ���</td>
								<td class="kboard-list-view">��ȸ</td>
							</tr>
						</thead>
						<tbody>
							<tr class="kboard-list-notice">
								<td class="kboard-list-uid">��������</td>

								<td class="kboard-list-title"><a href="freeview_view.jsp">
										<div class="kboard-thumbnail-cut-strings">
											���������� �о��ּ���. <span class="kboard-comments-count">(1)</span>
										</div>
								</a>
									<div class="kboard-mobile-contents">
										<span class="contents-item kboard-user">admin</span> <span
											class="contents-separator kboard-date">|</span> <span
											class="contents-item kboard-date">2018.07.21</span> <span
											class="contents-separator kboard-view">|</span> <span
											class="contents-item kboard-view">��ȸ 26</span>
									</div></td>
								<td class="kboard-list-user">admin</td>
								<td class="kboard-list-date">2018.07.21</td>
								<td class="kboard-list-view">26</td>
							</tr>

							<tr class="">
								<td class="kboard-list-uid">1</td>

								<td class="kboard-list-title"><a href="#">
										<div class="kboard-thumbnail-cut-strings">
											�ȳ��ϼ���. <span class="kboard-comments-count"></span>
										</div>
								</a>
									<div class="kboard-mobile-contents">
										<span class="contents-item kboard-user">blur</span> <span
											class="contents-separator kboard-date">|</span> <span
											class="contents-item kboard-date">2018.07.21</span> <span
											class="contents-separator kboard-view">|</span> <span
											class="contents-item kboard-view">��ȸ 7</span>
									</div></td>
								<td class="kboard-list-user">blur</td>
								<td class="kboard-list-date">2018.07.21</td>
								<td class="kboard-list-view">7</td>
							</tr>

						</tbody>
					</table>
				</div>
				<!-- ����Ʈ �� -->

				<!-- ����¡ ���� -->
				<div class="kboard-pagination">
					<ul class="kboard-pagination-pages">
						<li class="active"><a href="#" onclick="return false">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">6</a></li>
						<li><a href="#">7</a></li>
						<li><a href="#">8</a></li>
						<li><a href="#">9</a></li>
						<li><a href="#">10</a></li>
						<li class="next-page"><a href="#">��</a></li>
						<li class="last-page"><a href="#">������</a></li>
					</ul>
				</div>
				<!-- ����¡ �� -->

				<!-- �˻��� ���� -->
				<div class="kboard-search">
					<form id="kboard-search-form-1" method="get" action="freeview.jsp">
						<input type="hidden" name="mod" value="list"><input
							type="hidden" name="pageid" value="1"> <select
							name="target">
							<option value="">��ü</option>
							<option value="title">����</option>
							<option value="content">����</option>
							<option value="member_display">�ۼ���</option>
						</select> <input type="text" name="keyword" value="">
						<button type="submit" class="kboard-thumbnail-button-small">�˻�</button>
					</form>
				</div>
				<!-- �˻��� �� -->

				<!-- ��ư ���� -->
				<div class="kboard-control">
					<a href="freeview_write.jsp" class="kboard-thumbnail-button-small">�۾���</a>
				</div>
				<!-- ��ư �� -->
				<!-- ########################################################################################## -->
			</div>
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