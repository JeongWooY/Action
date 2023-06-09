<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Admin</title>

  <!-- Custom fonts for this template -->
  <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="${pageContext.request.contextPath}/resources/vendor/css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="${pageContext.request.contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
	
	<c:import url="../store/layout/jquery.jsp" />
</head>
<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-danger sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="${pageContext.request.contextPath}/">
        <div class="sidebar-brand-icon rotate-n-15">
        </div>
        <div class="sidebar-brand-text mx-3">2023 Action</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/admin/admin_storeList?store_package=1">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>ADMIN</span></a>
      </li>
      
      <!-- Divider -->
      <hr class="sidebar-divider">


      
      
      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
      STORE
      </div>
      
      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsefive" aria-expanded="true" aria-controls="collapsefive">
          <i class="fas fa-fw fa-cog"></i>
          <span>스토어 관리</span>
        </a>
        
        <div id="collapsefive" class="collapse show" aria-labelledby="headingfive" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
           <h6 class="collapse-header">STORE MANAGEMENT</h6>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin_storeList?store_package=1">스토어 메뉴 관리</a>
            <a class="collapse-item active" href="${pageContext.request.contextPath}/admin/admin_storeInsert">스토어 메뉴 추가</a>
          </div>
        </div>
      </li>
      

      
      
            <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>


    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>



          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>



            <div class="topbar-divider d-none d-sm-block"></div>

            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <!-- <h1 class="h3 mb-2 text-gray-800">store insert</h1> -->

		<!-- ******************* 데이터 넣는 곳 *************************** -->
		<div class="container">
			<h2>상품 등록</h2>
			<form class="form-horizontal" action="/store/storeWrite" method="post" enctype="multipart/form-data" >
				<div class="form-group">
					<label class="control-label col-sm-2" for="store_name">상품명:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="store_name" placeholder="상품명을 입력하세요" name="store_name">
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="store_price">상품가격:</label>
					<div class="col-sm-10">
						<input type="number" class="form-control" id="store_price" style="IME-MODE:disabled;" placeholder="상품가격을 입력하세요" name="store_price">
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="store_note">상품구성:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="store_note" placeholder="상품구성을 입력하세요" name="store_note">
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="store_package">패키지번호:</label>
					<div class="col-sm-10">
						<select class="form-control" id="store_package" name="store_package">
							<option value="1">1.패키지</option>
							<option value="2">2.영화관람권</option>
							<option value="3">3.콤보</option>
							<option value="4">4.팝콘</option>
							<option value="5">5.음료</option>
							<option value="6">6.스낵</option>
						</select>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="store_img">상품이미지:</label>
					<div class="col-sm-10">
						<input type="file" class="form-control" id="store_img" name="file"> <!-- controller에서 MultipartFile file로 받으니까 name도 file로 해줘야함 -->
					</div>
					
					<div class="select_img"><img alt="" src=""></div>	
					
					<script type="text/javascript">
					$('#store_img').change(function() {
						if(this.files && this.files[0]){
							var reader = new FileReader;
							reader.onload = function(data) {
								$('.select_img img').attr("src", data.target.result).width(300);
							}
							reader.readAsDataURL(this.files[0]);
						}
					});
					
					 function checkForm() {
					        var store_name = $('#store_name').val();
					        var store_price = $('#store_price').val();
					        var store_note = $('#store_note').val();
					        var alert_msg = "";

					        if (!store_name) {
					            alert_msg += '상품명을 입력하세요.\n';
					        }

					        if (!store_price) {
					            alert_msg += '상품가격을 입력하세요.\n';
					        }

					        if (!store_note) {
					            alert_msg += '상품구성을 입력하세요.\n';
					            
					        }

					        if (alert_msg !== "") {
					            alert(alert_msg);
					            return false;
					        }

					        return true;
					    }
					</script>
					
				</div>
				
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="submit" class="btn" value="등록"  onclick="return checkForm()" style="position: absolute; right: 13px; background-color: #4e73df; color: #fff;">
					</div>
				</div>
			</form>
		</div>
		<!-- ********************** 데이터 끝  *************************** -->


        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>2023 Action</span>
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
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="${pageContext.request.contextPath}/resources/vendor/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="${pageContext.request.contextPath}/resources/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="${pageContext.request.contextPath}/resources/vendor/js/demo/datatables-demo.js"></script>

</body>

</html>
