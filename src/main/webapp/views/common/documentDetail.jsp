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
<script src='https://code.jquery.com/jquery-3.6.0.min.js'></script>
<!-- Bootstrap css-->
<link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/bootstrap.css'/>">
<link href='https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css' rel='stylesheet'>
<script src='https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js'></script>
<!-- App css-->
<link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/style.css'/>">
<link id="color" rel="stylesheet" href="<c:url value='/assets/css/color-1.css'/>" media="screen">
<!-- Responsive css-->
<link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/responsive.css'/>">
<style>
#document {
	width: 70%;
	height: 950px;
	border: 1px solid;
	background: white;
}

#form-document {
	width: 100%;
	height: 950px;
	border: none;
}

.area {
	width: 80%;
	border-top: 2px solid #bfc0c1;
	background: #fdfeff;
	padding-top: 25px;
	margin: 50px auto;
	border-top: 2px solid #bfc0c1;
}

.main {
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	transition: box-shadow 0.3s ease-in-out;
	border: none;
	padding-bottom: 30px;
}

.documentBtn {
	font-weight: 500;
	font-size: 16px;
	margin: 0 10 0 10;
}

#rejectionBtn {
	background: white !important;
	border-color: #7a70ba !important;
	color: #7a70ba;
}

table {
	border-collapse: collapse;
	border: 1px solid black;
	text-align: center;
	margin-bottom: 20px;
	width: 500px;
}

td, tr {
	border: 1px solid black;
}

.approvalDateTime {
	font-size: 10px;
}

#signatureModal {
	top: 15%;
}

#signature-pad {
	width: 100%;
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
					<div class="area main">
						<!-- [jeong] 버튼 시작 -->
						<div class="area d-flex justify-content-between" style="padding: 20 10 20 10; border: none;">
							<div class="d-flex justify-content-start">
								<button type="button" class="btn btn-primary documentBtn">목록으로 이동하기</button>
							</div>
							<div class="d-flex justify-content-end">
								<button type="button" class="btn btn-primary documentBtn">회수하기</button>
								<button type="button" class="btn btn-primary documentBtn">PDF로 내려받기</button>
							</div>
						</div>
						<!-- [jeong] 버튼 끝 -->
						<!-- [jeong] 결재 라인 테이블 시작 -->
						<div class="d-flex justify-content-end" style="width: 70%; margin: auto;'">
							<table>
								<tr style="background: #eaeaea;">
									<td rowspan="2">
										결<br>재
									</td>
									<td>기안</td>
									<td>대리</td>
									<td>부장</td>
									<td>대표이사</td>
								</tr>
								<tr>
									<td>김정원</td>
									<td>
										승인<br> 김정원 <br>
										<span class="approvalDateTime">2024/06/23 09:23</span>
									</td>
									<td>
										반려<br> 김정원 <br>
										<span class="approvalDateTime">2024/06/25 14:57</span>
									</td>
									<td>
										<button type="button" class="btn btn-primary btn-xs" id="rejectionBtn">반려</button>
										<button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#signatureModal">승인</button>
									</td>
								</tr>
							</table>
						</div>
						<!-- [jeong] 결재 라인 테이블 끝 -->
						<!-- [jeong] 결재 문서 시작 -->
						<div class="d-flex justify-content-center">
							<div id="document">
								<iframe id="form-document" src="/file/${documentFileSrc}"></iframe>
							</div>
						</div>
						<!-- [jeong] 결재 문서 끝 -->
						<!-- [jeong] 첨부파일 시작 -->
						<div id="attachment" class="row area">
							<div class="col-2">
								<div class="d-flex justify-content-center">
									<h2>첨부파일</h2>
								</div>
							</div>
							<div class="col-10">
								<div class="d-flex">
									<div style="margin-right: 10px;">
										<i class="f-30 fa fa-file-excel-o font-success"></i>
									</div>
									<div>
										<h6>Backend.xls</h6>
										<p>2 Day ago, 3.0 GB</p>
									</div>
								</div>
							</div>
						</div>
						<!-- [jeong] 첨부파일 끝 -->
					</div>
				</div>
				<!-- Container-fluid Ends-->
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
			<!-- footer ends-->
			<!-- [jeong] 승인 및 전자서명 모달 시작 -->
			<div class="modal fade" id="signatureModal" tabindex="-1" role="dialog" aria-labelledby="signatureModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="signatureModalLabel">결재 서명</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<canvas id="signature-pad"></canvas>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
							<button type="button" class="btn btn-primary" onclick="clearSignature()">서명 지우기</button>
						</div>
					</div>
				</div>
			</div>
			<!-- [jeong] 승인 및 전자서명 모달 끝 -->
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
	<!-- 서명 스크립트 -->
	<script src="https://cdn.jsdelivr.net/npm/signature_pad@4.1.7/dist/signature_pad.umd.min.js"></script>
	<!-- Plugin used-->
	<script>
		new WOW().init();
	</script>
	<script>
		
		var signaturePad;
		
		$(document).ready(function () {
            const canvas = document.getElementById('signature-pad');
            resizeCanvas(canvas);
            signaturePad = new SignaturePad(canvas, {
                minWidth: 1,
                maxWidth: 5,
                penColor: 'rgb(0, 0, 0)'
            });			

		});
		
        function resizeCanvas(canvas) {
            const parent = canvas.parentNode;
            canvas.width = parent.clientWidth;
            canvas.height = 200; // 높이는 고정 또는 조정 가능
        }		
        
		function rejectionBtnClick() {
			console.log('반려 버튼 클릭 감지');
		}
	</script>
</body>
</html>