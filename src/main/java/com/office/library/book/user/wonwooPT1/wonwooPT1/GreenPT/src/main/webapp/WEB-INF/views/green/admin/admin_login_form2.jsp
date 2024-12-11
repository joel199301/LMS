<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

</head>

<body>

	<jsp:include page="../nav.jsp" />


	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="page-content">



					<!-- ***** Most Popular Start ***** -->
					<section>
		
		<div class="d-flex justify-content-center word">
			
				<h3>로그인</h3>
				
			</div>
		
		<div class="d-flex justify-content-center">
		
			
		
			<div class="create_account_form">
			
				<form action="<c:url value='/admin/adminLogin' />" name="create_admin_account_form" method="post">
					
					<input type="email" class="w-75" name="g_m_mail" placeholder="이메일 계정을 입력하세요."> <br><br>
					<input type="password" class="w-75" name="g_m_pw" placeholder="비밀번호를 입력하세요."> 
					<br><br>

					<input type="submit" class='btn btn-secondary' value="로그인"> 
					<input type="reset" class='btn btn-danger' value="취소"> <br><br>
					
					<div class='btn btn-primary'>
					<a href="/green/admin/createAdmin" class="active">회원가입</a>
					</div>
					
				</form>
				
			</div>
			

		
		</div>
		
	</section>

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
  <script src="/green/resources/bootstrap/js/bootstrap.min.js"></script>

  <script src="/green/resources/js/isotope.min.js"></script>
  <script src="/green/resources/js/owl-carousel.js"></script>
  <script src="/green/resources/js/tabs.js"></script>
  <script src="/green/resources/js/popup.js"></script>
  <script src="/green/resources/js/custom.js"></script>


</body>

</html>
