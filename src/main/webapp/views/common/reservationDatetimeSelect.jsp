<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
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
   		box-shadow: 10px 10px 20px rgba(0, 0, 0, 0.25); /* X, Y, Blur, Spread, Color */
   	} 
    
    #calendar {
    	width: 50%;
    	height: 100%;
    	margin: 0 30 0 30;
    }
    #timeTable {
    	width: 35%;
    } 
    #time {
       	height: 100%;
    }
    table {
    	width: 80%;
    	margin: auto;
    	text-align: center;
    	font-size: 20px;
    }
    td, th {
    	border: 1px solid black;
    }
    
    td {
    	height: 50px;
    }
    #time td {
    	border: 1px solid black;
    }
    #meetingRoomSelectBtn {
    	background: gray !important;
    	border-color: gray !important;
    }
	.fc-disabled {
        pointer-events: none; /* 모든 이벤트 비활성화 */
        opacity: 0.5; /* 캘린더 불투명도 낮춤 */
    }
    /* 요일 표시 부분 숨기기 */
    .fc-scrollgrid-section-header {
        display: none;
    }
    /* 셀 높이 조절 */
    .fc-timegrid-slots tr {
        height: 3.5em; /* 원하는 높이로 설정 */
    }
    /* 현재 날짜 이전은 배경색 회색으로 처리 */    
    .fc-day-past {
    	background: #f7f7f7;
    	opacity: 0.9;
    }
    .fc-toolbar-title {
    	content: 'My Custom Header Text';
    }
    .fc-day-future {
    	cursor: pointer;
    }
    .fc-timegrid-slot {
    	cursor: pointer;
    }
