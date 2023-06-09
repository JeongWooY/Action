<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/admin/admin_storeManage.css" rel="stylesheet">
</head>
<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-danger sidebar sidebar-dark accordion" id="accordionSidebar" >

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="${pageContext.request.contextPath}/">
        <div class="sidebar-brand-icon rotate-n-15">
        </div>
        <div class="sidebar-brand-text mx-3">2023 Action</div>
      </a>

      
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
          <span class="active">스토어 관리</span>
        </a>
        
        <div id="collapsefive" class="collapse show" aria-labelledby="headingfive" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
           <h6 class="collapse-header">STORE MANAGEMENT</h6>
            <a class="collapse-item active" href="${pageContext.request.contextPath}/admin/admin_storeList?store_package=1">스토어 메뉴 관리</a>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin_storeInsert">스토어 메뉴 추가</a>
          </div>
        </div>
      </li>
      
      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
      STORE LiST
      </div>
      
      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsefive" aria-expanded="true" aria-controls="collapsefive">
          <i class="fas fa-fw fa-cog"></i>
          <span class="active">스토어 목록</span>
        </a>
        
        <div id="collapsefive" class="collapse show" aria-labelledby="headingfive" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
           <h6 class="collapse-header">STORE</h6>
            <a class="collapse-item active" href="${pageContext.request.contextPath}/store/storeList">스토어 메뉴</a>
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



        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->

         
         <!-- ******************* 데이터 넣는 곳 *************************** -->
        <section>
			<div id="container">
				<div id="contents">
					<div class="form-group">
						<label class="control-label col-sm-2" for="cart_package" style="margin-bottom: 10px;">패키지분류:</label>
						<div class="col-sm-10">
							<select class="form-control" id="cart_package" name="store_package">
								<option class="package_num" value="1">1.패키지</option>
								<option class="package_num" value="2">2.영화관람권</option>
								<option class="package_num" value="3">3.콤보</option>
								<option class="package_num" value="4">4.팝콘</option>
								<option class="package_num" value="5">5.음료</option>
								<option class="package_num" value="6">6.스낵</option>
							</select>
						</div>
					</div>
				<script type="text/javascript">
				var package_num = ${param.store_package};
				$('.package_num').each(function() {
					if($(this).val() == package_num){
						$(this).prop("selected", true);
					}
				});
			/////* 클릭하면 메뉴 탭 및 내용 전환 */////////////
				$('#cart_package').change(function() {

					/* 클릭하면 해당 메뉴의 내용 불러오기 */
					var store_package = $("#cart_package option:selected").val()
					//alert(store_package);
					
					location.href="admin_storeList?store_package="+store_package;
				
				});
					
				</script>
		<!-- ------------------------------------------------------------ -->			
					<div class="cart_list_wrap">
						<p class="cart_all_wrap">
							<input type="checkbox" id="checkbox_all" class="custom_checkbox_all">
							<label for="checkbox_all">전체선택</label>
							<strong class="checkbox_num">상품번호</strong>
							<strong class="checkbox_thumbimg">상품이미지</strong>
							<strong class="checkbox_name">상품명</strong>
							<strong class="checkbox_note">상품구성</strong>
							<strong class="checkbox_price">상품금액</strong>
							<strong class="checkbox_select">선택</strong>
						</p>
		<!-- ------------------------------------------------------------ -->
						<ul class="cart_list_style">
						
							<c:forEach items="${storeList}" var="storeList">
							
								<li id="cart_item_idx_${storeList.store_num}">
									<input type="checkbox" class="cart_checkbox" id="checkbox${storeList.store_num}" value="${storeList.store_num}">
									<label for="checkbox${storeList.store_num}"></label>
									
									<span class="product_info_num">${storeList.store_num}</span>
									
									<div class="product_info_img">
										<img alt="${storeList.store_name}" src="../resources/upload/store/th/${storeList.store_thumbimg}">
										<strong class="product_info_name">${storeList.store_name}</strong>
									</div>
									
									<div class="product_info_note_wrap">
										<span class="product_info_note">${storeList.store_note}</span>
									</div>
									
									<div class="product_info_onePrice_wrap">
										<span class="product_info_onePrice"><fmt:formatNumber value="${storeList.store_price}" pattern="###,###,###" /></span>
									</div>
								
		<!-- ------------------------------------------------------------ -->
									<div class="product_info_btn_wrap">
										<a href="admin_storeUpdate?store_num=${storeList.store_num}">수정</a>
										<a href="#none" class="btn_product_del${storeList.store_num}">삭제</a>
									</div>
									
								<!-- 상품 삭제 -->
								<script type="text/javascript">
									$('.btn_product_del'+${storeList.store_num}).click(function() {
										var confirm_val = confirm("상품을 삭제하시겠습니까?");
										
										if(confirm_val){
											
											var array_check = new Array();
											array_check.push($('#checkbox'+${storeList.store_num}).val());
											
											$.ajax({
												url: "admin_storeDelete",
												type: "post",
												data: { list: array_check },
												success: function(result) {
													if(result == 1){
														alert("삭제 완료.");
														location.href = "admin_storeList?store_package=1";
													}else {
														alert("삭제 실패.");
														location.href = "admin_storeList?store_package=1";
													}
												},
												error: function() {
													alert("error");
													location.href = "admin_storeList?store_package=1";
												}
											});
										}
									});
								</script>
							
								</li>
							
							</c:forEach>
						</ul>
		<!-- ------------------------------------------------------------ -->
						<a href="#none" class="btn_del_selected">
							선택 상품 삭제
							<span class="span_btn"></span>
						</a>
						
					<script type="text/javascript">
						//체크박스 모두 선택, 해제
						$('#checkbox_all').click(function() {
							if($('#checkbox_all').prop("checked")){
								$('.cart_checkbox').prop("checked", true);
								$('.span_btn').css("display", "inline");
								$('.span_btn').text($('.cart_checkbox:checked').length);
							}else {
								$('.cart_checkbox').prop("checked", false);
								$('.span_btn').css("display", "none");
							}
						});
						//체크박스 선택, 해제
						$('.cart_checkbox').click(function() {
							//전체 선택
							if($('.cart_checkbox:checked').length == $('.cart_checkbox').length){
								$('#checkbox_all').prop("checked", true);
							}else{
								$('#checkbox_all').prop("checked", false);
							}
							//선택 상품 개수
							$('.span_btn').css("display", "inline");
							
							if($('.cart_checkbox:checked').length > 0) {
								$('.span_btn').text($('.cart_checkbox:checked').length);
							}else {
								$('.span_btn').css("display", "none");
							}
						});
						//선택 삭제
						$('.btn_del_selected').click(function() {
							var confirm_val = confirm("선택하신 상품을 삭제하시겠습니까?");
							
							if(confirm_val){
								var array_check = new Array();
								
								$('input[class="cart_checkbox"]:checked').each(function() {
									array_check.push($(this).val());
								});
								
								
								$.ajax({
									url: "admin_storeDelete",
									type: "post",
									data: { list: array_check},
									success: function(result) {
										if(result == 1){
											alert("삭제 완료.");
											location.href = "admin_storeList?store_package=1";
										}else {
											alert("삭제 실패.");
											location.href = "admin_storeList?store_package=1";
										}
									},
									error: function() {
										alert("error");
										location.href = "admin_storeList?store_package=1";
									}
								});
								
							}
						});
					</script>
						
					</div>
				</div>
			</div>
		</section>
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
