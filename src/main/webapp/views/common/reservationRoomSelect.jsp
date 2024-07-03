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
#calendar-background {
	background: white;
	width: 100%;
	padding: 45px;
	height: 85%;
	margin: auto;
	box-shadow: 10px 10px 20px rgba(0, 0, 0, 0.25);
	/* X, Y, Blur, Spread, Color */
}

table {
	width: 78%;
	height: 70%;
	margin: auto;
	text-align: center;
}

td {
	width: 10%;
	border: 1px solid black;
	cursor: pointer;
	border: 1px solid black;
}

.selected {
	background: #7a70ba;
	opacity: 0.9;
	color: white;
	cursor: default;
}

.closed {
	background: #f7f7f7 ;
	cursor: default;
	pointer-events: none;
}

.btnDisable {
	background: gray !important;
	border-color: gray !important;
	cursor: default !important;
}

#peopleSelect {
	text-align: center;
	display: flex;
	align-items: center;
	flex-direction: column;
	margin: auto;
}

#peopleSelect p {
	font-size: 15px;
	font-weight: 500;
}

table p {
	font-size: 20px;
	margin-bottom: 0px;
	letter-spacing: 5px;
}

table span {
	font-size: 10px;
}
.selectorDisabled {
	pointer-events: none; /* 모든 이벤트 비활성화 */
	opacity: 0.5; /* 캘린더 불투명도 낮춤 */
	cursor: default;
}
#peopleNumber {
	cursor: default;
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
				<h4 class="f-w-700">Default dashboard</h4>
				<nav>
					<ol class="breadcrumb justify-content-sm-start align-items-center mb-0">
						<li class="breadcrumb-item"><a href="index.go"> <i data-feather="home"> </i></a></li>
						<!-- do: 경로명 변경 -->
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
					<div class="d-flex" id="calendar-background">
						<!-- jeong : 사이드바 시작 -->
						<div class="sidebar-left-wrapper" style="width: 15%; padding-right: 12px; height: 100%;">
							<ul class='sidebar-left-icons nav nav-pills' id='add-product-pills-tab' role='tablist'>
								<li class='nav-item'><a class='nav-link'>
										<div class='nav-rounded'>
											<div class='product-icons'>
												<svg class='stroke-icon'>
                                   			<use href='/assets/svg/icon-sprite.svg#stroke-calendar'></use>
                                 			</svg>
											</div>
										</div>
										<div class='product-tab-content'>
											<h5>날짜 선택</h5>
										</div>
								</a></li>
								<li class='nav-item'><a class='nav-link  active'>
										<div class='nav-rounded'>
											<div class='product-icons'>
												<svg class='stroke-icon'>
                                   			<use href='/assets/svg/icon-sprite.svg#stroke-home'></use>
                                 			</svg>
											</div>
										</div>
										<div class='product-tab-content'>
											<h5>회의실 선택</h5>
										</div>
								</a></li>
								<li class='nav-item'><a class='nav-link'>
										<div class='nav-rounded'>
											<div class='product-icons'>
												<svg class='stroke-icon'>
                                   			<use href='/assets/svg/icon-sprite.svg#orders'> </use>
                                 			</svg>
											</div>
										</div>
										<div class='product-tab-content'>
											<h5>예약 완료</h5>
										</div>
								</a></li>
							</ul>
						</div>
						<!-- jeong : 사이드바 끝 -->
						<div class="col-7 m-15">
							<br /> <br /> <br />
							<table>
								<tr>
									<td rowspan="2" id="room_1" onClick="selectRoom(1)">
										<p>회의실 A</p>
									</td>
									<td rowspan="2" id="room_2" onClick="selectRoom(2)">
										<p>회의실 B</p>
									</td>
									<td id="room_3" onClick="selectRoom(3)">
										<p>회의실 C</p>
									</td>
									<td id="room_4" onClick="selectRoom(4)">
										<p>회의실 D</p>
									</td>
								</tr>
								<tr>
									<td id="room_5" onClick="selectRoom(5)">
										<p>회의실 E</p>
									</td>
									<td id="room_6" onClick="selectRoom(6)">
										<p>회의실 F</p>
									</td>
								</tr>
								<tr>
									<td id="room_7" onClick="selectRoom(7)">
										<p>회의실 G</p>
										<!-- <span>예약 가능한 인원 수가 가득 찼습니다</span> -->
									</td>
									<td id="room_8" onClick="selectRoom(8)">
										<p>회의실 H</p>
										<!-- <span>예약 가능한 인원 수가 가득 찼습니다</span> -->
									</td>
									<td colspan="2" id="room_9" onClick="selectRoom(9)">
										<p>회의실 I</p>
									</td>
								</tr>
							</table>
						</div>
						<div id="peopleSelect">
							<!-- <p>회의실 예약인원을 선택해주세요</p> -->
							<p id="selectormsg">먼저 예약하실 회의실을 선택해주세요</p>
							<div class="card-body common-flex">
								<div id="peopleSelector" class="touchspin-wrapper selectorDisabled">
									<button class="decrement-touchspin btn-touchspin touchspin-primary">
										<i class="fa fa-minus"> </i>
									</button>
									<input class="input-touchspin spin-outline-primary" id="peopleNumber" type="number" value="1" readonly>
									<button class="increment-touchspin btn-touchspin touchspin-primary">
										<i class="fa fa-plus"> </i>
									</button>
								</div>
							</div>
							<br/>
							<br/>
							<br/>
							<form id="rsvForm" action="/reservation/register.do" method="POST">
								<input type="hidden" name="selectedRoomNo">
								<input type="hidden" name="selectedPeopleNumber">
								<button id="rsvBtn" onClick="rsvRoom()" class="btnDisable btn btn-primary btn-lg" type="button">회의실 예약</button>
							</form>
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
	<!-- Sweetalert js -->
	<script src='/assets/js/sweet-alert/sweetalert.min.js'></script>
	<script>
		new WOW().init();
	</script>
	<script>
		var errorMsg = '${errorMsg}';
		
		if (errorMsg != '') {
			Swal.fire(errorMsg);
		}
	</script>
	<script>
	var getInputByClass = document.getElementsByClassName("input-touchspin");
	var selectedPeopleNumber = 1;
	var isIncrement = document.querySelector(".increment-touchspin");
	var isDecrement = document.querySelector(".decrement-touchspin");
	var beforeSelectRoomEl = null;
	var selectedRoomNo = 0;
	
	// 미리 회의실 데이터를 JSON 으로 가져와서 저장해두기 키 밸류 형태로
	var roomData = JSON.parse('${roomData}');
	
	drawRoomData();
	function drawRoomData() {
		roomData.forEach(room => {
			console.log(room);
			const roomEl = document.querySelector('#room_' + room.idxMeetingroom)
			roomEl.innerHTML += '<p>최대 ' + room.mrPeople + '명</p>';
			if (room.isReservation == 0) {
				roomEl.classList.add('closed');
				roomEl.innerHTML += '<br/><p style="font-size: 13px;">이미 예약된<br/> 회의실입니다</p>';
			}
			
		});		
	}
	
	isIncrement.addEventListener("click", () => {
		if (selectedPeopleNumber >= 99) {
			return;
		}
		if (selectedRoomNo != 0) {
			if (selectedPeopleNumber >=
					roomData[selectedRoomNo - 1].mrPeople) {
				return;
			}
		}
		document.querySelector("#peopleNumber").value = ++selectedPeopleNumber;
	});
	
	isDecrement.addEventListener("click", () => {
		if (selectedPeopleNumber - 1 <= 0) {
			return;
		}
		document.querySelector("#peopleNumber").value = --selectedPeopleNumber;
	});	
	
	function selectRoom(roomNo) {
		console.log(roomNo);
		if (beforeSelectRoomEl != null) {			
			beforeSelectRoomEl.classList.remove('selected');
		}
		const selectedRoomEl = document.querySelector('#room_' + roomNo);
		console.log(selectedRoomEl);
		selectedRoomEl.classList.add('selected');
		
		beforeSelectRoomEl = selectedRoomEl;
		document.querySelector('#rsvBtn').classList.remove('btnDisable');
		
		
		// 여기서 예약 인원 수를 제한해주어야한다
		// 회의실 이용가능한 최대 인원 < 예약 인원 수 가 true 라면 최대 인원 수로 강제로 내린 후
		// 사용자에게 알림을 주어야한다.
/* 		if (roomData.get(roomNo + 1).isReservation == 0) {
			
		} */

		selectedRoomNo = roomNo;
		if (selectedPeopleNumber >=
				roomData[selectedRoomNo - 1].mrPeople) {
			selectedPeopleNumber = roomData[selectedRoomNo - 1].mrPeople;
			document.querySelector("#peopleNumber").value = selectedPeopleNumber;
		}
		document.querySelector('#peopleSelector').classList.remove('selectorDisabled');
		document.querySelector('#selectormsg').innerHTML = '예약 인원을 선택해주세요';
	}
	
	function rsvRoom() {
		// 선택한 회의실이 없을 경우 
		if (selectedRoomNo == 0) {
			Swal.fire('예약하실 회의실을 선택해주세요!');
			return;
		// 예약 인원 수가 
		}
		console.log(selectedRoomNo);
		console.log(selectedPeopleNumber);
		
		document.querySelector('input[name="selectedRoomNo"]').value = selectedRoomNo;
		document.querySelector('input[name="selectedPeopleNumber"]').value = selectedPeopleNumber;
		document.querySelector('#rsvForm').submit();
	}



		
	</script>
</body>
</html>