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
<style>
#rsvList {
	background: white;
	height: 85%;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
	padding: 30px;
}

#rsvTable {
	height: 95%;
}

#rsvTitle {
	font-weight: bold;
}

#rsvList table th {
	background: #f4f7f9;
	opacity: 0.9;
}

#rsvList table {
	text-align: center;
}

#rsvList table th:first-child {
	border-top-left-radius: 10px; /* 왼쪽 상단 모서리 둥글게 */
}

#rsvList table th:last-child {
	border-top-right-radius: 10px; /* 오른쪽 상단 모서리 둥글게 */
}

#rsvList table tr:last-child td:first-child {
	border-bottom-left-radius: 10px; /* 왼쪽 하단 모서리 둥글게 */
}

#rsvList table tr:last-child td:last-child {
	border-bottom-right-radius: 10px; /* 오른쪽 하단 모서리 둥글게 */
}

.rsvTime {
	letter-spacing: 3;
	font-size: 16px;
	width: 17%;
}

.closed {
	background: gray !important;
	border-color: gray !important;
	cursor: default;
	pointer-events: none;
	opacity: 0.3;
}

.pagination li a {
	color: #7a70ba; 
}

.pagination li.active a {
	background-color: #7a70ba; 
	border-color: #7a70ba;
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
				<!-- do: 페이지명 변경 -->
				<h4 class="f-w-700">예약 내역</h4>
				<nav>
					<ol class="breadcrumb justify-content-sm-start align-items-center mb-0">
						<li class="breadcrumb-item"><a href="index.go"> <i data-feather="home"> </i></a></li>
						<!-- do: 경로명 변경 -->
						<li class="breadcrumb-item f-w-400">예약 관리</li>
						<li class="breadcrumb-item f-w-400 active">회의실 예약 내역</li>
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
					<div id="rsvList">
						<div id="rsvTable">
							<h1 id="rsvTitle">회의실 예약 내역</h1>
							<hr />
							<table class="table table-striped rsv-list-table">
								<thead>
									<tr>
										<th><span class="f-light f-w-600">번호</span></th>
										<th><span class="f-light f-w-600">예약 일자</span></th>
										<th><span class="f-light f-w-600">사용 시간</span></th>
										<th><span class="f-light f-w-600">회의실</span></th>
										<th><span class="f-light f-w-600">예약자</span></th>
										<th><span class="f-light f-w-600">예약 상태</span></th>
										<th><span class="f-light f-w-600">예약 취소</span></th>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${reservationList != 'none'}">
											<c:forEach items="${reservationList}" var="item" varStatus="status">
												<tr>
													<td>${status.count}</td>
													<td class="rsvTime">${item.reservationDate}</td>
													<td class="rsvTime" style="width: 20%;">${item.reservationTime}</td>
													<td>${item.roomName}</td>
													<td>${item.resEmpName}</td>
													<td>${item.rsvStatus}</td>
													<c:choose>
														<c:when test="${item.rsvStatus == '예약완료'}">
															<td>
																<button class="btn btn-primary btn-xs" onClick="cancel(${item.idxReservation})">예약취소</button>
															</td>
														</c:when>
														<c:otherwise>
															<td>
																<button class="btn btn-primary btn-xs closed">예약취소</button>
															</td>
														</c:otherwise>
													</c:choose>
	
												</tr>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<td colspan="7" style="text-align: center;">회의실을 예약하신 이력이 없습니다.</td>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
						</div>
						<div class="d-flex justify-content-center">								
						    <nav aria-label="Page navigation">
						        <ul class="pagination" id="pagination"></ul>
						    </nav>
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
	<!-- pagination js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twbs-pagination/1.4.2/jquery.twbsPagination.min.js"></script>
	<!-- Sweetalert js -->
	<script src='/assets/js/sweet-alert/sweetalert.min.js'></script>
	<script>
		new WOW().init();
	</script>
	<script>
		function cancel(idxReservation) {
			let data = new FormData();
			data.append('idxReservation', idxReservation);
			
	        fetch('/reservation/cancel.do', {
	            method: 'POST',
	            body: data
	        })
	        .then(response => response.json())
	        .then(data => {
	        	console.log('Success:', data);
	        	if(data.success == false) {
	        		Swal.fire({
	        			title: '예약을 취소하는 도중 오류가 발생했습니다.'
	        		}).then(function() {
	        			window.location.href='/reservation/list.go';
	        		});
	        	} else {	        		
	        		Swal.fire('성공적으로 예약을 취소했습니다.');
	        		getReservationTable();
	        	}
	        })
	        .catch(error => {
	        	console.error('Error:', error);
	        });
		}
		
		var page = 1;
		var totalPages = ${totalPages};
		
	    $('#pagination').twbsPagination({
			startPage:page,
			totalPages:totalPages, 
			visiblePages:5, 
	        first: '처음', 
	        prev: '이전',
	        next: '다음', 
	        last: '마지막', 
			onPageClick:function(evt, clickPageIdx){
				if (page != clickPageIdx) {							
					page = clickPageIdx;
					getReservationTable();
				}
			}
	    });
	    
		function getReservationTable() {
			let data = new FormData();
			data.append('page', page);
	        fetch('/reservation/paging.do', {
	            method: 'POST',
	            body: data
	        })
	        .then(response => response.json())
	        .then(data => {
	        	console.log('Success:', data);
		        drawReservationTable(data);
		        totalPages = data.totalPages;
		        page = data.page;
		        pagination();
	        })
	        .catch(error => {
	        	console.error('Error:', error);
	        });			
		}
		
		function drawReservationTable(data) {
			let content = '';
			let index = 1;
			
			if (data.reservationList.length == 0) {
				content += '<tr><td colspan="7" style="text-align: center;">회의실을 예약하신 이력이 없습니다.</td></tr>';
			} else {				
				for (row of data.reservationList) {
					content += '<tr>';
					content += '<td>' + index++ + '</td>';
					content += '<td class="rsvTime">' + row.reservationDate + '</td>';
					content += '<td class="rsvTime" style="width: 20%;">' + row.reservationTime + '</td>';
					content += '<td>' + row.roomName + '</td>';
					content += '<td>' + row.resEmpName + '</td>';
					content += '<td>' + row.rsvStatus + '</td>';
					if (row.rsvStatus == '예약완료') {
						content += '<td><button class="btn btn-primary btn-xs" onClick="cancel(' + row.idxReservation + ')">예약취소</button></td>';					
					} else {
						content += '<td><button class="btn btn-primary btn-xs closed">예약취소</button></td>';
					}
					content += '</tr>';
				}
			}
			
			document.getElementsByTagName('tbody')[0].innerHTML = content;
		}

		function pagination() {			
			$('#pagination').twbsPagination('destroy');
			$('#pagination').twbsPagination({
					startPage:page,
					totalPages:totalPages, 
					visiblePages:5, 
					first: '처음', 
					prev: '이전',
					next: '다음', 
					last: '마지막', 
					onPageClick:function(evt, clickPageIdx){
						if (page != clickPageIdx) {							
							page = clickPageIdx;
							getReservationTable();
						}
				}
			});		
		}
	</script>
</body>
</html>