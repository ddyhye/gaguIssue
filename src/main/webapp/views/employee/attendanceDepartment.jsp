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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- Bootstrap css-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/bootstrap.css'/>">
    <!-- App css-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/style.css'/>">
    <link id="color" rel="stylesheet" href="<c:url value='/assets/css/color-1.css'/>" media="screen">
    <!-- Responsive css-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/responsive.css'/>">
    
    <!-- 페이징 -->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twbs-pagination/1.4.2/jquery.twbsPagination.min.js"></script>

    <style>
        .scrollable-table {
            overflow-x: auto;
            white-space: nowrap;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            text-align: center;
            padding: 5px;
        }
        th {
            background-color: #f2f2f2;
        }
        .filter {
            margin-bottom: 20px;
            text-align: center;
        }
        .container {
            text-align: center;
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
        <div class="page-body">
          <!-- Container-fluid starts-->
          <div class="container-fluid default-dashboard">
          <!-- do: 여기서 코딩!!!! class명은 바꿔줘도 됩니당 -->
		  <h1>부서원 근태 내역</h1>
		  <div class="form-group">
		  	<label for="date">근무일</label>
		  	<input type="date" class="form-control" id="date" style="width: 200px;">
		  </div>
		  
		  <!-- 부서원 목록 테이블 -->
		  <div id="employeeTableContainer" style="display: none;">
		      <h2>부서원 목록</h2>
		      <table id="employeeTable" border="1">
		          <thead>
		              <tr>
		                  <th>직원 ID</th>
		                  <th>이름</th>
		                  <th>출근</th>
		                  <th>퇴근</th>
		                  <th>상태</th>
		              </tr>
		          </thead>
		          <tbody>
		              <!-- 데이터가 여기에 추가됩니다. -->
		          </tbody>
		      </table>
		  </div>
		  <div class="container">
			<nav aria-label="Page navigation" style="text-align: center">
				<ul class="pagination" id="pagination"></ul>
			</nav>
		  </div>

          <!-- Container-fluid Ends-->
        </div>
        <!-- footer start-->
        
      </div>
    </div>
    
    <!-- latest jquery-->
    <!-- <script src="/assets/js/jquery.min.js"></script> -->
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
<!--     <script src="/assets/js/datepicker/date-range-picker/moment.min.js"></script>
    <script src="/assets/js/datepicker/date-range-picker/datepicker-range-custom.js"></script> -->
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
    <!-- [il] twbs-pagination -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twbs-pagination/1.4.2/jquery.twbsPagination.min.js"></script>
    <!-- Plugin used-->
    <script>new WOW().init();</script>
    
    
    <script>
    var showPage = 1;
    $(document).ready(function() {
        console.log($.fn.twbsPagination);
    });
    

    $(document).ready(function() {
        // [il] 오늘 날짜를 yyyy-mm-dd 형식으로 반환
        function getTodayDate() {
            var today = new Date();
            var dd = String(today.getDate()).padStart(2, '0');
            var mm = String(today.getMonth() + 1).padStart(2, '0'); 
            var yyyy = today.getFullYear();
            return yyyy + '-' + mm + '-' + dd;
        }

        // [il] 날짜 입력 필드에 기본값으로 오늘 날짜 설정
        $("#date").val(getTodayDate());
        var selectedDate = $("#date").val();
        console.log('처음 selectedDate : ', selectedDate);

        // [il] 페이지 로드 시 fetchDepartmentAttendance 호출
        fetchDepartmentAttendance(selectedDate, showPage);

        // [il] 날짜 선택기가 변경될 때마다 fetchDepartmentAttendance 호출
        $("#date").change(function() {
            selectedDate = $(this).val();
            $('#pagination').twbsPagination('destroy');
            console.log('selectedDate 변경: ', selectedDate);
            fetchDepartmentAttendance(selectedDate, showPage);
        });

        function fetchDepartmentAttendance(selectedDate, showPage) {
            $.ajax({
                type: "post",
                url: "./departmentAttendanceList.ajax",
                data: {
                    'date': selectedDate,
                    'page': showPage,
                    'cnt': 15
                },
                dataType: 'json',
                success: function(data) {
                    // [il] 테이블 초기화
                    $("#employeeTable tbody").empty(); 
                    
                    $('#pagination').twbsPagination({
                    	// 원래는 startPage가 1이었음
                        startPage: data.currentPage, // 시작페이지
                        totalPages: data.totalPages, // 총 페이지 수
                        visiblePages: 5, // 보여줄 페이지 수 1,2,3,4,5
                        onPageClick: function(evt, pg) { // 페이지 클릭시 실행 함수
                            console.log(pg); // 클릭한 페이지 번호
                            fetchDepartmentAttendance(selectedDate, pg); // 페이지 변경 시 새로운 데이터 로드
                        }
                    });
                    drawList(data.attendanceList);
                    // [il] 테이블을 보이도록 설정 
                    $("#employeeTableContainer").show(); 
                },
                error: function(xhr, status, error) {
                    console.error("AJAX request 실패ㅠㅠ: " + error);
                }
            });
        }

        function drawList(list) {
            var content = '';

            for (var item of list) {
                content += '<tr>';
                content += '<td>' + item.idx_employee + '</td>';
                content += '<td>' + item.emp_name + '</td>';
                content += '<td>' + item.ah_check_in + '</td>';
                content += '<td>' + item.ah_check_out + '</td>';
                content += '<td>' + item.ah_status + '</td>';
                content += '</tr>';
            }

            $("#employeeTable tbody").append(content);
        }
    });	

    
    </script>
    
    
  </body>
</html>