<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ko">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Mofi admin is super flexible, powerful, clean &amp; modern responsive bootstrap 5 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Mofi admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="pixelstrap">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="icon" href="/assets/images/favicon.png" type="image/x-icon">
    <link rel="shortcut icon" href="/assets/images/favicon.png" type="image/x-icon">
    <title>Default Dashboard | Mofi - Premium Admin Template By Pixelstrap</title>
    <!-- Google font-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;300;400;500;600;700;800;900&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/assets/css/font-awesome.css">
    <!-- ico-font-->
    <link rel="stylesheet" type="text/css" href="/assets/css/vendors/icofont.css">
    <!-- Themify icon-->
    <link rel="stylesheet" type="text/css" href="/assets/css/vendors/themify.css">
    <!-- Flag icon-->
    <link rel="stylesheet" type="text/css" href="/assets/css/vendors/flag-icon.css">
    <!-- Feather icon-->
    <link rel="stylesheet" type="text/css" href="/assets/css/vendors/feather-icon.css">
    <!-- Plugins css start-->
    <link rel="stylesheet" type="text/css" href="/assets/css/vendors/slick.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/vendors/slick-theme.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/vendors/scrollbar.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/vendors/animate.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/vendors/datatables.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/vendors/date-range-picker/flatpickr.min.css">
    <!-- Plugins css Ends-->
    <!-- Bootstrap css-->
    <link rel="stylesheet" type="text/css" href="/assets/css/vendors/bootstrap.css">
    <!-- App css-->
    <link rel="stylesheet" type="text/css" href="/assets/css/style.css">
    <!-- [do] css 추가 -->
    <link rel="stylesheet" type="text/css" href="/assets/css/dashboard.css">
    <link id="color" rel="stylesheet" href="/assets/css/color-1.css" media="screen">
    <!-- Responsive css-->
    <link rel="stylesheet" type="text/css" href="/assets/css/responsive.css">
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
        <%@ include file="common_top.jsp" %>
        <!-- Page Header Ends -->
      </div>
      <!-- Page Body Start-->
      <div class="page-body-wrapper">
        <!-- Page Sidebar Start-->
        <%@ include file="common_sidebar.jsp" %>
        <!-- Page Sidebar Ends-->
        <div class="page-body">
          <!-- Container-fluid starts-->
          <div class="container-fluid default-dashboard"> 
            <div class="row widget-grid">
              <div class="col-xl-5 col-md-6 proorder-xl-1 proorder-md-1">  
                <div class="card profile-greeting p-0">
                  <div class="card-body">
                  	<a href="#">
                  	  <div class="do-flexdirection-row">
                        <h2>조직도</h2><i class="greater-than" data-feather="chevron-right"></i>
                        <h4 class="do-departName">관리자</h4>
                      </div>
                      <div class="card-body-center">
                      	<div class="do-group">
                      		<div class="do-group-pic">
                      			<img class="do-group-pic-size" src="/img/ahruru.png"/>
                      		</div>
                      		<div class="do-group-name">관리자</div>
                      	</div>
                      	<div class="do-group">
                      		<div class="do-group-pic">
                      			<img class="do-group-pic-size" src="/img/ahruru.png"/>
                      		</div>
                      		<div class="do-group-name">관리자</div>
                      	</div>
                      	<div class="do-group">
                      		<div class="do-group-pic">
                      			<img class="do-group-pic-size" src="/img/ahruru.png"/>
                      		</div>
                      		<div class="do-group-name">관리자</div>
                      	</div>
                      </div>
                    </a>
                  </div>
                </div>
              </div>
              
              
              <div class="col-xl-3 col-md-6 proorder-xl-2 proorder-md-2">
                <div class="card">
                  <div class="card-header card-no-border pb-0">
                    <div class="header-top">
                      <div class="do-flexdirection-row">
                        <h4>메일</h4><i class="greater-than" data-feather="chevron-right"></i>
                      </div>
                      <div class="dropdown icon-dropdown">
                        <button class="btn dropdown-toggle" id="userdropdown17" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-more-alt"></i></button>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="userdropdown17"><a class="dropdown-item" href="#">전체</a><a class="dropdown-item" href="#">받은 메일</a><a class="dropdown-item" href="#">안 읽음</a></div>
                      </div>
                    </div>
                  </div>
                  <div class="card-body pb-0 opening-box">
                  	<div class="do-mail-list">
                  		<p class="do-mail-subject do-p-darkgray do-eclipse">안녕하세요</p><p class="do-mail-writer do-p-darkgray">홍길동</p>
                  	</div>
                  	<div class="do-mail-list">
                  		<p class="do-mail-subject do-p-darkgray do-eclipse">안녕하세요</p><p class="do-mail-writer do-p-darkgray">홍길동</p>
                  	</div>
                  	<div class="do-mail-list">
                  		<p class="do-mail-subject do-p-darkgray do-eclipse">안녕하세요</p><p class="do-mail-writer do-p-darkgray">홍길동</p>
                  	</div>
                  	<div class="do-mail-list">
                  		<p class="do-mail-subject do-p-darkgray do-eclipse">안녕하세요</p><p class="do-mail-writer do-p-darkgray">홍길동</p>
                  	</div>
                  	<div class="do-mail-list">
                  		<p class="do-mail-subject do-p-darkgray do-eclipse">안녕하세요</p><p class="do-mail-writer do-p-darkgray">홍길동</p>
                  	</div>
                  </div>
                </div>
              </div>
              
              
              <div class="col-xl-4 col-md-5 proorder-xl-3 proorder-md-3"> 
                <div class="card shifts-char-box">
                  <div class="card-header card-no-border pb-0">
                    <div class="header-top"> 
                      <div class="do-flexdirection-row">
                        <h4>결재 문서</h4><i class="greater-than" data-feather="chevron-right"></i>
                      </div>
                    </div>
                  </div>
                  <div class="card-body do-docBody">
                  	<div class="do-docBody-left">
                  		<h4>결재 대기</h4>
                  		<div>0</div>
                  	</div>
                  	<div class="do-docBody-right">
                  		<h4>수신함</h4>
                  		<div>1</div>
                  	</div>
                  </div>
                </div>
              </div>
              
              
              <!-- do: 출퇴근 -->
              <div class="col-xl-7 proorder-xl-5 box-col-7 proorder-md-5"> 
                <div class="card">
                  <div class="card-header card-no-border pb-0">
                    <div class="header-top">
                      <div class="do-flexdirection-row">
                        <h4>출근 • 퇴근</h4><i class="greater-than" data-feather="chevron-right"></i>
                      </div>
                    </div>
                  </div>
                  <div class="card-body pt-0 projects px-0">
                  	<div class="do-body1">
	                  	<div class="do-body-left">
	                  		<div class="do-body-left-button1" id="gotoWorkBtn">
	                  			<h4 class="do-p-darkgray">출근</h4>
	                  			<p class="do-p-darkgray" id="gotoWorkTime">${gotoWork}</p>
	                  		</div>
	                  		<div class="do-body-left-button2" id="finishWorkBtn">
	                  			<h4 class="do-p-white">퇴근</h4>
	                  			<p class="do-p-white" id="finishWorkTime">${finishWork}</p>
	                  		</div>
	                  	</div>
	                  	<div class="do-body-right">
	                  		<p class="do-p-darkgray do-bold">남은 근무 시간</p>
	                  		<div class="do-body-right-center">
	                  			<i class="do-clock" data-feather="clock">
	                  			</i>
	                  			<h5 class="do-p-darkgray do-bold" id="remainingTime">00:00:00</h5>
	                  		</div>
	                  	</div>
                  	</div>
                  </div>
                </div>
              </div>
              
              
              <div class="col-xl-5 col-md-7 proorder-xl-4 box-col-5 proorder-md-6"> 
                <div class="card">
                  <a href="<c:url value='/common/annualList.go'/>">
	                  <div class="card-header card-no-border pb-0">
	                    <div class="header-top">
	                      <div class="do-flexdirection-row">
	                        <h4>나의 연차</h4><i class="greater-than" data-feather="chevron-right"></i>
	                      </div>
	                    </div>
	                  </div>
	                  <div class="card-body pb-0 do-annual-body">
	                  	<div>
	                  		<p class="do-annualLeaveDay">8</p><p class="do-annualLeaveDay2">&nbsp;일</p>
	                  		<i class="do-coffee" data-feather="coffee"></i>
	                  	</div>
	                  </div>
	              </a>
                </div>
              </div>
              
              
              <div class="col-xxl-7 col-xl-12 box-col-12 proorder-xl-8 proorder-md-9"> 
                <div class="card">
                  <div class="card-header card-no-border pb-0">
                    <div class="header-top">
                      <div class="do-flexdirection-row">
                        <h4>Calendar</h4><i class="greater-than" data-feather="chevron-right"></i>
                      </div>
                      <div class="dropdown icon-dropdown">
                        <button class="btn dropdown-toggle" id="userdropdown14" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-more-alt"></i></button>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="userdropdown14"><a class="dropdown-item" href="#">Weekly</a><a class="dropdown-item" href="#">Monthly</a><a class="dropdown-item" href="#">Yearly</a></div>
                      </div>
                    </div>
                  </div>
                  <div class="card-body sale-statistic">
                  </div>
                </div>
              </div>
              <div class="col-xxl-5 col-xl-7 box-col-7 proorder-xl-9 proorder-md-10"> 
                <div class="card">
                  <div class="card-header card-no-border pb-0">
                    <div class="header-top">
                      <div class="do-flexdirection-row">
                        <h4>회의실 예약</h4><i class="greater-than" data-feather="chevron-right"></i>
                      </div>
                    </div>
                  </div>
                  <div class="card-body sales-product px-0 pb-0">
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
	/*
	if (msg != '') {
		alert(msg);
	}*/


	// [do] 출퇴근 JS
	const gotoWorkBtn = document.getElementById('gotoWorkBtn');
	const gotoWorkTime = document.getElementById('gotoWorkTime');
	const finishWorkBtn = document.getElementById('finishWorkBtn');
	const finishWorkTime = document.getElementById('finishWorkTime');
	//const remainingTime = document.getElementById('remainingTime');
	
	// 현재 시간 함수
	function updateTime() {
		// 현재 시간
		const now = new Date();
		const hours = String(now.getHours()).padStart(2, '0');
		const minutes = String(now.getMinutes()).padStart(2, '0');
		const seconds = String(now.getSeconds()).padStart(2, '0');
		const currentTime = hours+':'+minutes+':'+seconds;
		
		// 남은 근무 시간
		const endOfDay = new Date();
		endOfDay.setHours(18, 0, 0, 0);
		
		let remainingTime = endOfDay - now;
		if(remainingTime < 0) {
			remainingTime = 0;
		}
		
      	const remainingHours = String(Math.floor(remainingTime / (1000 * 60 * 60))).padStart(2, '0');
      	const remainingMinutes = String(Math.floor((remainingTime % (1000 * 60 * 60)) / (1000 * 60))).padStart(2, '0');
      	const remainingSeconds = String(Math.floor((remainingTime % (1000 * 60)) / 1000)).padStart(2, '0');
      	const remainingTimeString = remainingHours+':'+remainingMinutes+':'+remainingSeconds;
      	
		return {
			currentTime: currentTime,
			remainingTimeString: remainingTimeString
		}
	}
	
	// 출퇴근 및 남은 근무시간 업데이트
	// 초기 호출
	updateTime();	
	// 1초마다 퇴근까지 남은 시간 업데이트
	setInterval(() => {
	    const timeData = updateTime();
	    document.getElementById('remainingTime').textContent = timeData.remainingTimeString;
	}, 1000);
	// 출근 버튼 클릭 시
	gotoWorkBtn.addEventListener('click', () => {
		const gotoWorkTime = document.getElementById('gotoWorkTime');
		
		if (finishWorkTime && finishWorkTime.textContent.trim() === '') {
			if (gotoWorkTime && gotoWorkTime.textContent.trim() !== '') {
				alert('이미 근무 중 입니다.');
			} else {
				const timeData = updateTime();
				
				$.ajax({
					type: 'post', 
					url: '<c:url value="/gotoWorkTimeCheck.ajax"/>',
					data: {
						'gotoWorkTime': timeData.currentTime
					},
					dataType: 'JSON',
					success: function(data) {
						gotoWorkTime.textContent = timeData.currentTime;
						alert(data.successMsg);
					}, error: function(e){}
				});
			}
		} else {
			alert('하루 일과를 마무리 하셨습니다.');
		}
	});
	// 퇴근 버튼 클릭 시
	finishWorkBtn.addEventListener('click', () => {
		const gotoWorkTime = document.getElementById('gotoWorkTime');
		
		if (gotoWorkTime && gotoWorkTime.textContent.trim() !== '') {
			if (finishWorkTime && finishWorkTime.textContent.trim() !== '') {
				alert('하루 일과를 마무리 하셨습니다.');
			} else {
				const timeData = updateTime();
				finishWorkTime.textContent = timeData.currentTime;
				
				$.ajax({
					type: 'post', 
					url: '<c:url value="/finishWorkTimeCheck.ajax"/>',
					data: {
						'finishWorkTime': timeData.currentTime
					},
					dataType: 'JSON',
					success: function(data) {
						const finishWorkBtn = document.getElementById('finishWorkBtn');
						alert(data.successMsg);
					}, error: function(e){}
				});
			}
		} else {
			alert('출근 먼저 확인해 주세요.');
		}
	});
	
	
	
	
</script>
</html>