<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ko">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Mofi admin is super flexible, powerful, clean &amp; modern responsive bootstrap 5 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Mofi admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="pixelstrap">
    <link rel="icon" href="/assets/images/favicon.png" type="image/x-icon">
    <link rel="shortcut icon" href="/assets/images/favicon.png" type="image/x-icon">
    <title>Default Dashboard | Mofi - Premium Admin Template By Pixelstrap</title>
    <!-- Google font-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;300;400;500;600;700;800;900&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/font-awesome.css'/>">
    <!-- ico-font-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/icofont.css'/>">
    <!-- Themify icon-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/themify.css'/>">
    <!-- Flag icon-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/flag-icon.css'/>">
    <!-- Feather icon-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/feather-icon.css'/>">
    <!-- Plugins css start-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/slick.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/slick-theme.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/scrollbar.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/animate.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/datatables.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/date-range-picker/flatpickr.min.css'/>">
    <!-- Plugins css Ends-->
    <!-- Bootstrap css-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/bootstrap.css'/>">
    <!-- App css-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/style.css'/>">
    
    
    
    <!-- [do] css 추가 -->
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/doCommon.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/inventoryList.css'/>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    
    
    <link id="color" rel="stylesheet" href="<c:url value='/assets/css/color-1.css'/>" media="screen">
    <!-- Responsive css-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/responsive.css'/>">
  	
  	<!-- J-Query -->
  	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <style>
    .container-fluid {
		display: flex;
		justify-content: center;
	}
	
	iframe {
		border: none;
		width: 90%;
		text-align: center;
		height: 100%;
		margin-top: 5%;
	}
	
	#form {
		width: 100%;
		display: flex;
		height: 750px;
		justify-content: center;
		align-items: center;
		border: 1px solid;
		background: white;
	}
	
	#form-document {
		width: 100%;
		height: 700px; /* 원하는 높이로 설정 */
		overflow: scroll; /* 스크롤바를 항상 표시 */
		border: none; /* 테두리를 없애려면 사용 */
	}
	
	#ex9 {
		margin-top: 20px;
		display: flex;
		justify-content: center;
	}
	
	#ex9 .upload-box {
		width: 85%;
		height: 150px;
		border: 1px dashed black;
		display: flex;
		justify-content: center;
		background: white;
		align-items: center;
	}
	.upload-box span {
		font-size: 12px;
	}
	#jstree {
		overflow-y: auto;
		max-height: 300px;
		height: 290px;
		border: 1px solid #ccc;
	}
	#approvalLine {
		font-family: outfit;
		font-size: 15px;
		text-align: center;
		border: 1px #dbdbdb solid;
	}
	.approvalHr {
		color: #000000;
		background: #F4F4F4;
		font-weight: bold;
		border: 1.5px #dbdbdb solid;
	}
	#writer {
		color: #aeaeae;
	}
	
	#approvalLineHeader {
		font-size: 18px;
	}
	.no-checkbox > .jstree-checkbox {
		display: none;
	}
	.seectionBorder {
		border: 1px solid black;
	}
	
	
	
	/* [do] */
	.row {
		width: 100%;
	}
	.do-rowChild {
		display: flex;
		flex-direction: row;
	}
	.do-poSide {
		position:relative;
		width: 20%;
	}
	.do-poMain {
		position: relative;
		width: 80%;
	}
	.do-poForm {
		margin-top: 60px;
		margin-bottom: 20px;
	}
	.do-poSubmit {
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		
		margin: 200px 0;
	}
	.fa-clipboard-check {
		font-size: 80px;
		color: rgba(122, 112, 186, 0.8);
		margin: 30px 0;
	}
	.do-h4Color {
	}
  </style>
  </head>
  <body> 
    <div class="loader-wrapper"> 
      <div class="loader loader-1">
        <div class="loader-outter"></div>
        <div class="loader-inner"></div>
        <div class="loader-inner-1"></div>
      </div>
    </div>
    <!-- loader ends-->
    <!-- tap on top starts-->
    <div class="tap-top"><i data-feather="chevrons-up"></i></div>
    <!-- tap on tap ends-->
    <!-- page-wrapper Start-->
    <div class="page-wrapper compact-wrapper" id="pageWrapper">
      <div class="page-header row">
        <div class="header-logo-wrapper col-auto">
          <div class="logo-wrapper"><a href="index.go"><img class="img-fluid for-light" src="/assets/images/logo/logo.png" alt=""/><img class="img-fluid for-dark" src="/assets/images/logo/logo_light.png" alt=""/></a></div>
        </div>
        <div class="col-4 col-xl-4 page-title">
          <!-- do: 페이지명 변경 -->
          <h4 class="f-w-700">PO write</h4>
          <nav>
            <ol class="breadcrumb justify-content-sm-start align-items-center mb-0">
              <li class="breadcrumb-item"><a href="index.go"> <i data-feather="home"> </i></a></li>
              <!-- do: 경로명 변경 -->
              <li class="breadcrumb-item f-w-400">logisticsDept</li>
              <li class="breadcrumb-item f-w-400 active">PO write</li>
            </ol>
          </nav>
        </div>
        <!-- Page Header Start -->
        <%@ include file="../main/common_top.jsp" %>
        <!-- Page Header Ends -->
      </div>
      <!-- Page Body Start-->
      <div class="page-body-wrapper">
        <!-- Page Sidebar Start-->
        <%@ include file="../main/common_sidebar.jsp" %>
        <!-- Page Sidebar Ends-->
        
        
        
        
        <div class="page-body">
          <!-- Container-fluid starts-->
          <div class="container-fluid">
            <div class="row"> 
              <div class="col-sm-12"> 
                <div class="card"> 
                  <div class="card-body">
                  	<div class="card-header do-flexdirection-row">
			          <h4>발주 서류 작성</h4>
			        </div>
			        
                    
                    <div class='row h-100 w-100 do-rowChild'>
                      <!-- [do] 사이드바 -->
						<div class='col-2 sidebar-left-wrapper do-poSide' style='padding-right: 24px;'>
							<ul class='sidebar-left-icons nav nav-pills' id='add-product-pills-tab' role='tablist'>
								<li class='nav-item'><a class='nav-link'>
										<div class='nav-rounded'>
											<div class='product-icons'>
												<svg class='stroke-icon'>
                                    			<use
														href='/assets/svg/icon-sprite.svg#pencil'></use>
                                  			</svg>
											</div>
										</div>
										<div class='product-tab-content'>
											<h5>서류 작성</h5>
										</div>
								</a></li>
								<li class='nav-item'><a class='nav-link active'>
										<div class='nav-rounded'>
											<div class='product-icons'>
												<svg class='stroke-icon'>
                                    			<use
														href='/assets/svg/icon-sprite.svg#orders'> </use>
                                  			</svg>
											</div>
										</div>
										<div class='product-tab-content'>
											<h5>발주 완료</h5>
										</div>
								</a></li>
							</ul>
						</div>

						<!-- [do] 메인 -->
						<div class='col-10 h-100 do-poMain'>
							<div class='row'>
								<div class='col-1'></div>
								<div class='col-10'>
									<div class='row'>
										<div class="do-poSubmit"> 
											<i class="fa-solid fa-clipboard-check"></i>
											<h4 class="do-h4Color">발주 완료</h4>
											<p class="do-p-darkgray">'재고 관리 > 입고 내역' 을 확인해 주세요.</p>
					                    </div>
									</div>
								</div>
								<div class='col-1'></div>
							</div>
						</div>
						
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Container-fluid Ends-->
        </div>
        
        
        
        
        
        
        <!-- footer start-->
        <footer class="footer">
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-12 footer-copyright d-flex flex-wrap align-items-center justify-content-between">
                <p class="mb-0 f-w-600">Copyright <span class="year-update"> </span> Â© Mofi theme by pixelstrap  </p>
                <p class="mb-0 f-w-600">Hand crafted & made with
                  <svg class="footer-icon">
                    <use href="/assets/svg/icon-sprite.svg#footer-heart"> </use>
                  </svg>
                </p>
              </div>
            </div>
          </div>
        </footer>
      </div>
    </div>
    <!-- latest jquery-->
    <script src="/assets/js/jquery.min.js"></script>
    <!-- Bootstrap js-->
    <script src="/assets/js/bootstrap/bootstrap.bundle.min.js"></script>
    <!-- feather icon js-->
    <script src="/assets/js/icons/feather-icon/feather.min.js"></script>
    <script src="/assets/js/icons/feather-icon/feather-icon.js"></script>
    <!-- scrollbar js-->
    <script src="/assets/js/scrollbar/simplebar.js"></script>
    <script src="/assets/js/scrollbar/custom.js"></script>
    <!-- Sidebar jquery-->
    <script src="/assets/js/config.js"></script>
    <!-- Plugins JS start-->
    <script src="/assets/js/sidebar-menu.js"></script>
    <script src="/assets/js/sidebar-pin.js"></script>
    <script src="/assets/js/slick/slick.min.js"></script>
    <script src="/assets/js/slick/slick.js"></script>
    <script src="/assets/js/header-slick.js"></script>
    <script src="/assets/js/chart/apex-chart/apex-chart.js"></script>
    <script src="/assets/js/chart/apex-chart/stock-prices.js"></script>
    <script src="/assets/js/chart/apex-chart/moment.min.js"></script>
    <script src="/assets/js/notify/bootstrap-notify.min.js"></script>
    <!-- calendar js-->
    <script src="/assets/js/dashboard/default.js"></script>
    <script src="/assets/js/notify/index.js"></script>
    <script src="/assets/js/datatable/datatables/jquery.dataTables.min.js"></script>
    <script src="/assets/js/datatable/datatables/datatable.custom.js"></script>
    <script src="/assets/js/datatable/datatables/datatable.custom1.js"></script>
    <script src="/assets/js/datepicker/date-range-picker/moment.min.js"></script>
    <script src="/assets/js/datepicker/date-range-picker/datepicker-range-custom.js"></script>
    <script src="/assets/js/typeahead/handlebars.js"></script>
    <script src="/assets/js/typeahead/typeahead.bundle.js"></script>
    <script src="/assets/js/typeahead/typeahead.custom.js"></script>
    <script src="/assets/js/typeahead-search/handlebars.js"></script>
    <script src="/assets/js/typeahead-search/typeahead-custom.js"></script>
    <script src="/assets/js/height-equal.js"></script>
    <script src="/assets/js/animation/wow/wow.min.js"></script>
    <!-- Plugins JS Ends-->
    <!-- Theme js-->
    <script src="/assets/js/script.js"></script>
    <script src="/assets/js/script1.js"></script>
    <script src="/assets/js/theme-customizer/customizer.js"></script>
    <!-- Plugin used-->
    <script>new WOW().init();</script>
  </body>
  
  
<script>
	
</script>


</html>