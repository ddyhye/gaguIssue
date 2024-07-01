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
   	} 
    
    #calendar {
    	width: 60%;
    	height: 100%;
    	margin: auto;
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
					<div id="calendar"></div>
					<div id="timeTable">		
						<div class="d-flex justify-content-end" style="margin-bottom: 30px;">
							<button class="btn btn-primary" onClick="selected()">회의실 선택</button>
						</div>
						<div id="time" class="fc-disabled"></div>
<!-- 						<table>
							<thead>
								<tr>
									<th>번호</th>
									<th>시간대</th>
									<th>선택</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>09:00 ~ 10:00</td>
									<td></td>
								</tr>
								<tr>
									<td>2</td>
									<td>11:00 ~ 12:00</td>
									<td></td>
								</tr>							
								<tr>
									<td>3</td>
									<td>12:00 ~ 13:00</td>
									<td></td>
								</tr>							
								<tr>
									<td>4</td>
									<td>13:00 ~ 14:00</td>
									<td></td>
								</tr>							
								<tr>
									<td>5</td>
									<td>14:00 ~ 15:00</td>
									<td></td>
								</tr>	
								<tr>
									<td>6</td>
									<td>15:00 ~ 16:00</td>
									<td></td>
								</tr>
								<tr>
									<td>7</td>
									<td>17:00 ~ 18:00</td>
									<td></td>
								</tr>																																						
							</tbody>
						</table> -->        		
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
    
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.14/index.global.min.js'></script>
    <script>new WOW().init();</script>
    <script>
	var calendarEl = document.getElementById('calendar'); // 요소 지정, JS
	var timeEl = document.getElementById('time'); // 요소 지정, JS
	
	$(document).ready(function() {
		calendar
	});
	var calendar = new FullCalendar.Calendar(calendarEl, { // 캘린더 생성
		headerToolbar: { // 캘린더 헤더에 버튼, 텍스트를 추가할 수 있음
			left: 'prev', // 이전달로 이동하는 버튼 추가
			center: 'title', // 현재 년도와 월을 보여준다
			right: 'next' // 다음달로 이동하는 버튼 추가
		},
		selectable: true, // 캘린더에서 드래그하여 일정 선택 기능을 허용
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
			console.log(info);
			timeEl.classList.remove('fc-disabled');
			timeEl
		}
	});
	calendar.render(); // 캘린더를 그려냄(렌더링)    
    
	const time = new FullCalendar.Calendar(timeEl, {
			initialView: 'timeGridDay',
            headerToolbar: {
                left: '',
                center: '',
                right: ''
            },
            allDaySlot: false,
            selectable: true, // 캘린더에서 드래그하여 일정 선택 기능을 허용
    		dateClick: function(info) { // 캘린더에서 날짜를 클릭 이벤트
    			// 일정 추가하는 창(모달)을 보여준다
    			// 일정의 시작 날짜, 종료날짜를 선택한 날짜로 설정한다
    			console.log(info);
    			timeEl.classList.remove('fc-disabled');
    			timeEl
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
		timeEl.classList.remove('fc-disabled');
	}
    </script>
  </body>
</html>