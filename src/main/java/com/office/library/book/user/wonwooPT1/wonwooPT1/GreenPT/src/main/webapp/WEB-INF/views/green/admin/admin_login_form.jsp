<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- Customer 스타일 추가 -->
<link rel="stylesheet" href="/green/resources/css/login.css?v=1234">
</head>
<body class="">
	<jsp:include page="../nav.jsp" />

	<div id="container">
		<!-- login Box -->

		<form action="<c:url value='/admin/adminLogin' />"
			name="create_admin_account_form" method="post" class="login-box">
			<div id="loginBoxTitle">CodeZone Login</div>
			<div class="form-group">
				<label>고객 아이디</label> <input type="text" name="g_m_mail" id="uid"
					class="form-control" value=""
					style="text-transform: uppercase; ime-mode: disabled"
					placeholder="이메일 계정을 입력하세요.">
			</div>
			<div class="form-group">
				<label>비밀번호</label> <input type="password" name="g_m_pw" id="upw"
					class="form-control" value="" autocomplete="off"
					placeholder="비밀번호를 입력하세요.">
			</div>
			<div id="login-btn-box">
				<div style="">
					<button type="button" class="btn btn-primary"><a href="/green/admin/createAdmin" class="active">회원가입</a></button>
				</div>
				<div style="">
					<input type="submit" id="btnLogin" value="로그인"
						class="btn btn-danger">
				</div>
			</div>
	</form>
	<!-- login Box //-->
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

	<!-- Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>

