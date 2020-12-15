<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="EUC-KR">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>my_face</title>
  <c:url value='/' var='url'></c:url>
  <!-- Custom fonts for this template-->
  <link href="${url}resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
  

  <!-- Custom styles for this template-->
  <link href="${url}resources/css/sb-admin-2.min.css" rel="stylesheet">
  
</head>
<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- 메인이름  -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="${url}resources/vendor/fontawesome-free/css/all.min.css">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">내얼굴 연예인</div>
      </a>

      <!-- 메인이름과 메인메뉴 사이 구분선  -->
      <hr class="sidebar-divider my-0">

      <!-- 메인이름과 메인메뉴 사이 공간 -->
      <hr class="sidebar-divider">

      <!-- 메인메뉴 설명 -->
      <div class="sidebar-heading">
       	 얼굴인식 기능
      </div>

      <!-- 서브 메뉴 - 닮은 연예인 찾기 -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>얼굴 등록하기</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <!-- 서브 메뉴의 서브 기능 -->
            <h6 class="collapse-header">Register my face :</h6>
            <a class="collapse-item" href="${url}my_face">내 얼굴 인식</a>
            <a class="collapse-item" href="${url}celebrity_list">연예인 목록 확인</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>게시판</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">notice board :</h6>
            <a class="collapse-item" href="total_list.jsp">전체 글 보기</a>
            <a class="collapse-item" href="write.jsp">글 쓰기</a>
          </div>
        </div>
      </li>

      <!-- 메인메뉴와 메인메뉴 2 사이 구분선 -->
      <hr class="sidebar-divider">

      <!-- 메인메뉴 2 설명 -->
      <div class="sidebar-heading">
               사용자의 소리
      </div>

      <!-- 서브 메뉴 - 의견 보내기 -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>의견보내기</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
          <!-- 서브 메뉴의 서브 기능 -->
            <h6 class="collapse-header">Opinion :</h6>
            <a class="collapse-item" href="modify.jsp">수정 내역</a>
            <a class="collapse-item" href="modify_list.jsp">의견 게시판</a>
            <a class="collapse-item" href="send.jsp">의견 보내기</a>
          </div>
        </div>
      </li>
      
      <!-- 메인메뉴 2와 사이드메뉴 크기 조절 버튼 구분선 -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- 사이드 메뉴 크기 조절 버튼 구현 -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>
    </ul>

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

        </nav>

        <!-- Begin Page Content -->
        <div class="container-fluid">
        
          <!-- 본문 이름 -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">연예인 목록 확인</h1>
          </div>

              <!-- Illustrations -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Illustrations</h6>
                </div>
                <div class="card-body">
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
                  
                
              </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2019</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Bootstrap core JavaScript-->
  <script src="${url}resources/vendor/jquery/jquery.min.js"></script>
 <script src="${url}resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="${url}resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="${url}resources/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="${url}resources/vendor/chart.js/Chart.min.js"></script>
	<!-- jQuery -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	

	<!-- Page level custom scripts -->
	<script src="${url}resources/js/demo/chart-area-demo.js"></script>
	<script src="${url}resources/js/demo/chart-pie-demo.js"></script>
	
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
a
          