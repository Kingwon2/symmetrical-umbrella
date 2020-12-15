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

      <!-- �����̸�  -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css"/>">
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
            <a class="collapse-item" href="<c:url value="/my_face"/>">�� �� �ν�</a>
            <a class="collapse-item" href="<c:url value="/celebrity_list"/>">������ ��� Ȯ��</a>
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
        <div class="container-fluid">
        
          <!-- ���� �̸� -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">������ ��� Ȯ��</h1>
          </div>

              <!-- Illustrations -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Illustrations</h6>
                </div>
                <div class="card-body">
                  <div class="text-center">
                    <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper">
    <div class="html5buttons"></div>
    <div class="dataTables_length" id="DataTables_Table_0_length"><label><select name="DataTables_Table_0_length" aria-controls="DataTables_Table_0" class="">
                <option value="10">�̸�</option>
                <option value="25">���</option>
                <option value="50">������</option>
                <option value="100">100</option>
            </select> �� ����</label></div>
    <div id="DataTables_Table_0_filter" class="dataTables_filter"><label>�˻� : <input type="search" class="" placeholder="" aria-controls="DataTables_Table_0"></label></div>
    <table class="table table-striped table-bordered table-hover dataTables-example dataTable" id="DataTables_Table_0" role="grid">
        <thead>
            <tr role="row">
                <th class="sorting_asc" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending"  style="width: 5%;">����</th>
                <th class="thumb sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1"  style="width: 10%;">�̹���</th>
                <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1"  style="width: 45%;">�̸�</th>
                <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 20%;">���</th>
                <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1"  style="width: 20%;">�·�<br>(�¸� Ƚ�� / ��ü 1:1 ����)</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th rowspan="1" colspan="1">����</th>
                <th class="thumb" rowspan="1" colspan="1">�̹���</th>
                <th rowspan="1" colspan="1">�̸�</th>
                <th rowspan="1" colspan="1">���</th>
                <th rowspan="1" colspan="1">�·�</th>
            </tr>
        </tfoot>
        <tbody>
            <tr role="row" class="odd">
                <td class="sorting_1">1</td>
                <td class=" thumb"><a href="https://img.piku.co.kr/w/uploads/6HDTSv/a36ef44d2b1583857e865ef3ded10c62.jpg" title="������" data-gallery="">
                        <div style="width:100%;height:100px;background-size:cover;background-position:center top;background-image:url(https://img.piku.co.kr/w/uploads/6HDTSv/2d217278d1a277b66bc1ddbae217ed0f.jpg)"></div>
                    </a></td>
                <td><strong>������</strong></td>
                <td><strong>17.34%</strong>
                    <div class="progress progress-striped active">
                        <div style="width: 17.34%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="17.34" role="progressbar" class="progress-bar progress-bar-danger"></div>
                    </div>
                </td>
                <td><strong>79.61%</strong>
                    <div class="progress progress-striped active">
                        <div style="width: 79.61%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="79.61" role="progressbar" class="progress-bar progress-bar-warning"></div>
                    </div>
                </td>
            </tr>
            <tr role="row" class="even">
                <td class="sorting_1">2</td>
                <td class=" thumb"><a href="https://img.piku.co.kr/w/uploads/6HDTSv/77857f2741edd1366ae704213e720c50.jpg" title="���座�� ���̸�" data-gallery="">
                        <div style="width:100%;height:100px;background-size:cover;background-position:center top;background-image:url(https://img.piku.co.kr/w/uploads/6HDTSv/e542603fc62b456d723c47e24b097da5.jpg)"></div>
                    </a></td>
                <td><strong>���座�� ���̸�</strong></td>
                <td><strong>14.45%</strong>
                    <div class="progress progress-striped active">
                        <div style="width: 14.45%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="14.45" role="progressbar" class="progress-bar progress-bar-danger"></div>
                    </div>
                </td>
                <td><strong>79.28%</strong>
                    <div class="progress progress-striped active">
                        <div style="width: 79.28%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="79.28" role="progressbar" class="progress-bar progress-bar-warning"></div>
                    </div>
                </td>
            </tr>
            <tr role="row" class="odd">
                <td class="sorting_1">3</td>
                <td class=" thumb"><a href="https://img.piku.co.kr/w/uploads/6HDTSv/8ed69bc52e6d6d56741232a5af6347ba.jpg" title="BLACKPINK ����" data-gallery="">
                        <div style="width:100%;height:100px;background-size:cover;background-position:center top;background-image:url(https://img.piku.co.kr/w/uploads/6HDTSv/82465da97cc5653cafe6e488a0e96380.jpg)"></div>
                    </a></td>
                <td><strong>BLACKPINK ����</strong></td>
                <td><strong>9.86%</strong>
                    <div class="progress progress-striped active">
                        <div style="width: 9.86%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="9.86" role="progressbar" class="progress-bar progress-bar-danger"></div>
                    </div>
                </td>
                <td><strong>73.48%</strong>
                    <div class="progress progress-striped active">
                        <div style="width: 73.48%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="73.48" role="progressbar" class="progress-bar progress-bar-warning"></div>
                    </div>
                </td>
            </tr>
            <tr role="row" class="even">
                <td class="sorting_1">4</td>
                <td class=" thumb"><a href="https://img.piku.co.kr/w/uploads/6HDTSv/3a321fab3ab155a9ed24a05a80ae3089.jpg" title="BLACKPINK ����" data-gallery="">
                        <div style="width:100%;height:100px;background-size:cover;background-position:center top;background-image:url(https://img.piku.co.kr/w/uploads/6HDTSv/d2aca89c75ef58b00a7daf92969dd266.jpg)"></div>
                    </a></td>
                <td><strong>BLACKPINK ����</strong></td>
                <td><strong>9.73%</strong>
                    <div class="progress progress-striped active">
                        <div style="width: 9.73%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="9.73" role="progressbar" class="progress-bar progress-bar-danger"></div>
                    </div>
                </td>
                <td><strong>74.16%</strong>
                    <div class="progress progress-striped active">
                        <div style="width: 74.16%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="74.16" role="progressbar" class="progress-bar progress-bar-warning"></div>
                    </div>
                </td>
            </tr>
            <tr role="row" class="odd">
                <td class="sorting_1">5</td>
                <td class=" thumb"><a href="https://img.piku.co.kr/w/uploads/6HDTSv/e5790ccf9de9eb097c280f86da0e0cfa.jpg" title="������� �����" data-gallery="">
                        <div style="width:100%;height:100px;background-size:cover;background-position:center top;background-image:url(https://img.piku.co.kr/w/uploads/6HDTSv/f4995e53f00e42841b9566e7ca5c4964.jpg)"></div>
                    </a></td>
                <td><strong>������� �����</strong></td>
                <td><strong>8.31%</strong>
                    <div class="progress progress-striped active">
                        <div style="width: 8.31%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="8.31" role="progressbar" class="progress-bar progress-bar-danger"></div>
                    </div>
                </td>
                <td><strong>73.39%</strong>
                    <div class="progress progress-striped active">
                        <div style="width: 73.39%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="73.39" role="progressbar" class="progress-bar progress-bar-warning"></div>
                    </div>
                </td>
            </tr>
            <tr role="row" class="even">
                <td class="sorting_1">6</td>
                <td class=" thumb"><a href="https://img.piku.co.kr/w/uploads/6HDTSv/56bc7a33d2efcaaa4ea96924506f2899.jpg" title="����" data-gallery="">
                        <div style="width:100%;height:100px;background-size:cover;background-position:center top;background-image:url(https://img.piku.co.kr/w/uploads/6HDTSv/808641df8d2572e21442638cab2bea9c.jpg)"></div>
                    </a></td>
                <td><strong>����</strong></td>
                <td><strong>7.83%</strong>
                    <div class="progress progress-striped active">
                        <div style="width: 7.83%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="7.83" role="progressbar" class="progress-bar progress-bar-danger"></div>
                    </div>
                </td>
                <td><strong>71.93%</strong>
                    <div class="progress progress-striped active">
                        <div style="width: 71.93%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="71.93" role="progressbar" class="progress-bar progress-bar-warning"></div>
                    </div>
                </td>
            </tr>
            <tr role="row" class="odd">
                <td class="sorting_1">7</td>
                <td class=" thumb"><a href="https://img.piku.co.kr/w/uploads/6HDTSv/2fb143df0ad45b839abeb6b1559cb26e.jpg" title="BLACKPINK ����" data-gallery="">
                        <div style="width:100%;height:100px;background-size:cover;background-position:center top;background-image:url(https://img.piku.co.kr/w/uploads/6HDTSv/750aa59f51403741a29721fa03bb87e3.jpg)"></div>
                    </a></td>
                <td><strong>BLACKPINK ����</strong></td>
                <td><strong>7.47%</strong>
                    <div class="progress progress-striped active">
                        <div style="width: 7.47%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="7.47" role="progressbar" class="progress-bar progress-bar-danger"></div>
                    </div>
                </td>
                <td><strong>65.84%</strong>
                    <div class="progress progress-striped active">
                        <div style="width: 65.84%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="65.84" role="progressbar" class="progress-bar progress-bar-warning"></div>
                    </div>
                </td>
            </tr>
            <tr role="row" class="even">
                <td class="sorting_1">8</td>
                <td class=" thumb"><a href="https://img.piku.co.kr/w/uploads/6HDTSv/9a3d4cc50c7a072e6c85236f791eeef3.jpg" title="BLACKPINK ����" data-gallery="">
                        <div style="width:100%;height:100px;background-size:cover;background-position:center top;background-image:url(https://img.piku.co.kr/w/uploads/6HDTSv/f7cc555a90cc53e4952be080b0017f5a.jpg)"></div>
                    </a></td>
                <td><strong>BLACKPINK ����</strong></td>
                <td><strong>7.32%</strong>
                    <div class="progress progress-striped active">
                        <div style="width: 7.32%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="7.32" role="progressbar" class="progress-bar progress-bar-danger"></div>
                    </div>
                </td>
                <td><strong>69.49%</strong>
                    <div class="progress progress-striped active">
                        <div style="width: 69.49%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="69.49" role="progressbar" class="progress-bar progress-bar-warning"></div>
                    </div>
                </td>
            </tr>
            <tr role="row" class="odd">
                <td class="sorting_1">9</td>
                <td class=" thumb"><a href="https://img.piku.co.kr/w/uploads/6HDTSv/cd1a195fd8be2ebbfd604e7ef68ba708.jpg" title="TWICE �糪" data-gallery="">
                        <div style="width:100%;height:100px;background-size:cover;background-position:center top;background-image:url(https://img.piku.co.kr/w/uploads/6HDTSv/b0593c17b34878450ca9f319d652c74b.jpg)"></div>
                    </a></td>
                <td><strong>TWICE �糪</strong></td>
                <td><strong>7.15%</strong>
                    <div class="progress progress-striped active">
                        <div style="width: 7.15%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="7.15" role="progressbar" class="progress-bar progress-bar-danger"></div>
                    </div>
                </td>
                <td><strong>71.94%</strong>
                    <div class="progress progress-striped active">
                        <div style="width: 71.94%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="71.94" role="progressbar" class="progress-bar progress-bar-warning"></div>
                    </div>
                </td>
            </tr>
            <tr role="row" class="even">
                <td class="sorting_1">10</td>
                <td class=" thumb"><a href="https://img.piku.co.kr/w/uploads/6HDTSv/b2174f6b8ef3df4517139ae7db38883a.jpg" title="TWICE ����" data-gallery="">
                        <div style="width:100%;height:100px;background-size:cover;background-position:center top;background-image:url(https://img.piku.co.kr/w/uploads/6HDTSv/0059e37d0ac118388cffe4a09ec82a20.jpg)"></div>
                    </a></td>
                <td><strong>TWICE ����</strong></td>
                <td><strong>6.84%</strong>
                    <div class="progress progress-striped active">
                        <div style="width: 6.84%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="6.84" role="progressbar" class="progress-bar progress-bar-danger"></div>
                    </div>
                </td>
                <td><strong>71.04%</strong>
                    <div class="progress progress-striped active">
                        <div style="width: 71.04%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="71.04" role="progressbar" class="progress-bar progress-bar-warning"></div>
                    </div>
                </td>
            </tr>
        </tbody>
    </table>
    <div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate"><a class="paginate_button previous disabled" aria-controls="DataTables_Table_0" data-dt-idx="0" tabindex="0" id="DataTables_Table_0_previous">Previous</a><span><a class="paginate_button current" aria-controls="DataTables_Table_0" data-dt-idx="1" tabindex="0">1</a><a class="paginate_button " aria-controls="DataTables_Table_0" data-dt-idx="2" tabindex="0">2</a><a class="paginate_button " aria-controls="DataTables_Table_0" data-dt-idx="3" tabindex="0">3</a><a class="paginate_button " aria-controls="DataTables_Table_0" data-dt-idx="4" tabindex="0">4</a><a class="paginate_button " aria-controls="DataTables_Table_0" data-dt-idx="5" tabindex="0">5</a><span class="ellipsis">��</span><a class="paginate_button " aria-controls="DataTables_Table_0" data-dt-idx="6" tabindex="0">40</a></span><a class="paginate_button next" aria-controls="DataTables_Table_0" data-dt-idx="7" tabindex="0" id="DataTables_Table_0_next">Next</a></div>
</div>
                    
                    <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;" src="img/undraw_posting_photo.svg" alt="">
                  </div>
                  <p>Add some quality, svg illustrations to your project courtesy of <a target="_blank" rel="nofollow" href="https://undraw.co/">unDraw</a>, a constantly updated collection of beautiful svg images that you can use completely free and without attribution!</p>
                  <a target="_blank" rel="nofollow" href="https://undraw.co/">Browse Illustrations on unDraw &rarr;</a>
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
	
   <!-- Page level custom scripts -->
	<script src="${url}resources/js/demo/chart-area-demo.js"></script>
	<script src="${url}resources/js/demo/chart-pie-demo.js"></script>

</body>

</html>
a
          