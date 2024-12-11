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

	<jsp:include page="./green/nav.jsp" />

	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="page-content">
				
					

					<!-- ***** Banner Start ***** -->
					<div class="mb-5 main-banner">
						<div class="row">
							<div class="col-lg-7">
								<div class="header-text">
									<h6>Welcome To Cyborg</h6>
									<h4>
										<em>Let's Play</em><br>Right now!
									</h4>
									<div class="main-button">
										<a href="https://heroesofthestorm.blizzard.com/ko-kr/">Game
											play</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- ***** Banner End ***** -->
					
					 <!-- ***** Featured Games Start ***** -->
          <div class="row">
            <div class="col-lg-8">
              <div class="featured-games header-text">
                <div class="heading-section">
                  <h4><em>TOP3</em> Games</h4>
                </div>
                
                <div class="owl-features owl-carousel">
                
                <c:forEach var="topgames" items="${topgame}"> <!-- 카드시작 -->
                
                  <div class="item">
                    <div class="P-10 thumb">
                      <img src="<c:url value='/libraryUploadImg/${topgames.g_thumbnail1}'/>" style="height: 20rem;"  alt="">
                      <div class="hover-effect">
                        <h6>2.4K Streaming</h6>
                      </div>
                    </div>
                    
                    <h4><a href="/green/details?g_g_no=${topgames.g_g_no}">${topgames.g_g_name}<br><span>249K Downloads</span></a></h4>
                    <ul>
                      <li><i class="fa fa-star"></i> 4.8</li>
                      
                      <li><i class="fa fa-download"></i> 2.3M</li>
                      
                    </ul>
                  </div>
   
                 </c:forEach>
                  
                  </div>
              </div>
            </div>
            
            
            <div class="col-lg-4">
              <div class="top-downloaded">
                <div class="heading-section">
                  <h4><em>Top</em> Downloaded</h4>
                </div>
                <ul>
                
                <c:forEach var="topgames" items="${topgame}"> <!-- 카드시작 -->
                  <li>
                    <img src="<c:url value='/libraryUploadImg/${topgames.g_thumbnail1}'/>" alt="" class="templatemo-item">
                    <h4>${topgames.g_g_name}</h4>
                    <h6>${topgames.g_g_company}</h6>
                    <span><i class="fa fa-star" style="color: yellow;"></i> 4.9</span>
                    <span><i class="fa fa-download" style="color: #ec6090;"></i> 2.2M</span>
                    <div class="download">
                      <a href="/green/details?g_g_no=${topgames.g_g_no}"><i class="fa fa-download"></i></a>
                    </div>
                  </li>
                  </c:forEach> <!-- 카드종료 -->
                  
                </ul>
                <div class="text-button">
                  <a href="/green/gamelists">View All Games</a>
                </div>
              </div>
            </div>
          </div>
          <!-- ***** Featured Games End ***** -->
					

					<!-- ***** Most Popular Start ***** -->
					<div class="most-popular">
						<div class="row">
							<div class="col-lg-12">
								<div class="heading-section">
									<h4>
										<em>Most Popular</em> Right Now
									</h4>
								</div>
								<c:forEach var="gameVo" items="${gameVos}">
								
										<!-- 카드시작 -->
										<div class="col-lg-3 col-sm-6">
											<div class="item">
												<a href="/green/details?g_g_no=${gameVo.g_g_no}"> 
												<img
													src="<c:url value='/libraryUploadImg/${gameVo.g_thumbnail1}'/>"
													alt="">
												</a>
												<h4>
												${gameVo.g_g_name}<br> 
													<span>${gameVo.g_g_company}</span>
												</h4>
												<ul>
													<li><i class="fa fa-star"></i> 4.8</li>
													<li><i class="fa fa-download"></i> 2.3M</li>
												</ul>
											</div>
										</div>
										<!-- 카드종료 -->
								</c:forEach>


							</div>
						</div>
					</div>
					<!-- ***** Most Popular End ***** -->

					<%
							AdminVo loginedAdminVo = (AdminVo) session.getAttribute("loginedAdminVo");
							if (loginedAdminVo != null) {
							%>

					<!-- ***** Gaming Library Start ***** -->
					<div class="gaming-library profile-library">
						<div class="col-lg-12">
							<div class="heading-section">
								<h4>
									<em>Your Gaming</em> Library
								</h4>
							</div>
							
							<c:forEach var="Vo2" items="${Vos2}"> <!-- 카드시작 -->
							<div class="item"> 
								
								<ul>
									<li><img src="<c:url value='/libraryUploadImg/${Vo2.g_thumbnail1}'/>" alt=""
										class="templatemo-item"></li>
									<li><h4>${Vo2.g_g_name}</h4>
										<span>${Vo2.g_g_company}</span></li>
									<li><h4>Date Added</h4>
										<span>${Vo2.g_g_reg_date}</span></li>
									<li><h4>Hours Played</h4>
										<span>634 H 22 Mins</span></li>
									<li><h4>Currently</h4>
										<span>Downloaded</span></li>
									<li><div class="main-border-button border-no-active">
											<a href="${Vo2.g_link}">Play Game</a>
										</div></li>
								</ul>
							</div> 
							</c:forEach> <!-- 카드종료 -->
							
							
						</div>
					</div>
					<!-- ***** Gaming Library End ***** -->
					
					<%
							} 
					%>
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