/*     td[data-time="18:00:00"].fc-timegrid-slot-lane {
    	background: black;
    } */
    .selectedSlot {
    	background: #ded9ff;
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
        <%@ include file="../main/common_top.jsp" %>
        <!-- Page Header Ends -->
      </div>
      <!-- Page Body Start-->
      <div class="page-body-wrapper">
        <!-- Page Sidebar Start-->
        <%@ include file="../main/common_sidebar.jsp" %>
        <!-- Page Sidebar Ends-->
        <div class="page-body" >
          <!-- Container-fluid starts-->
          <div class="container-fluid default-dashboard">
	          <div class="d-flex" id="calendar-background">
					<!-- jeong : 사이드바 시작 -->
					<div class="sidebar-left-wrapper"
						style="width:15%; padding-right: 12px; height: 100%;">
						<ul class='sidebar-left-icons nav nav-pills'
							id='add-product-pills-tab' role='tablist'>
							<li class='nav-item'><a class='nav-link active'>
									<div class='nav-rounded'>
										<div class='product-icons'>
											<svg class='stroke-icon'>
                                   			<use
													href='/assets/svg/icon-sprite.svg#stroke-calendar'></use>
                                 			</svg>
										</div>
									</div>
									<div class='product-tab-content'>
										<h5>날짜 선택</h5>
									</div>
							</a></li>
							<li class='nav-item'><a class='nav-link'>
									<div class='nav-rounded'>
										<div class='product-icons'>
											<svg class='stroke-icon'>
                                   			<use
													href='/assets/svg/icon-sprite.svg#stroke-home'></use>
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
                                   			<use
													href='/assets/svg/icon-sprite.svg#orders'> </use>
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
					<div id="calendar" class="sidebar-left-wrapper" style="padding-right: 24px;"></div>
					<div id="timeTable">		
						<div class="d-flex justify-content-end" style="margin-bottom: 30px;">
							<button class="btn btn-primary" id="meetingRoomSelectBtn" onClick="selected()">회의실 선택</button>
						</div>
						<div id="time" class="fc-disabled"></div>  		
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
    <!-- Sweetalert js -->
	<script src='/assets/js/sweet-alert/sweetalert.min.js'></script>
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.14/index.global.min.js'></script>
    <script>new WOW().init();</script>
    <script>
	var calendarEl = document.getElementById('calendar'); // 요소 지정, JS
	var timeEl = document.getElementById('time'); // 요소 지정, JS
	var beforedayEl = '';
	
	$(document).ready(function() {
		calendar
	});
	var calendar = new FullCalendar.Calendar(calendarEl, { // 캘린더 생성
		headerToolbar: { // 캘린더 헤더에 버튼, 텍스트를 추가할 수 있음
			left: 'prev', // 이전달로 이동하는 버튼 추가
			center: 'title', // 현재 년도와 월을 보여준다
			right: 'next' // 다음달로 이동하는 버튼 추가
		},
		locale: 'ko', // 언어를 한글로 변경
        selectAllow: function(selectInfo) {
            // 현재 날짜 이후만 선택 가능
            console.log(selectInfo);
            return selectInfo.start >= new Date();
        },
		events: function(fetchInfo, successCallback, failureCallback) { 
			// 서버에 모든 일정(이벤트)를 요청하여 캘린더에 반영함
/* 	        $.ajax({
	            type: 'GET',
	            url: '/calendar',
	            dataType: 'json',
	            success: function(response) {
	            	// ajax 통신이 성공하면 모든 일정을 반환한다
	                successCallback(response.calendarEvents);
	            },
	            error: function(error) {
	                failureCallback(error);
	                console.log(error);
	            }
	        }); */			
		},
		dateClick: function(info) { // 캘린더에서 날짜를 클릭 이벤트
			// 일정 추가하는 창(모달)을 보여준다
			// 일정의 시작 날짜, 종료날짜를 선택한 날짜로 설정한다
			if (info.date <= new Date()) {
				return;
			}
			if (selectedTime.length != 0) {
				selectedTime.forEach(time => {
					let timeStr = time.toString().padStart(2, '0') + ":00:00";
					let elements  = document.querySelectorAll('td[data-time="'+ timeStr +'"].fc-timegrid-slot-lane');
					elements.forEach(el => {
						el.classList.remove('selectedSlot');
                    });
				});
				selectedTime.length = 0;
			}
			// 이전에 선택한 날짜의 배경색을 없애준다
			if (beforedayEl != '') {
				beforedayEl.style.backgroundColor = '#ffffff';	
			}
			selectedDate = info.dateStr;
			
			info.dayEl.style.backgroundColor = '#ded9ff';
			// 이전 선택한 날짜 요소를 befordayEl 에 저장한다
			beforedayEl = info.dayEl;
			// 오른쪽의 시간 선택 캘린더의 날짜를 변경한다
			time.gotoDate(info.date);
			// 선택불가 상태을 해제한다
			timeEl.classList.remove('fc-disabled');
			let btnEl = document.querySelector('#meetingRoomSelectBtn');
			btnEl.style.removeProperty('background');
			btnEl.style.removeProperty('border-color');
			isDatetimeSelected = false;
		}
	});
	calendar.render(); // 캘린더를 그려냄(렌더링)   
	
	var cnt = 0;
	var selectedDate = '';
	var selectedTime = [];
	var isDatetimeSelected = false;
	
	function dateStrToInt(dateStr) {
		return parseInt(dateStr.substring(11, 16));
	}
	
	const time = new FullCalendar.Calendar(timeEl, {
			initialView: 'timeGridDay',
            headerToolbar: {
                left: '',
                center: 'title',
                right: ''
            },
            allDaySlot: false,
            selectable: true,
    		dateClick: function(info) {
    			const time = dateStrToInt(info.dateStr);
				let timeStr = time.toString().padStart(2, '0') + ":00:00";
				let timeSlot = document.querySelector('td[data-time="'+ timeStr +'"].fc-timegrid-slot-lane');
    			if (selectedTime.includes(time) == true) {
    				const index = selectedTime.indexOf(time);
    				selectedTime.splice(index, 1);

    				timeSlot.classList.remove('selectedSlot');
    			} else {
    				selectedTime.push(time);
    				timeSlot.classList.add('selectedSlot');
    			}
    			let btnEl = document.querySelector('#meetingRoomSelectBtn');
    			btnEl.style.setProperty('background', '#7a70ba', 'important');
    			btnEl.style.setProperty('border-color', '#7a70ba', 'important');
    			isDatetimeSelected = true;
    		},     
    		select: function(info) {
    			// dateClick 이랑 이벤트가 곂쳐서 리턴시킴
    			if (info.end - info.start == (1000 * 60 * 60)) {
    				return;
    			}
    			// selectedTime.push(dateToTimeStr(info.startStr));
    			const startTime =  dateStrToInt(info.startStr);
    			const endTime =  dateStrToInt(info.endStr);
    			for (let time = startTime; time < endTime; time++) {
    				if (selectedTime.includes(time) == true) {
    					continue;
    				}
    				selectedTime.push(time);
    				let timeStr = time.toString().padStart(2, '0') + ":00:00";
    				let timeSlot = document.querySelector('td[data-time="'+ timeStr +'"].fc-timegrid-slot-lane');
    				timeSlot.classList.add('selectedSlot');
        			let btnEl = document.querySelector('#meetingRoomSelectBtn');
        			btnEl.style.setProperty('background', '#7a70ba', 'important');
        			btnEl.style.setProperty('border-color', '#7a70ba', 'important');
    			}
    			isDatetimeSelected = true;
    		},
            titleFormat: function(info) {
            	if (cnt == 0) {
            		cnt++;
            		return '날짜를 선택해주세요'; // 제목을 "날짜를 선택해주세요"로 설정 	
            	}
            	return (info.date.month + 1) + '월 ' + info.date.day + '일';
            },    		
            height: 'auto',
            contentHeight: 'auto',
            locale: 'ko', // 언어를 한글로 변경
            slotDuration: '01:00:00', // 타임 슬롯을 1시간 단위로 설정
            slotMinTime: '09:00:00', // 시작 시간
            slotMaxTime: '19:00:00' // 종료 시간     
	});
	time.render();
	
	function selected() {
		if (isDatetimeSelected == false) {
			Swal.fire('회의실 예약 날짜 및 시간을 선택해주세요');
			return;
		}
		console.log(selectedTime);
		console.log(selectedDate);
		
		const url = '/reservation/room.go?selectedDate='+ selectedDate +'&selectedTime=' + selectedTime;
        window.location.href = url;
		
		
	}
    </script>
  </body>
</html>