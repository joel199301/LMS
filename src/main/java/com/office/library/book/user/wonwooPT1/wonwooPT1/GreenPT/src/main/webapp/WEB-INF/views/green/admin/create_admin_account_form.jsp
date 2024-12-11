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

							<h3>관리자 계정가입</h3>

						</div>

						<div class="d-flex justify-content-center">



							<div class="create_account_form">

								<form action="<c:url value='/admin/createAdmin' />"
									name="create_admin_account_form" method="post"
									enctype="multipart/form-data">

									<div class="mb-3 w-100">
										<input type="email" class="form-control"
											d="exampleFormControlInput1" name="g_m_mail"
											placeholder="사용하실 계정 이메일을 입력해주세요.">
									</div>
									<div class="mb-3 w-100">

										<input type="password" class="form-control"
											d="exampleFormControlInput1" name="g_m_pw"
											placeholder="비밀번호를 입력해주세요..">
									</div>
									<div class="mb-3 w-100">

										<input type="password" class="form-control"
											d="exampleFormControlInput1" name="g_m_pw_again"
											placeholder="비밀번호를 재입력하세요..">
									</div>
									<div class="mb-3 w-100">

										<input type="text" class="form-control"
											d="exampleFormControlInput1" name="g_m_name"
											placeholder="사용하실 닉네임을 입력해주세요..">
									</div>
									
									<select class="form-select" name="g_m_gender"
										aria-label="Default select example">
										<option selected>성별을 선택해주세요.</option>
										<option value="M">남자</option>
										<option value="W">여자</option>
									</select><br><br>

									<div class="mb-3 w-100">

										<input type="text" class="form-control"
											d="exampleFormControlInput1" name="g_m_phone"
											placeholder="연락처(000-0000-0000)">
									</div>

									<div class="mb-3 w-100">
										<input class="form-control" type="file" name="file"
											id="formFileMultiple" multiple>
									</div>
									<input type="submit" class='btn btn-secondary' value="회원가입">
									<input type="reset" class='btn btn-danger' value="취소">

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
