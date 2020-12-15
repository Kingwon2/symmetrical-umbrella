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
  <link href='https://fonts.googleapis.com/css?family=Quicksand:300,400' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Lato:400,300' rel='stylesheet' type='text/css'> 
  <link href="https://netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
  

  <!-- Custom styles for this template-->
  <link href="${url}resources/css/sb-admin-2.min.css" rel="stylesheet">
  <link href="${url}resources/css/twiter.css" rel="stylesheet">
  <style>
.icon-trash {cursor:pointer; color: #DB4455;}
.icon-cogs {cursor:pointer; color: #16a085;}
</style>
  
</head>
<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- �����̸�  -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="${url}resources/vendor/fontawesome-free/css/all.min.css">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">���� ������</div>
      </a>

      <!-- �����̸��� ���θ޴� ���� ���м�  -->
      <hr class="sidebar-divider my-0">

      <!-- �����̸��� ���θ޴� ���� ���� -->
      <hr class="sidebar-divider">

      <!-- ���θ޴� ���� -->
      <div class="sidebar-heading">
       	 ���ν� ���
      </div>

      <!-- ���� �޴� - ���� ������ ã�� -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>�� ����ϱ�</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <!-- ���� �޴��� ���� ��� -->
            <h6 class="collapse-header">Register my face :</h6>
            <a class="collapse-item" href="${url}my_face">�� �� �ν�</a>
            <a class="collapse-item" href="${url}celebrity_list">������ ��� Ȯ��</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>�Խ���</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">notice board :</h6>
            <a class="collapse-item" href="total_list.jsp">��ü �� ����</a>
            <a class="collapse-item" href="write.jsp">�� ����</a>
          </div>
        </div>
      </li>

      <!-- ���θ޴��� ���θ޴� 2 ���� ���м� -->
      <hr class="sidebar-divider">

      <!-- ���θ޴� 2 ���� -->
      <div class="sidebar-heading">
               ������� �Ҹ�
      </div>

      <!-- ���� �޴� - �ǰ� ������ -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>�ǰߺ�����</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
          <!-- ���� �޴��� ���� ��� -->
            <h6 class="collapse-header">Opinion :</h6>
            <a class="collapse-item" href="modify.jsp">���� ����</a>
            <a class="collapse-item" href="modify_list.jsp">�ǰ� �Խ���</a>
            <a class="collapse-item" href="send.jsp">�ǰ� ������</a>
          </div>
        </div>
      </li>
      
      <!-- ���θ޴� 2�� ���̵�޴� ũ�� ���� ��ư ���м� -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- ���̵� �޴� ũ�� ���� ��ư ���� -->
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
        <div class="container-fluid" style = "width : 80%">
        
          <!-- ���� �̸� -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">������ ��� Ȯ��</h1>
          </div>

              <!-- Illustrations -->
              <div class="card shadow mb-4" >
                <div class="card-header py-3" >
                  <h6 class="m-0 font-weight-bold text-primary">Illustrations</h6>
                </div>
                <div class="card-body" >
                  <ul class="timeline">
			<li>
				<div class="avatar">
          <img src="http://www.croop.cl/UI/twitter/images/doug.jpg">
					
				</div>
				<div class="bubble-container">
					<div class="bubble">
					
						<h3>@russel</h3> retweeted <h3>@doug</h3><br/>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea, iusto, maxime, ullam autem a voluptate rem quos repudiandae.
						<div class="over-bubble">
							<a onclick=""><div class ='icon-cogs action'></div></a>
							<a onclick=""><div class ='icon-trash action'></div></a>
						</div>
					</div>
					
					<div class="arrow"></div>
				</div>
			</li>
			<li>
				<div class="avatar">
					<img src="http://www.croop.cl/UI/twitter/images/carl.jpg">
				</div>
				<div class="bubble-container">
					<div class="bubble">
						<h3>@carlf</h3><br/>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea, iusto, maxime, ullam autem a voluptate rem quos repudiandae.
						<div class="over-bubble">
							<div class="icon-mail-reply action"></div>
							<div class="icon-retweet action"></div>
							<div class="icon-star"></div>
						</div>
					</div>
					<div class="arrow"></div>
				</div>
			</li>
			<li>
				<div class="avatar">
					<img src="http://www.croop.cl/UI/twitter/images/russel.jpg">
				</div>
				<div class="bubble-container">
					<div class="bubble">
					<h3>@russel</h3><br/>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea, iusto, maxime, ullam autem a voluptate rem quos repudiandae.
						<div class="over-bubble">
							<div class="icon-mail-reply action"></div>
							<div class="icon-retweet action"></div>
							<div class="icon-star"></div>
						</div>
					</div>
					<div class="arrow"></div>
				</div>
			</li>
			<li>
				<div class="avatar">
					<img src="http://www.croop.cl/UI/twitter/images/carl.jpg">
				</div>
				<div class="bubble-container">
					<div class="bubble">
						<h3>@carlf</h3><br/>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea, iusto, maxime, ullam autem a voluptate rem quos repudiandae.
						<div class="over-bubble">
							<div class="icon-mail-reply action"></div>
							<div class="icon-retweet action"></div>
							<div class="icon-star"></div>
						</div>
					</div>
					<div class="arrow"></div>
				</div>
			</li>
		</ul>                  
                
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
	
   <!-- Page level custom scripts -->
	<script src="${url}resources/js/demo/chart-area-demo.js"></script>
	<script src="${url}resources/js/demo/chart-pie-demo.js"></script>
	
	

</body>

</html>
a
          