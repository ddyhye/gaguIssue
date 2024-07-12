<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
<html lang="ko">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Mofi admin is super flexible, powerful, clean &amp; modern responsive bootstrap 5 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Mofi admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="pixelstrap">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="이메일 대시보드">
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- [il] 페이징 -->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">    
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twbs-pagination/1.4.2/jquery.twbsPagination.min.js"></script>
    <style>
        /* 스타일링 추가 */
        .email-list .table th, .email-list .table td {
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
		    <!-- 상단 네비게이션 바 -->
		    <nav class="navbar navbar-expand-lg navbar-light bg-light">
		        <div class="container-fluid">
		            <a class="navbar-brand" href="#">나의 이메일</a>
		            <div class="collapse navbar-collapse" id="navbarSupportedContent">
		                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
		                    <li class="nav-item">
		                        <a class="nav-link active" aria-current="page" href="#">받은 메일</a>
		                    </li>
		                    <li class="nav-item">
		                        <a class="nav-link" href="#">보낸 메일</a>
		                    </li>
		                </ul>
		            </div>
		        </div>
		    </nav>
		
		    <!-- 이메일 리스트 테이블 -->
		    <div class="container mt-4">
			    <div class="card">
			        <div class="card-header">
			            이메일 목록
			        </div>
			        <div class="card-body">
			            <div class="table-responsive">
			                <table id="emailTable" class="table table-bordered">
			                    <thead>
			                        <tr>
			                            <th>송신자</th>
			                            <th>제목</th>
			                            <th>수신자</th>
			                            <th>발신 날짜</th>
			                        </tr>
			                    </thead>
			                    <tbody>
			                    </tbody>
			                </table>
			            </div>
			        </div>
			    </div>
			</div>
          </div>
          <!-- Container-fluid Ends-->
        </div>
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
    <!-- [il] twbs-pagination -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twbs-pagination/1.4.2/jquery.twbsPagination.min.js"></script>
    <!-- Plugin used-->
    <script>new WOW().init();</script>
    
    <script>
    var showPage = 1;

    $(document).ready(function() {
        function getEmailList(page) {
            $.ajax({
                url: './sendMailList.ajax', 
                type: 'post',
                dataType: 'json',
                data: {
                    'page': page || showPage, // page가 없을 경우 기본 값으로 showPage 사용
                    'cnt': 15
                },
                success: function(data) {
                    var emailTableBody = $('#emailTable tbody');

                    // 기존 테이블 내용 비우기
                    emailTableBody.empty();

                    $('#pagination').twbsPagination({
                        startPage: data.currentPage, // 시작페이지
                        totalPages: data.totalPages, // 총 페이지 수
                        visiblePages: 5, // 보여줄 페이지 수 1,2,3,4,5
                        onPageClick: function(event, pg) { // 페이지 클릭시 실행 함수
                            console.log(pg); // 클릭한 페이지 번호
                            getEmailList(pg); // 페이지 변경 시 새로운 데이터 로드
                        }
                    });

                    drawList(data.mailList);
                },
                error: function(xhr, status, error) {
                    console.error('email list 불러오기 실패ㅠㅠ:', status, error);
                }
            });
        }

        getEmailList(); // 초기 로드 시 첫 페이지 데이터 불러오기
    });

    function drawList(list) {
        var content = '';

        for (var item of list) {
            content += '<tr data-url="/common/sendMailDetail.go?idx_sending_email=' + item.idx_sending_email + '">';
            content += '<td>' + item.se_employee_name + '</td>';
            content += '<td>' + item.title + '</td>';
            content += '<td>' + item.db_address + '</td>';
            content += '<td>' + item.upload_datetime + '</td>';
            content += '</tr>';
        }

        $("#emailTable tbody").append(content);

        $("#emailTable tbody tr").click(function(event) {
            if (!$(event.target).is('.status-select')) {
                var url = $(this).data('url');
                window.location.href = url;
            }
        });
    }

    
    
    </script>
    
  </body>
</html>