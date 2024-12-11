<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.office.green.admin.AdminVo"%>


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
							<li><a href="/green/streams">Streams</a></li>
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

					<!-- ***** Banner Start ***** -->
					<div class="row">
						<div class="col-lg-12">
							<div class="main-profile ">
								<div class="row">
									<div class="col-lg-4">
										<img
											src="<c:url value='/libraryUploadImg/${AdminVo.g_m_thumbnail}'/>"
											alt="" style="border-radius: 23px;">
									</div>
									<div class="col-lg-4 align-self-center">
										<div class="main-info header-text">
											<span>Offline</span>
											<h4>${AdminVo.g_m_name}</h4>
											<p>You Haven't Gone Live yet. Go Live By Touching The
												Button Below.</p>
											<div class="main-border-button">
												<a href="#">회원정보수정</a>
											</div>

											<div class="main-border-button">
												<a href="/green/admin/logout">로그아웃</a>
											</div>
										</div>
									</div>
									<div class="col-lg-4 align-self-center">
										<ul>
											<li>Games Downloaded <span>3</span></li>
											<li>Friends Online <span>16</span></li>
											<li>Live Streams <span>None</span></li>
											<li>Clips <span>29</span></li>
										</ul>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12">
										<div class="clips">
											<div class="row">
												<div class="col-lg-12">
													<div class="heading-section">
														<h4>
															<em>Your Most Popular</em> Clips
														</h4>
													</div>
												</div>
												<div class="col-lg-3 col-sm-6"> <!-- 카드 시작 -->
													<div class="item">
														<div class="thumb">
															<img src="/green/resources/images/clip-01.jpg" alt=""
																style="border-radius: 23px;"> <a
																href="https://www.youtube.com/watch?v=r1b03uKWk_M"
																target="_blank"><i class="fa fa-play"></i></a>
														</div>
														<div class="down-content">
															<h4>First Clip</h4>
															<span><i class="fa fa-eye"></i> 250</span>
														</div>
													</div>
												</div> <!-- 카드 종료 -->
												
												
												<div class="col-lg-3 col-sm-6">
													<div class="item">
														<div class="thumb">
															<img src="/green/resources/images/clip-02.jpg" alt=""
																style="border-radius: 23px;"> <a
																href="https://www.youtube.com/watch?v=r1b03uKWk_M"
																target="_blank"><i class="fa fa-play"></i></a>
														</div>
														<div class="down-content">
															<h4>Second Clip</h4>
															<span><i class="fa fa-eye"></i> 183</span>
														</div>
													</div>
												</div>
												<div class="col-lg-3 col-sm-6">
													<div class="item">
														<div class="thumb">
															<img src="/green/resources/images/clip-03.jpg" alt=""
																style="border-radius: 23px;"> <a
																href="https://www.youtube.com/watch?v=r1b03uKWk_M"
																target="_blank"><i class="fa fa-play"></i></a>
														</div>
														<div class="down-content">
															<h4>Third Clip</h4>
															<span><i class="fa fa-eye"></i> 141</span>
														</div>
													</div>
												</div>
												<div class="col-lg-3 col-sm-6">
													<div class="item">
														<div class="thumb">
															<img src="/green/resources/images/clip-04.jpg" alt=""
																style="border-radius: 23px;"> <a
																href="https://www.youtube.com/watch?v=r1b03uKWk_M"
																target="_blank"><i class="fa fa-play"></i></a>
														</div>
														<div class="down-content">
															<h4>Fourth Clip</h4>
															<span><i class="fa fa-eye"></i> 91</span>
														</div>
													</div>
												</div>
												<div class="col-lg-12">
													<div class="main-button">
														<a href="#">Load More Clips</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- ***** Banner End ***** -->

					<!-- ***** Gaming Library Start ***** -->
					<div class="gaming-library profile-library">
						<div class="col-lg-12">
							<div class="heading-section">
								<h4>
									<em>Your Gaming</em> Library
								</h4>
							</div>
							<div class="item">
								<ul>
									<li><img src="/green/resources/images/game-01.jpg" alt=""
										class="templatemo-item"></li>
									<li><h4>Dota 2</h4>
										<span>Sandbox</span></li>
									<li><h4>Date Added</h4>
										<span>24/08/2036</span></li>
									<li><h4>Hours Played</h4>
										<span>634 H 22 Mins</span></li>
									<li><h4>Currently</h4>
										<span>Downloaded</span></li>
									<li><div class="main-border-button border-no-active">
											<a href="#">Donwloaded</a>
										</div></li>
								</ul>
							</div>
							<div class="item">
								<ul>
									<li><img src="/green/resources/images/game-02.jpg" alt=""
										class="templatemo-item"></li>
									<li><h4>Fortnite</h4>
										<span>Sandbox</span></li>
									<li><h4>Date Added</h4>
										<span>22/06/2036</span></li>
									<li><h4>Hours Played</h4>
										<span>745 H 22 Mins</span></li>
									<li><h4>Currently</h4>
										<span>Downloaded</span></li>
									<li><div class="main-border-button border-no-active">
											<a href="#">Donwloaded</a>
										</div></li>
								</ul>
							</div>
							<div class="item last-item">
								<ul>
									<li><img src="/green/resources/images/game-03.jpg" alt=""
										class="templatemo-item"></li>
									<li><h4>CS-GO</h4>
										<span>Sandbox</span></li>
									<li><h4>Date Added</h4>
										<span>21/04/2022</span></li>
									<li><h4>Hours Played</h4>
										<span>632 H 46 Mins</span></li>
									<li><h4>Currently</h4>
										<span>Downloaded</span></li>
									<li><div class="main-border-button border-no-active">
											<a href="#">Donwloaded</a>
										</div></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- ***** Gaming Library End ***** -->
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