<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
    <link href="${url}resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
    type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${url}resources/css/sb-admin-2.min.css" rel="stylesheet">
    <link href="${url}resources/css/fileupload.css" rel="stylesheet">
    <link href="${url}resources/css/button.css" rel="stylesheet">
    <style>
#loading {
 width: 100%;  
 height: 100%;  
 top: 0px;
 left: 0px;
 position: fixed;  
 display: block;  
 opacity: 0.7;  
 background-color: #fff;  
 z-index: 99;  
 text-align: center; } 
  
#loading-image {  
 position: absolute;  
 top: 50%;  
 left: 50%; 
 z-index: 100; }
</style>



</head>
<!--
Copyright (c) 2020 by Aaron Vanston (https://codepen.io/aaronvanston/pen/yNYOXR)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
-->

<body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- 메인이름  -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
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
            <div class="sidebar-heading">얼굴인식 기능</div>

            <!-- 서브 메뉴 - 닮은 연예인 찾기 -->
            <li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"> <i class="fas fa-fw fa-cog"></i> <span>얼굴 등록하기</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <!-- 서브 메뉴의 서브 기능 -->
                        <h6 class="collapse-header">Register my face :</h6>
                        <a class="collapse-item" href="${url}my_face" >내 얼굴 인식</a> <a class="collapse-item" href="${url}celebrity_list">연예인 목록 확인</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities"> <i class="fas fa-fw fa-wrench"></i> <span>게시판</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">notice board :</h6>
                        <a class="collapse-item" href="total_list.html">전체 글 보기</a> <a class="collapse-item" href="${url}test">자랑글</a>
                    </div>
                </div>
            </li>

            <!-- 메인메뉴와 메인메뉴 2 사이 구분선 -->
            <hr class="sidebar-divider">

            <!-- 메인메뉴 2 설명 -->
            <div class="sidebar-heading">사용자의 소리</div>

            <!-- 서브 메뉴 - 의견 보내기 -->
            <li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages"> <i class="fas fa-fw fa-folder"></i> <span>의견보내기</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <!-- 서브 메뉴의 서브 기능 -->
                        <h6 class="collapse-header">Opinion :</h6>
                        <a class="collapse-item" href="modify.html">수정 내역</a> <a class="collapse-item" href="modify_list.html">의견 게시판</a> <a class="collapse-item" href="send.html">의견 보내기</a>
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
                        <h1 class="h3 mb-0 text-gray-800">내 얼굴 인식</h1>
                    </div>

                    <!-- Illustrations -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">내 얼굴 등록하기</h6>
                        </div>
                        <div class="card-body">
                        	<div id = celebrity_div class="row" style="background-color:white;margin:0px;padding:0;margin-top:0px;margin-bottom:0px;border-bottom:0px dashed #e1e1e1;padding-top:15px;padding-bottom:0px;">
    <div style="width:40%;float:left">
        <div style="width:80%;min-height:280px;margin:0 auto;background-image:url(<c:url value="/resources/img/test_image1.jpg"/>);background-position:center top;background-size:cover;background-repeat:no-repeat;padding-top:55px;margin-top:7px;margin-bottom:25px;">
        </div>
    </div>
    <div style="width:60%;float:left;padding:5px;padding-top:10px;padding-bottom:10px;padding-right:0px;">
        <p align="left" style="margin:0px;margin-top:0px;margin-bottom:10px;"><span style="font-size:1.3em;letter-spacing:-1px;color:black;">니온 얼굴인식 결과</span></p>
        <p align="left" style="margin:0px;"><span style="font-size:2.5em;letter-spacing:-1px;color:black;font-weight:bold;">51세 남성</span></p>

        <style>
            .progress {
                height: 20px;
                margin-bottom: 20px;
                overflow: hidden;
                background-color: #f5f5f5;
                border-radius: 4px;
                -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
                box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
            }

            .progress-bar {
                float: left;
                width: 0;
                height: 100%;
                font-size: 12px;
                line-height: 20px;
                color: #fff;
                text-align: center;
                background-color: #00a6f5;
                -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .15);
                box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .15);
                -webkit-transition: width .6s ease;
                -o-transition: width .6s ease;
                transition: width .6s ease;
            }

            .progress-bar2 {
                float: left;
                width: 0;
                height: 100%;
                font-size: 12px;
                line-height: 20px;
                color: #fff;
                text-align: center;
                background-color: #fc5832;
                -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .15);
                box-shadow: inset 0 -1px 0 rgba(0, 0, 0, .15);
                -webkit-transition: width .6s ease;
                -o-transition: width .6s ease;
                transition: width .6s ease;
            }

        </style>
        <div style="widht:100%;min-height:40px;position:relative;margin-top:20px;padding-left:30px;">
            <div class="progress" style="width:85%;margin:0;float:left;">
                <div class="progress-bar progress-bar-warning" style="width:100%">
                </div>

                <div style="width:25px;height:25px;position:absolute;left:0px;bottom:20px;float:left;text-align:right;padding-right:5px;">
                    <i class="fas fa-mars" style="font-size:2em;color:#00a6f5;"></i>
                </div>
            </div>
        </div>
        <div style="widht:100%;min-height:40px;position:relative;padding-left:30px;">
            <div class="progress" style="width:85%;margin:0;;float:left;">
                <div class="progress-bar2 progress-bar-warning" style="width:0%">
                </div>

                <div style="width:25px;height:25px;position:absolute;left:-5px;bottom:20px;float:left;text-align:right;padding-right:5px;">
                    <i class="fas fa-venus" style="font-size:2em;color:#fc5832;"></i>
                </div>
            </div>
        </div>

        <div style="widht:100%;min-height:40px;position:relative;padding-left:30px;">
            <div class="progress" style="width:85%;margin:0;;float:left;">
                <div class="progress-bar2 progress-bar-warning" style="width:90%;background-color:#ffca00">
                </div>

                <div style="width:25px;height:25px;position:absolute;left:-5px;bottom:20px;float:left;text-align:right;padding-right:5px;">
                    <i class="fas fa-grin-beam" style="font-size:2em;color:#ffca00;"></i>
                </div>
            </div>
        </div>

    </div>
