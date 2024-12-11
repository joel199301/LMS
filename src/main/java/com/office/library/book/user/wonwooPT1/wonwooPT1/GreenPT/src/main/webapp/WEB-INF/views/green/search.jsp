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
									name="searchKeyword" onkeypress="handle" /> 
									<i class="fa fa-search"></i>
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



					<!-- ***** Most Popular Start ***** -->
					<div class="most-popular">
						<div class="row">
							<div class="col-lg-12">
								<div class="heading-section">
									<h4>
										<em>Search</em> 결과
									</h4>
								</div>
								<c:forEach var="gameVo" items="${gameVos}">
								
									<div class="card mb-3" style="max-width: 1000px; min-width: 250px;"><!-- 카드 시작 -->
										<div class="row g-0">
											<div class="col-md-4">
											<a href="/green/details?g_g_no=${gameVo.g_g_no}">
												<img src="<c:url value='/libraryUploadImg/${gameVo.g_thumbnail3}'/>" class="img-fluid rounded-start" alt="...">
											</a>
											</div>
											<div class="col-md-8">
												<div class="card-body">
												<a href="/green/details?g_g_no=${gameVo.g_g_no}">
													<h3 class="card-title" style="color:black;">${gameVo.g_g_name}</h3>
												</a>	
													<p class="card-text">${gameVo.g_content}</p>
													<p class="card-text">
														<small class="text-muted">${gameVo.g_g_reg_date}</small>
													</p>
												</div>
											</div>
										</div>
									</div>
									<!-- 카드 종료 -->

								</c:forEach>


							</div>
						</div>
					</div>
					<!-- ***** Most Popular End ***** -->


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
	<!-- <script src="/green/resources/bootstrap/js/bootstrap.min.js"></script> -->

	<script src="/green/resources/js/isotope.min.js"></script>
	<script src="/green/resources/js/owl-carousel.js"></script>
	<script src="/green/resources/js/tabs.js"></script>
	<script src="/green/resources/js/popup.js"></script>
	<script src="/green/resources/js/custom.js"></script>



</body>

</html>
