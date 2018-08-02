<%@page import="vs.dto.VsDTO"%>
<%@page import="point.dto.PointDTO"%>
<%@page import="mate.dto.MateDTO"%>
<%@page import="free.dto.FreeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="main.controller.MainBoard"%>
<%@page import="member.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>singlesingle</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="EUC-KR">
<link rel="stylesheet" href="/single/common/styles/main/main.css" media="screen">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%MemberDTO loginUser = (MemberDTO)session.getAttribute("loginUser"); %>
	<!-- top -->
	<div class="wrapper row1">
		<jsp:include page="/pages/template/Topbar.jsp" />
		<section id="shout" class="clear">
			<figure>
				<figcaption>
					<h1>Single...</h1>
					<p>����Ʈ....��¼����¼��</p>
				</figcaption>
				<div>
					<img src="/single/images/demo/410x440.gif" alt="">
				</div>
			</figure>
		</section>
	</div>

	<!-- content -->
	<div class="wrapper row2">
		<div id="container">
			<!-- �÷��ù�� -->
			<%if(loginUser!=null){ %>
			<jsp:include page="/pages/template/floatingmenu.jsp" />
			<%} %>
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Wrapper for slides -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="/single/images/demo/410x440.gif" alt="New York"
							width="1200" height="700">
						<div class="carousel-caption">
							<h3>New York</h3>
							<p>The atmosphere in New York is lorem ipsum.</p>
						</div>
					</div>
					<div class="item">
						<img src="/single/images/demo/410x440.gif" alt="Chicago"
							width="1200" height="700">
						<div class="carousel-caption">
							<h3>Chicago</h3>
							<p>Thank you, Chicago - A night we won't forget.</p>
						</div>
					</div>
					<div class="item">
						<img src="/single/images/demo/410x440.gif" alt="Los Angeles"
							width="1200" height="700">
						<div class="carousel-caption">
							<h3>LA</h3>
							<p>Even though the traffic was a mess, we had the best time
								playing at Venice Beach!</p>
						</div>
					</div>
				</div>
				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>

			<% 
				MainBoard board = new MainBoard();
				ArrayList<MateDTO> matelist = board.MateList();
				ArrayList<FreeDTO> freelist = board.FreeList();	
				ArrayList<VsDTO> vslist = board.VsList();
				ArrayList<PointDTO> pointlist = board.PointList();
				int matesize = matelist.size();
				int freesize = freelist.size();
				int vssize = vslist.size();
				int pointsize = pointlist.size();
			%>
			<!-- main content -->
			<hr />
			<div>
				<div class="col-sm-6">
					<div class="panel panel-primary" style="border-color: #edeef1;">
						<div class="panel-footer">����Ʈ</div>
						<div style="padding-top: 20px; padding-left: 10px">
						<%if(matesize==0) {%>
							<div>��ϵ� �Խù��� �������� �ʽ��ϴ�.</div>
						<%}else{ 
							if(matesize<5){
								for(int i=0; i<matesize; i++){
									MateDTO mate = matelist.get(i); %>
									<div><a>[��ü]<%=mate.getMt_title() %></a><%=mate.getMt_date() %></div>
						<%		}	
							}
						  } %>
						</div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="panel panel-primary" style="border-color: #edeef1;">
						<div class="panel-footer">�����Խ���</div>
						<div style="padding-top: 20px; padding-left: 10px">
						<%if(freesize==0) {%>
							<div>��ϵ� �Խù��� �������� �ʽ��ϴ�.</div>
							<%}else{ 
							if(freesize<5){
								for(int i=0; i<freesize; i++){
									FreeDTO free = freelist.get(i); %>
									<div><a>[��ü]<%=free.getFr_title() %></a><%=free.getFr_date() %></div>
							<%	}	
							}
						  } %>
						<table>
							<thead>
								<tr>
									<td class="kboard-list-title">����</td>
									<td class="kboard-list-date">�ۼ���</td>
									<td class="kboard-list-view">��ȸ</td>
								</tr>
							</thead>
							<tbody>
								<tr>
							
								<%-- <td class="kboard-list-uid"><%=post.getFr_no()%></td>

								<td class="kboard-list-title"><a
									href="/single/fr/read.do?no=<%=post.getFr_no()%>&action=read">
										<div class="kboard-thumbnail-cut-strings">
											<%=post.getFr_title()%>
											<span class="kboard-comments-count"></span>
										</div>
								</a> </td>
								<td class="kboard-list-user"><%=post.getMe_id()%></td>
								<td class="kboard-list-date"><%=post.getFr_date()%></td>
								<td class="kboard-list-view"><%=post.getFr_hits()%></td> --%>
							</tr>
							</tbody>
						 </table>
						</div>
					</div>
				</div>
			</div>
			<div>
				<div class="col-sm-6">
					<div class="panel panel-primary" style="border-color: #edeef1;">
						<div class="panel-footer">�����Խ���</div>
						<div style="padding-top: 20px; padding-left: 10px">
							<table>
								<thead>
									<tr>
										<th>�Խñ�</th>
										<th>��¥</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><a href="#">�Խñ�A</a></td>
										<td>2000.01.01</td>
									</tr>
									<tr>
										<td><a href="#">�Խñ�B</a></td>
										<td>2000.01.01</td>
									</tr>
									<tr>
										<td><a href="#">�Խñ�C</a></td>
										<td>2000.01.01</td>
									</tr>
									<tr>
										<td><a href="#">�Խñ�D</a></td>
										<td>2000.01.01</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="panel panel-primary" style="border-color: #edeef1;">
						<div class="panel-footer">vs�Խ���</div>
						<div style="padding-top: 20px; padding-left: 10px">
							<table>
								<thead>
									<tr>
										<th>�Խñ�</th>
										<th>��¥</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><a href="#">�Խñ�A</a></td>
										<td>2000.01.01</td>
									</tr>
									<tr>
										<td><a href="#">�Խñ�B</a></td>
										<td>2000.01.01</td>
									</tr>
									<tr>
										<td><a href="#">�Խñ�C</a></td>
										<td>2000.01.01</td>
									</tr>
									<tr>
										<td><a href="#">�Խñ�D</a></td>
										<td>2000.01.01</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<hr />

			<div id="homepage">
				<section id="latest_work" class="clear">
					<article class="one_third first">
						<a href="#"><img src="../images/demo/300x180.gif" alt=""></a>
						<h2>Latest Project 1</h2>
						<p>Nullamlacus dui ipsum conseque loborttis non euisque morbi
							penas dapibulum orna.</p>
						<footer class="more">
							<a href="#">Read More &raquo;</a>
						</footer>
					</article>
					<article class="one_third">
						<a href="#"><img src="../images/demo/300x180.gif" alt=""></a>
						<h2>Latest Project 2</h2>
						<p>Nullamlacus dui ipsum conseque loborttis non euisque morbi
							penas dapibulum orna.</p>
						<footer class="more">
							<a href="#">Read More &raquo;</a>
						</footer>
					</article>
					<article class="one_third last">
						<a href="#"><img src="../images/demo/300x180.gif" alt=""></a>
						<h2>Latest Project 3</h2>
						<p>Nullamlacus dui ipsum conseque loborttis non euisque morbi
							penas dapibulum orna.</p>
						<footer class="more">
							<a href="#">Read More &raquo;</a>
						</footer>
					</article>
				</section>
				<!-- Introduction -->
				<section id="intro" class="clear">
					<article class="one_half">
						<h2>Meet The Team</h2>
						<ul>
							<li>
								<figure class="clear">
									<div class="imgl">
										<img src="../images/demo/150x150.gif" alt="">
									</div>
									<figcaption>
										<p class="name">
											<strong>Persons Name Here</strong>
										</p>
										<p>Sednulla nam nibh a nibh eu urna facinia mauris tibulus
											sit urna. Vitaerisus lobortis proin elit et curabituris elit
											estibulum.</p>
										<footer class="more">
											<a href="#">Read More &raquo;</a>
										</footer>
									</figcaption>
								</figure>
							</li>
							<li class="last">
								<figure class="clear">
									<div class="imgl">
										<img src="../images/demo/150x150.gif" alt="">
									</div>
									<figcaption>
										<p class="name">
											<strong>Persons Name Here</strong>
										</p>
										<p>Sednulla nam nibh a nibh eu urna facinia mauris tibulus
											sit urna. Vitaerisus lobortis proin elit et curabituris elit
											estibulum.</p>
										<footer class="more">
											<a href="#">Read More &raquo;</a>
										</footer>
									</figcaption>
								</figure>
							</li>
						</ul>
					</article>
					<article class="one_half last">
						<h2>What People Say About Us</h2>
						<ul class="testimonials">
							<li>
								<p class="name">
									<strong>Client Name</strong> - CEO
								</p>
								<blockquote>Justoid nonummy laoreet phasellent
									penatoque in antesque pellus elis eget tincidunt. Nequatdui
									laorem justo a non tellus laoreet tincidunt ut vel velit.
									Idenim semper pellente velis felit ac nullam pretium morbi
									lacus cursus iacus orci. Dignis simmorbi rhoncus sed netus
									ligula conseque netus nulla.</blockquote>
							</li>
							<li class="last">
								<p class="name">
									<strong>Client Name</strong> - CEO
								</p>
								<blockquote>Justoid nonummy laoreet phasellent
									penatoque in antesque pellus elis eget tincidunt. Nequatdui
									laorem justo a non tellus laoreet tincidunt ut vel velit.
									Idenim semper pellente velis felit ac nullam pretium morbi
									lacus cursus iacus orci. Dignis simmorbi rhoncus sed netus
									ligula conseque netus nulla.</blockquote>
							</li>
						</ul>
					</article>
				</section>
				<!-- / Intro -->
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