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
    
    <!-- [il] 캘린더 -->
    <!-- [il]jquery / 원래는 3.2.1 버전이었으나, 3.7.1버전으로 바꿔둠 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/> 
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.4.0/fullcalendar.css" />
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.13/index.global.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
	<!-- modal창 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 
	<!-- <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/calendar.css'/>"> -->	
	<style>
	#calendar {
	   width: 80%;
	   margin: 5px auto;
	}
	.datepicker-input {
    position: relative;
	}
	.datepicker-input input, .timepicker-input select, .modal-body textarea {
	    width: 100%;
	}
	.datepicker-input .ui-datepicker-trigger, .timepicker-input .ui-timepicker-trigger {
	    position: absolute;
	    right: 5px;
	    top: 50%;
	    transform: translateY(-50%);
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
          <!-- [il] 캘린더 시작 -->
          <h2><center>Javascript Fullcalendar</center></h2>
		    <div class="container">
		        <div id="calendar"></div>
		    </div>
		    <br>		
		    <!-- [il]Modal -->
		    <div id="myModal" class="modal" role="dialog">
			    <div class="modal-dialog">
			        <div class="modal-content">
			            <div class="modal-header">
			                <!-- [il] <button type="button" class="close" data-dismiss="modal">&times;</button> -->
			                <h4 class="modal-title">일정 추가</h4>
			            </div>
			            <div class="modal-body">
			                <div class="form-group">
			                    <label for="title">일정명:</label>
			                    <input type="text" class="form-control" id="title">
			                </div>
			                <div class="form-group datepicker-input">
			                    <label for="startDate">시작 날짜:</label>
			                    <input type="text" class="form-control" id="startDate">
			                </div>
			                <div class="form-group timepicker-input">
			                    <label for="startTime">시작 시간:</label>
			                    <select class="form-control" id="startTime"></select>
			                </div>
			                <div class="form-group datepicker-input">
			                    <label for="endDate">종료 날짜:</label>
			                    <input type="text" class="form-control" id="endDate">
			                </div>
			                <div class="form-group timepicker-input">
			                    <label for="endTime">종료 시간:</label>
			                    <select class="form-control" id="endTime"></select>
			                </div>
			                <div class="form-group">
			                    <label for="description">설명:</label>
			                    <textarea class="form-control" id="description"></textarea>
			                </div>
			                <div class="form-group">
			                    <label for="color">색상:</label>
			                    <input type="color" class="form-control" id="color">
			                </div>
			            </div>
			            <div class="modal-footer">
			                <button type="button" class="btn btn-default" id="addEventBtn">등록</button>
			                <button type="button" class="btn btn-default custom-close">닫기</button>
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
    <script>
    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
            initialView: 'dayGridMonth',
            editable: true,
            selectable: true,
            droppable: true,
            headerToolbar: {
                left: 'prev,next today addEventButton',
                center: 'title',
                right: 'dayGridMonth,timeGridWeek,timeGridDay'
            },
            customButtons: {
                addEventButton: {
                    text: '일정추가',
                    click: function() {
                        $('#myModal').modal('show');
                    }
                }
            },
            events: function(info, successCallback, failureCallback) {
                $.ajax({
                    url: './getAllEvents.ajax',
                    method: 'GET',
                    dataType: 'json',
                    success: function(response) {
                        successCallback(response.calendarEvents);
                    },
                    error: function(xhr, status, error) {
                        console.error('이벤트 로딩에 실패했습니다: ' + error);
                        if (typeof failureCallback === "function") {
                            failureCallback(xhr, status, error);
                        }
                    }
                });
            },
            select: function(info) {
                $('#startDate').val(moment(info.start).format('YYYY-MM-DD'));
                $('#endDate').val(moment(info.end).subtract(1, 'days').format('YYYY-MM-DD'));
                $('#myModal').modal('show');
            }
        });

        calendar.render();

        // 모달 닫기 버튼 클릭 이벤트 처리
        $(document).on('click', '.custom-close', function() {
            $('#myModal').modal('hide');
        });
		
        // 모달의 등록 버튼 클릭 이벤트 처리
        document.getElementById('addEventBtn').addEventListener('click', function() {
            var startDate = document.getElementById('startDate').value;
            var startTime = document.getElementById('startTime').value;
            var endDate = document.getElementById('endDate').value;
            var endTime = document.getElementById('endTime').value;
            var title = document.getElementById('title').value;
            var description = document.getElementById('description').value;
            var color = document.getElementById('color').value;

            var event = {
                title: title,
                description: description,
                start: startDate + 'T' + startTime,
                end: endDate + 'T' + endTime,
                color: color
            };

            $.ajax({
                url: './addEvent.ajax',
                method: 'POST',
                contentType: 'application/json',
                data: JSON.stringify(event),
                success: function(response) {
                    console.log('이벤트 추가가 완료되었습니다.');
                    $('#myModal').modal('hide');
                    calendar.refetchEvents();
                },
                error: function(xhr, status, error) {
                    console.error('이벤트 추가에 실패했습니다: ' + error);
                }
            });
        });

        // 시간 선택 옵션 설정하기
        var selectOptions = '';
        for (var i = 0; i < 24; i++) {
            var hour = (i < 10) ? '0' + i : i;
            selectOptions += '<option value="' + hour + ':00">' + hour + ':00</option>';
        }
        document.getElementById('startTime').innerHTML = selectOptions;
        document.getElementById('endTime').innerHTML = selectOptions;
        
        // jQuery UI datepicker 사용하기
        $('#startDate, #endDate').datepicker({
            dateFormat: 'yy-mm-dd',
            showButtonPanel: true,
            changeMonth: true,
            changeYear: true,
            monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            onSelect: function(dateText) {
                $(this).val(dateText);
            }
        });
        $('#startDate, #endDate').prop('readonly', true);
    });


	</script>
    <!-- latest jquery-->
    <!-- [il]부트스트랩 jquery 버전 : 3.7.1 -->
    <!-- [il]<script src="/assets/js/jquery.min.js"></script>     -->
    
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
    <!-- [il] datepicker 겹치는 부분 있어서 주석처리했습니다. 
    <script src="/assets/js/datepicker/date-range-picker/moment.min.js"></script>
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
    <!-- Plugin used-->
    <script>new WOW().init();</script>
  </body>
</html>