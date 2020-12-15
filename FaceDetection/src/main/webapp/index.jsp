<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

  <title>Similar face</title>

  <!-- Custom fonts for this template-->
  <link href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="<c:url value="/resources/css/sb-admin-2.min.css"/>" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- 메인이름  -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.jsp">
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
            <a class="collapse-item" href="/FaceDetection/my_face">내 얼굴 인식</a>
            <a class="collapse-item" href="/FaceDetection/face_list">연예인 목록 확인</a>
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
            <a class="collapse-item" href="/FaceDetection/total_list">전체 글 보기</a>
            <a class="collapse-item" href="/FaceDetection/write">글 쓰기</a>
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
            <a class="collapse-item" href="/FaceDetection/modify">수정 내역</a>
            <a class="collapse-item" href="/FaceDetection/modify_list">의견 게시판</a>
            <a class="collapse-item" href="/FaceDetection/send">의견 보내기</a>
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
            <h1 class="h3 mb-0 text-gray-800">이용 안내</h1>
          </div>

              <!-- Illustrations -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">'내얼굴 연예인'은 어떤 앱인가요?</h6>
                </div>
                <div class="card-body">
                  <div class="text-center">
                    <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;" src="img/undraw_posting_photo.svg" alt="">
                  </div>
                  <p>Add some quality, svg illustrations to your project courtesy of <a target="_blank" rel="nofollow" href="https://undraw.co/">unDraw</a>, a constantly updated collection of beautiful svg images that you can use completely free and without attribution!</p>
                  <a target="_blank" rel="nofollow" href="https://undraw.co/">Browse Illustrations on unDraw &rarr;</a>
                </div>
              </div>

        </div>
        <div class="container-fluid">

              <!-- Illustrations -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">결과를 신뢰할 수 있나요?</h6>
                </div>
                <div class="card-body">
                  <p>Add some quality, svg illustrations to your project courtesy of <a target="_blank" rel="nofollow" href="https://undraw.co/">unDraw</a>, a constantly updated collection of beautiful svg images that you can use completely free and without attribution!</p>
                  <a target="_blank" rel="nofollow" href="https://undraw.co/">Browse Illustrations on unDraw &rarr;</a>
                </div>
              </div>

        </div>
        <div class="container-fluid">
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">기능 설명</h1>
        </div>
        <div class="container-fluid">
        <div class="card shadow mb-4">
              <div class="card bg-primary text-white shadow">
                <div class="card-body">
                  	내 얼굴 인식
                    <div class="text-white-50 small">설명</div>
                </div>
              </div>
        </div>
        <div class="card shadow mb-4">
              <div class="card bg-primary text-white shadow">
                <div class="card-body">
                  	연예인 목록 확인
                    <div class="text-white-50 small">설명</div>
                </div>
              </div>
        </div>
        <div class="card shadow mb-4">
              <div class="card bg-info text-white shadow">
                <div class="card-body">
                  	전체 글 보기
                    <div class="text-white-50 small">설명</div>
                </div>
              </div>
        </div>
        <div class="card shadow mb-4">
              <div class="card bg-info text-white shadow">
                <div class="card-body">
                  	글 쓰기
                    <div class="text-white-50 small">설명</div>
                </div>
              </div>
        </div>
        <div class="card shadow mb-4">
              <div class="card bg-secondary text-white shadow">
                <div class="card-body">
                  	수정 내역
                    <div class="text-white-50 small">설명</div>
                </div>
              </div>
        </div>
        <div class="card shadow mb-4">
              <div class="card bg-secondary text-white shadow">
                <div class="card-body">
                  	의견 게시판
                    <div class="text-white-50 small">설명</div>
                </div>
              </div>
        </div>
        <div class="card shadow mb-4">
              <div class="card bg-secondary text-white shadow">
                <div class="card-body">
                  	의견 보내기
                    <div class="text-white-50 small">설명</div>
                </div>
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
  <script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"></script>
 <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

	<!-- Core plugin JavaScript-->
	<script src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js"/>"></script>

	<!-- Custom scripts for all pages-->
	<script src="<c:url value="/resources/js/sb-admin-2.min.js"/>"></script>

	<!-- Page level plugins -->
	<script src="<c:url value="/resources/vendor/chart.js/Chart.min.js"/>"></script>

	<!-- Page level custom scripts -->
	<script src="<c:url value="/resources/js/demo/chart-area-demo.js"/>"></script>
	<script src="<c:url value="/resources/js/demo/chart-pie-demo.js"/>"></script>

</body>

</html>