</div>
                        	
                            <script class="jsbin" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
                            <div class="file-upload">
                                <button class="file-upload-btn" type="button" onclick="$('.file-upload-input').trigger( 'click' )">이미지 불러오기</button>
                                <div id="loading"><img id="loading-image" src='${url}resources/img/loadingBar.gif' alt="Loading..." /></div>
                                <div class="image-upload-wrap">
                                    <form id="uploadForm" enctype="multipart/form-data" method="GET" action="/FaceDetection_WebService/upload.do">
                                        <input class="file-upload-input" type='file' id="file1" name="file1" onchange="readURL(this);" accept="image/*" />
                                    </form>
                                    <div class="drag-text">
                                        <h3>분석 할 이미지를 해당 영역에 드로그 앤 드롭 혹은 이미지 불러오기를 클릭해주세요.</h3>
                                    </div>
                                </div>
                                <div id = "file_upload_content"  class="file-upload-content">
                                    <img class="file-upload-image" src="#" alt="your image" />
                                    <div class="image-title-wrx`ap">
                                        <button type="button" onclick="removeUpload()" class="remove-image">초기화 </button>
                                        <button type="button" onclick="start()" class="detect-image">분석하기</button>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-content" style="margin-bottom:0px">
    <div id="home" class="tab-pane active cont">

        <div style="width:100%;min-height:350px;margin:0 auto;background-color:white;border-radius:10px;padding-top:10px;">
            <div style="width:50%;float:left;min-height:340px;padding-left:0px;padding-right:25px;">

                <p align="center" style="margin:0px;margin-top:22px;"><span style="font-size:3.1em;letter-spacing:-1px;color:#ffac00;font-weight:bold;">100%</span></p>
                <p align="center" style="margin:0px;margin-top:10px;"><span style="font-size:2.4em;letter-spacing:-1px;color:black;font-weight:bold;">송강호</span></p>

                <p align="center" style="margin:0px;margin-top:10px;margin-bottom:15px;"><span style="font-size:1.1em;letter-spacing:-1px;color:black;">혹시 연예인 본인은 아니세요?</span></p>
                
                 
            </div>
           
           <div style="width:50%;float:left;min-height:283px;padding-right:0px;margin-bottom:10px;">
           <form name = 'writeForm' action = "${url}board/celebrityWrite" method = 'POST'>
              <button class="button" onclick = 'javascript:document.writeForm.submit();' ><span>방명록 남기기 </span></button>
              <input type='hidden' id = 'hidden' name = 'id' value=''/>           		
           </form>
    		
			</div>
        </div>
        
        
        

    </div>


   

    
                            
                            </div>
                            <div>

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
    <a class="scroll-to-top rounded" href="#page-top"> <i class="fas fa-angle-up"></i>
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
    <script>
        function readURL(input) {
            if (input.files && input.files[0]) {

                var reader = new FileReader();

                reader.onload = function(e) {
                    $('.image-upload-wrap').hide();

                    $('.file-upload-image').attr('src', e.target.result);
                    $('.file-upload-content').show();
                    
                 
                };

                reader.readAsDataURL(input.files[0]);
                $('.file-upload-btn').hide();

            } else {
                removeUpload();
            }
        }

        $(document).ready(function() {
        	$('#loading').hide();
        	$('#celebrity_div').hide();
        	$('#home').hide();
        });


      

        function removeUpload() {
            $('.file-upload-input').replaceWith($('.file-upload-input').clone());
            $('.file-upload-content').hide();
            $('.image-upload-wrap').show();
            $('.file-upload-btn').show();
        }
        $('.image-upload-wrap').bind('dragover', function() {
            $('.image-upload-wrap').addClass('image-dropping');
        });
        $('.image-upload-wrap').bind('dragleave', function() {
            $('.image-upload-wrap').removeClass('image-dropping');
        });

    </script>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript">
        function start() {
        	$('#loading').show();
            var form = new FormData(document.getElementById('uploadForm'));
            $.ajax({
                url: "${url}upload.do", //컨트롤러 URL
                enctype: "multipart/form-data",
                data: form,
                dataType: 'json',
                processData: false,
                contentType: false,
                type: 'POST',
                success: function(response) {
                    alert("success");
                    alert(response.faceResult.age);
                    $('#celebrity_div').show();
                    $('#home').show();
                    $('#hidden').val(response.faceResult.age);
                    console.log(response);
                },
                error: function(jqXHR) {
                    alert(jqXHR.status);
                    alert(jqXHR.statusText);
                    alert(jqXHR.responseText);
                },
                complete: function(data, textStatus) {
                    alert("complete");
                    $('#loading').hide();
                    $('.detect-image').hide();
                    $('#file_upload_content').hide();
                }
            });
        };

    </script>


</body>

</html>
