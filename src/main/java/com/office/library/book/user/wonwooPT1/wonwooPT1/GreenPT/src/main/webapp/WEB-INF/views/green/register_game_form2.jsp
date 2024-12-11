<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<jsp:include page="./register_book_form_js.jsp" />

</head>
<body>



	<section>

		<div id="section_wrap">

			<div class="word">

				<h3>신규게임 게시글 작성</h3>

			</div>

			<div class="register_game_form">

				<%-- <form action="<c:url value='/registerGameConfirm' />" name="register_game_form" method="post" enctype="multipart/form-data"> --%>
				<form name="register_game_form" method="post"
					enctype="multipart/form-data">					 
					<input type="text" class="w-25" name="g_g_name"
						 placeholder="게임이름을 입력하세요."> <br>
					
					<input type="text" class="w-25" name="g_g_company"
						 placeholder="제작사 이름을 입력하세요."> <br>

					<textarea name="g_content" rows="30" cols="100"></textarea>
					<br> 
					<input type="file" name="file1"><br> 
					<input type="file" name="file2"><br> 
					<input type="file" name="file3"><br> 
					<input type="file" name="file4"><br> 
					<input type="file" name="file5"><br> 
					
					<input type="text" class="w-25" name="g_link"
						 placeholder="영상URL주소를 입력하세요.."> <br>
					
					<input type="button" class='btn btn-secondary' value="게시글등록"
						onclick="registerBookForm();"> 
					<input type="reset" class='btn btn-danger' value="취소">

				</form>

			</div>

		</div>

	</section>



</body>
</html>