<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">



<!-- jQuery -->

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>



<!-- Bootstrap CSS -->

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">



<title>board</title>



<script>

	$(document).on('click', '#btnSave', function(e){

		e.preventDefault();

		

		$("#form").submit();

	});

	

	$(document).on('click', '#btnList', function(e){

		e.preventDefault();

		

		location.href="${pageContext.request.contextPath}/board/getBoardList";

	});

</script>

<style>

body {

  padding-top: 70px;

  padding-bottom: 30px;

}



</style>

</head>

<body>

	<article>

		<div class="container" role="main">

			<h2>board Form</h2>

			<form name="form" id="form" role="form" method="post" action="${pageContext.request.contextPath}/board/saveBoard">

				<div class="mb-3">

					<label for="title">작성자</label>

					<input type="text" class="form-control" name="title" id="title" placeholder="작성자명을 입력해 주세요" style = "width : 20%"  maxlength="20">

				</div>

				

				<div class="mb-3">

					<label for="reg_id">비밀번호</label>

					<input type="password" class="form-control" name="reg_id" id="password1" placeholder="비밀번호를 입력해주세요" style = "width : 20%" maxlength="20">

				</div>
				
				<div class="mb-3">

					<label for="reg_id">비밀번호 확인</label>

					<input type="password" class="form-control" name="reg_id" id="password2" placeholder="비밀번호를 입력해주세요" style = "width : 20%" maxlength="20">&nbsp;&nbsp;<div class="alert alert-success" id="alert-success">비밀번호가 일치합니다.</div> <div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div>


				</div>

				

				<div class="mb-3">

					<label for="content">내용</label>

					<textarea class="form-control" rows="5" name="content" id="content" placeholder="내용을 입력해 주세요" maxlength="300"></textarea>

				</div>

				

				<div class="mb-3">

					<label for="tag">TAG</label>

					<input type="text" class="form-control" name="tag" id="tag" placeholder="태그를 입력해 주세요">

				</div>

			

			</form>

			<div >

				<button type="button" class="btn btn-sm btn-primary" id="submit">저장</button>

				<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>

			</div>

		</div>

	</article>
	
	<script>
	
    $(function() {
        $("#alert-success").hide();
        $("#alert-danger").hide();
        $("#password2").keyup(function() {
            var pwd1 = $("#password1").val();
            var pwd2 = $("#password2").val();
            if (pwd1 != "" || pwd2 != "") {
                if (pwd1 == pwd2) {
                    $("#alert-success").show();
                    $("#alert-danger").hide();
                    $("#submit").removeAttr("disabled");
                } else {
                    $("#alert-success").hide();
                    $("#alert-danger").show();
                    $("#submit").attr("disabled", "disabled");
                }
            }
        });
    });

</script>



	

</body>

</html>


