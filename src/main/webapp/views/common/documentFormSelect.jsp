<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><html>
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
<link id="color" rel="stylesheet" href="<c:url value='/assets/css/color-1.css'/>" media="screen">
<!-- Responsive css-->
<link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/responsive.css'/>">
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
	<div class="tap-top">
		<i data-feather="chevrons-up"></i>
	</div>
	<!-- tap on tap ends-->
	<!-- page-wrapper Start-->
	<div class="page-wrapper compact-wrapper" id="pageWrapper">
		<div class="page-header row">
			<div class="header-logo-wrapper col-auto">
				<div class="logo-wrapper">
					<a href="index.go"><img class="img-fluid for-light" src="/assets/images/logo/logo.png" alt="" /><img class="img-fluid for-dark" src="/assets/images/logo/logo_light.png" alt="" /></a>
				</div>
			</div>
			<div class="col-4 col-xl-4 page-title">
				<h4 class="f-w-700">Default dashboard</h4>
				<nav>
					<ol class="breadcrumb justify-content-sm-start align-items-center mb-0">
						<li class="breadcrumb-item"><a href="index.go"> <i data-feather="home"> </i></a></li>
						<li class="breadcrumb-item f-w-400">Dashboard</li>
						<li class="breadcrumb-item f-w-400 active">Default</li>
					</ol>
				</nav>
			</div>
			<!-- Page Header Start -->
			<%@ include file="../main/common_top.jsp"%>
			<!-- Page Header Ends -->
		</div>
		<!-- Page Body Start-->
		<div class="page-body-wrapper">
			<!-- Page Sidebar Start-->
			<%@ include file="../main/common_sidebar.jsp"%>
			<!-- Page Sidebar Ends-->
			<div class="page-body">
				<!-- Container-fluid starts-->
				<div class="container-fluid default-dashboard">
					<div class="row h-100">
						<!-- jeong : 문서 작성 사이드바 시작 -->
						<div class="col-2 sidebar-left-wrapper">
							<ul class="sidebar-left-icons nav nav-pills" id="add-product-pills-tab" role="tablist">
								<li class="nav-item"><a class="nav-link active">
										<div class="nav-rounded">
											<div class="product-icons">
												<svg class="stroke-icon">
                                    			<use href="/assets/svg/icon-sprite.svg#product-detail"></use>
                                  			</svg>
											</div>
										</div>
										<div class="product-tab-content">
											<h5>결제 서류 선택</h5>
										</div>
								</a></li>
								<li class="nav-item"><a class="nav-link">
										<div class="nav-rounded">
											<div class="product-icons">
												<svg class="stroke-icon">
                                    			<use href="/assets/svg/icon-sprite.svg#pencil"></use>
                                  			</svg>
											</div>
										</div>
										<div class="product-tab-content">
											<h5>서류 작성</h5>
										</div>
								</a></li>
								<li class="nav-item"><a class="nav-link">
										<div class="nav-rounded">
											<div class="product-icons">
												<svg class="stroke-icon">
                                   				<use href="/assets/svg/icon-sprite.svg#attchment"></use>
                                  			</svg>
											</div>
										</div>
										<div class="product-tab-content">
											<h5>참고 자료 첨부</h5>
										</div>
								</a></li>
								<li class="nav-item"><a class="nav-link">
										<div class="nav-rounded">
											<div class="product-icons">
												<svg class="stroke-icon">
                                    			<use href="/assets/svg/icon-sprite.svg#print"> </use>
                                  			</svg>
											</div>
										</div>
										<div class="product-tab-content">
											<h5>작성 완료</h5>
										</div>
								</a></li>
							</ul>
						</div>
						<!-- jeong : 문서 작성 사이드바 끝 -->

						<!-- jeong : 양식 선택 시작 -->

						<div class="col-10 h-100">
							<div class="row effective-card">
								<div class="col-xxl-4 col-sm-8 box-col-3 xl-4">
									<div class="card common-hover">
										<div class="card-body">
											<a class="effect-card" href="/document/1/write.go" style="display: flex; align-items: center; flex-direction: column;">
												<br/>
												<img class="img-fluid" src="/assets/images/document/chair.png" alt="" width="100px" height="100px">
												<br/>
												<br/>
												<h2 class="text-truncate">연차 및 휴가 신청서</h2>
											</a>
										</div>
									</div>
								</div>
								<div class="col-xxl-4 col-sm-8 box-col-3 xl-4">
									<div class="card common-hover">
										<div class="card-body">
											<a class="effect-card" href="/document/2/write.go" style="display: flex; align-items: center; flex-direction: column;">
												<br/>
												<img class="img-fluid" src="/assets/images/document/contract-document.png" alt="" width="100px" height="100px">
												<br/>
												<br/>
												<h2 class="text-truncate">계약서</h2>
											</a>
										</div>
									</div>
								</div>								
								<div class="col-xxl-4 col-sm-8 box-col-3 xl-4">
									<div class="card common-hover">
										<div class="card-body">
											<a class="effect-card" href="/document/3/write.go" style="display: flex; align-items: center; flex-direction: column;">
												<br/>
												<img class="img-fluid" src="/assets/images/document/shopping-cart.png" alt="" width="100px" height="100px">
												<br/>
												<br/>
												<h2 class="text-truncate">기자재 구입 요청서</h2>
											</a>
										</div>
									</div>
								</div>
								<div class="col-xxl-4 col-sm-8 box-col-3 xl-4">
									<div class="card common-hover">
										<div class="card-body">
											<a class="effect-card" href="/document/4/write.go" style="display: flex; align-items: center; flex-direction: column;">
												<br/>
												<img class="img-fluid" src="/assets/images/document/document.png" alt="" width="100px" height="100px">
												<br/>
												<br/>
												<h2 class="text-truncate">보고서</h2>
											</a>
										</div>
									</div>
								</div>																														
							</div>
						</div>
						<!-- jeong : 양식 선택 끝 -->
					</div>
				</div>
				<!-- Container-fluid ends-->
			</div>
			<!-- footer start-->
			<footer class="footer">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12 footer-copyright d-flex flex-wrap align-items-center justify-content-between">
							<p class="mb-0 f-w-600">
								Copyright <span class="year-update"> </span> Â© Mofi theme by pixelstrap
							</p>
							<p class="mb-0 f-w-600">
								Hand crafted & made with
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
	<script>
		new WOW().init();
	</script>
	<script>
		var msg = '${msg}';
		if (msg != '') {
			alert(msg);
		}
	</script>
</body>
</html>