<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.office.green.admin.AdminVo"%>
<%@page import="com.office.green.HomeController"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<title>Cyborg - Awesome HTML5 Template</title>

<!-- Bootstrap core CSS -->
<link href="/green/resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">


<!-- Additional CSS Files -->
<link rel="stylesheet" href="/green/resources/css/fontawesome.css">
<link rel="stylesheet"
	href="/green/resources/css/templatemo-cyborg-gaming.css">
<link rel="stylesheet" href="/green/resources/css/owl.css">
<link rel="stylesheet" href="/green/resources/css/animate.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
<!--

TemplateMo 579 Cyborg Gaming

https://templatemo.com/tm-579-cyborg-gaming

-->

</head>

<body>

	<!-- ***** Preloader Start ***** -->
	<div id="js-preloader" class="js-preloader">
		<div class="preloader-inner">
			<span class="dot"></span>
			<div class="dots">
				<span></span> <span></span> <span></span>
			</div>
		</div>
	</div>
	<!-- ***** Preloader End ***** -->

	<!-- ***** Header Area Start ***** -->
	<header class="header-area header-sticky">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav class="main-nav">
						<!-- ***** Logo Start ***** -->
						<a href="/green" class="logo"> <img
							src="/green/resources/images/logo.png" alt="">
						</a>
						<!-- ***** Logo End ***** -->
						<!-- ***** Search End ***** -->
						<div class="search-input">
							<form id="search" action="/green/searchKeyword">
								<input type="text" placeholder="Type Something" id='searchText'
									name="searchKeyword" onkeypress="handle" /> <i
									class="fa fa-search"></i>
							</form>
						</div>
						<!-- ***** Search End ***** -->
						<!-- ***** Menu Start ***** -->
						<ul class="nav">
							<li><a href="/green" class="active">Home</a></li>

							<li><a href="/green/browse">Browse</a></li>
							<li><a href="/green/gamelists">Games</a></li>
							<li><a href="/green/Free_board">자유게시판</a></li>
							<%
							AdminVo loginedAdminVo = (AdminVo) session.getAttribute("loginedAdminVo");
							if (loginedAdminVo != null) {
							%>
							<li><a href="/green/registerGameForm">게임등록</a></li>
							<li><a href="/green/profile">프로필 <img
									src="/green/resources/images/profile-header.jpg" alt=""></a></li>
							<%
							} else {
							%>

							<li><a href="/green/admin/adminLogin">login</a></li>
							<%
							}
							%>


						</ul>
						<a class='menu-trigger'> <span>Menu</span>
						</a>
						<!-- ***** Menu End ***** -->
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- ***** Header Area End ***** -->


	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="page-content">

					<!-- ***** Featured Start ***** -->
					<div class="row">
						<div class="col-lg-12">
							<div class="feature-banner header-text">
								<div class="row">
									<div class="col-lg-4">
										<img
											src="<c:url value='/libraryUploadImg/${GameVo.g_thumbnail2}'/>"
											alt="" style="border-radius: 23px;">
									</div>
									<div class="col-lg-8">
										<div class="thumb">
											<img
												src="<c:url value='/libraryUploadImg/${GameVo.g_thumbnail1}'/>"
												alt="" style="border-radius: 23px;"> <a
												href="${GameVo.g_link}" target="_blank"><i
												class="fa fa-play"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- ***** Featured End ***** -->

					<!-- ***** Details Start ***** -->
					<div class="game-details">
						<div class="row">
							<div class="col-lg-12">
								<h2>Fortnite Details</h2>
							</div>
							<div class="col-lg-12">
								<div class="content">
									<div class="row">
										<div class="col-lg-6">
											<div class="left-info">
												<div class="left">
													<h4>Fortnite</h4>
													<span>Sandbox</span>
												</div>
												<ul>
													<li><i class="fa fa-star"></i> 4.8</li>
													<li><i class="fa fa-download"></i> 2.3M</li>
												</ul>
											</div>
										</div>
										<div class="col-lg-6">
											<div class="right-info">
												<ul>
													<li><i class="fa fa-star"></i> 4.8</li>
													<li><i class="fa fa-download"></i> 2.3M</li>
													<li><i class="fa fa-server"></i> 36GB</li>
													<li><i class="fa fa-gamepad"></i> Action</li>
												</ul>
											</div>
										</div>
										<div class="col-lg-4">
											<img
												src="<c:url value='/libraryUploadImg/${GameVo.g_thumbnail3}'/>"
												alt="" style="border-radius: 23px; margin-bottom: 30px;">
										</div>
										<div class="col-lg-4">
											<img
												src="<c:url value='/libraryUploadImg/${GameVo.g_thumbnail4}'/>"
												alt="" style="border-radius: 23px; margin-bottom: 30px;">
										</div>
										<div class="col-lg-4">
											<img
												src="<c:url value='/libraryUploadImg/${GameVo.g_thumbnail5}'/>"
												alt="" style="border-radius: 23px; margin-bottom: 30px;">
										</div>
										<div class="col-lg-12">
											<h3>게임내용</h3>
											<p>${GameVo.g_content}</p>
										</div>
										<div class="col-lg-12">
											<div class="main-border-button">

												<%
												if (loginedAdminVo != null) {
												%>
												<%
												int downGame = (Integer)request.getAttribute("downGame");
												if (downGame == 0) {
												%>
												<a href="/green/admin/downLoad?g_g_no=${GameVo.g_g_no}">Download
													Now!</a>
												<%
												} else {
												%>
												<a href="#">Download complete!</a>
												<%
												}
												%>
												<%
												} else {
												%>
												<a href="/green/admin//adminLogin">Download Now!</a>
												<%
												}
												%>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- ***** Details End ***** -->

					<!-- ***** Other Start ***** -->
					<div class="other-games">
						<div class="row">
							<div class="col-lg-12">
								<div class="heading-section">
									<h4>
										댓글 <em> ${rcount} </em>
									</h4>
								</div>
							</div>



							<div>
								<c:forEach items="${replys}" var="reply">

									<div class="d-flex justify-content-between">
										<p>${reply.g_m_name}</p>
										<p>${reply.b_content}</p>
										<p>${reply.b_reg_date}</p>
									</div>


								</c:forEach>
							</div>



						</div>


					</div>
					<!-- ***** Other End ***** -->

					<%
					if (loginedAdminVo != null) {
					%>
					<div class="other-games">
						<div class="row">
							<div class="col-lg-12">
								<div class="heading-section">
									<h4>
										<em>Other Related</em> Games
									</h4>
								</div>
							</div>



							<div>

								<form method="post" action="/green/write">


									<p>
										<textarea rows="5" cols="50" name="b_content"></textarea>
									</p>
									<p>
										<input type="hidden" name="g_g_no" value="${GameVo.g_g_no}">

										<button type="submit" class="btn btn-primary">등록</button>
										<button type="button" class="btn btn-danger">수정</button>
									</p>
								</form>
								<%
								}
								%>
							</div>



						</div>


					</div>
					<!-- ***** Other End ***** -->

				</div>
			</div>
		</div>
	</div>

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<p>
						Copyright © 2036 <a href="#">Cyborg Gaming</a> Company. All rights
						reserved. <br>Design: <a href="https://templatemo.com"
							target="_blank" title="free CSS templates">TemplateMo</a>
						Distributed By <a href="https://themewagon.com" target="_blank">ThemeWagon</a>
					</p>
				</div>
			</div>
		</div>
	</footer>

	<!-- Scripts -->
	<!-- Bootstrap core JavaScript -->
	<script src="/green/resources/jquery/jquery.min.js"></script>
	<script src="/green/resources/bootstrap/js/bootstrap.min.js"></script>

	<script src="/green/resources/js/isotope.min.js"></script>
	<script src="/green/resources/js/owl-carousel.js"></script>
	<script src="/green/resources/js/tabs.js"></script>
	<script src="/green/resources/js/popup.js"></script>
	<script src="/green/resources/js/custom.js"></script>



</body>

</html>