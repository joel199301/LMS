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

<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/7b4c09cd67.js"
	crossorigin="anonymous"></script>

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



	<section>

		<div id="section_wrap">

			<div class="word">

				<h2>신규게임 게시글 작성</h2>

			</div>

			<div class="register_game_form">

				<%-- <form action="<c:url value='/registerGameConfirm' />" name="register_game_form" method="post" enctype="multipart/form-data"> --%>
				<form action="/green/registerGameForm" name="register_game_form" method="post"
					enctype="multipart/form-data">
					<div class="mb-3 w-50">
						<label for="exampleFormControlInput1" class="form-label">Email
							address</label> <input type="text" class="form-control" name="g_g_name"
							id="exampleFormControlInput1" placeholder="게임이름을 입력하세요.">
					</div>

					<div class="mb-3 w-50">
						<label for="exampleFormControlInput1" class="form-label">Email
							address</label> <input type="text" class="form-control"
							name="g_g_company" id="exampleFormControlInput1"
							placeholder="제작사 이름을 입력하세요.">
					</div>
					<br>
					<div class="mb-3 w-50">
						<label for="exampleFormControlTextarea1" class="form-label"><h5>게임
								상세설명</h5></label>
						<textarea class="form-control" name="g_content"
							id="exampleFormControlTextarea1" rows="5"></textarea>
					</div>
					<br>
					<div class="mb-3 w-50">
						<label for="formFileMultiple" class="form-label">Multiple
							files input example</label> <input class="form-control" type="file"
							name="file1" id="formFileMultiple" multiple>
					</div>
					<div class="mb-3 w-50">
						<label for="formFileMultiple" class="form-label">Multiple
							files input example</label> <input class="form-control" type="file"
							name="file2" id="formFileMultiple" multiple>
					</div>
					<div class="mb-3 w-50">
						<label for="formFileMultiple" class="form-label">Multiple
							files input example</label> <input class="form-control" type="file"
							name="file3" id="formFileMultiple" multiple>
					</div>
					<div class="mb-3 w-50">
						<label for="formFileMultiple" class="form-label">Multiple
							files input example</label> <input class="form-control" type="file"
							name="file4" id="formFileMultiple" multiple>
					</div>
					<div class="mb-3 w-50">
						<label for="formFileMultiple" class="form-label">Multiple
							files input example</label> <input class="form-control" type="file"
							name="file5" id="formFileMultiple" multiple>
					</div>

					<div class="mb-3 w-50">
						<label for="exampleFormControlInput1" class="form-label">Email
							address</label> <input type="text" name="g_link" class="form-control"
							name="g_g_name" id="exampleFormControlInput1"
							placeholder="영상URL주소를 입력하세요..">
					</div>
					<br> <br> 
					<input type="submit" class='btn btn-secondary'
						value="게시글등록"> <input
						type="reset" class='btn btn-danger' value="취소">

				</form>

			</div>

		</div>

	</section>

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