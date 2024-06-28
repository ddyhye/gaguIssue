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
    
	<!-- [il]id color->cc_color로 바꿈 / 06.22 -->
    <link id="cc_color" rel="stylesheet" href="<c:url value='/assets/css/color-1.css'/>" media="screen">
    
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
	
	<!-- FullCalendar List Plugin -->
	<script src="https://cdn.jsdelivr.net/npm/@fullcalendar/list@6.1.13/index.global.min.js"></script>

	<!--[il]  부트스트랩 CSS 링크-->
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- modal창 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 
	<!-- <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/vendors/calendar.css'/>"> -->	
    
    <style>
    
    /* 모달 창 스타일링 */
    .modal-content {
        background-color: #f8f9fa; /* 배경색 설정 */
        border-radius: 0;
        box-shadow: 0 0 10px rgba(0,0,0,0.3); /* 그림자 설정 */
    }
    .modal-header {
        background-color: #6c5ce7; /* 헤더 배경색 */
        color: #fff; /* 헤더 글자색 */
        border-bottom: none; /* 헤더 아래 경계선 없애기 */
    }
    .modal-title {
        font-weight: bold;
    }
    .modal-body {
        padding: 20px;
    }
    .modal-footer {
        background-color: #f8f9fa; /* 푸터 배경색 */
        border-top: none; /* 푸터 위 경계선 없애기 */
    }
    .close {
        color: #fff; /* 닫기 버튼 글자색 */
    }
    .form-group label {
        font-weight: bold;
    }
    .form-control {
        border: 1px solid #ced4da; /* 입력 필드 테두리 스타일 */
    }
    .btn-primary {
        background-color: #6c5ce7; /* 등록 버튼 배경색 */
        border-color: #6c5ce7; /* 등록 버튼 테두리 색 */
    }
    .btn-primary:hover {
        background-color: #563d7c; /* 등록 버튼 호버 배경색 */
        border-color: #563d7c; /* 등록 버튼 호버 테두리 색 */
    }
    .btn-secondary {
        background-color: #343a40; /* 취소 버튼 배경색 */
        border-color: #343a40; /* 취소 버튼 테두리 색 */
    }
    .btn-secondary:hover {
        background-color: #23272b; /* 취소 버튼 호버 배경색 */
        border-color: #23272b; /* 취소 버튼 호버 테두리 색 */
    }
    .btn-danger {
        background-color: #dc3545; /* 삭제 버튼 배경색 */
        border-color: #dc3545; /* 삭제 버튼 테두리 색 */
    }
    .btn-danger:hover {
        background-color: #c82333; /* 삭제 버튼 호버 배경색 */
        border-color: #c82333; /* 삭제 버튼 호버 테두리 색 */
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
          <br>
          <h2><center>Company Fullcalendar</center></h2>
		    <div id="calendar"></div>
		    <!-- [il] : value 나중에 바꿔줘야함. -->
		    <!-- <input type="hidden" id="idx_company_calendar" value="2"> 	 -->	    
		    <br>
		    <!-- [il]Modal -->
		    <!-- Modal -->
			<div id="myModal" class="modal" role="dialog">
			    <div class="modal-dialog">
			        <div class="modal-content">
			            <div class="modal-header">
			                <h4 class="modal-title">일정 추가</h4>
			            </div>
			            <div class="modal-body">
			                <div class="form-group">
			                    <label for="title">일정명:</label>
			                    <input type="text" class="form-control" id="title">
			                </div>
			                <div class="form-group">
			                    <label for="startDate">시작 날짜:</label>
			                    <input type="date" class="form-control" id="startDate">
			                </div>
			                <div class="form-group">
			                    <label for="startTime">시작 시간:</label>
			                    <select class="form-control" id="startTime"></select>
			                </div>
			                <div class="form-group">
			                    <label for="endDate">종료 날짜:</label>
			                    <input type="date" class="form-control" id="endDate">
			                </div>
			                <div class="form-group">
			                    <label for="endTime">종료 시간:</label>
			                    <select class="form-control" id="endTime"></select>
			                </div>
			                <div class="form-group">
			                    <label for="description">설명:</label>
			                    <textarea class="form-control" id="description"></textarea>
			                </div>
			                <div class="form-group">
			                    <label for="color">색상:</label>
			                    <input type="color" class="form-control" id="color" disabled="disabled">
			                </div>
			            </div>
			            <div class="modal-footer">
			                <button type="button" class="btn btn-default" id="addEventBtn">등록</button>
			                <button type="button" class="btn btn-default custom-close">닫기</button>
			            </div>
			        </div>
			    </div>
			</div>
			<!-- [il] 상세보기 Modal -->
			<!-- Event Detail Modal -->
			<div id="eventDetailModal" class="modal" role="dialog">
		    <div class="modal-dialog">
		        <div class="modal-content">
		            <div class="modal-header">
		                <h4 class="modal-title">일정 상세보기</h4>
		            </div>
		            <div class="modal-body">					                        	
		                <div class="form-group">
		                    <label for="detailTitle">일정명:</label>
		                    <input type="text" class="form-control" id="detailTitle">
		                    <input type="hidden" id="detailEventId" value="${company.idx_company_calendar}"> 	
		                </div>
		                <div class="form-group">
		                    <label for="detailStartDate">시작 날짜:</label>
		                    <input type="date" class="form-control" id="detailStartDate">
		                </div>
		                <div class="form-group">
		                    <label for="detailStartTime">시작 시간:</label>
		                    <select class="form-control" id="detailStartTime">
		                    </select>
		                </div>
		                <div class="form-group">
		                    <label for="detailEndDate">종료 날짜:</label>
		                    <input type="date" class="form-control" id="detailEndDate">
		                </div>
		                <div class="form-group">
		                    <label for="detailEndTime">종료 시간:</label>
		                    <select class="form-control" id="detailEndTime">
		                    </select>
		                </div>
		                <div class="form-group">
		                    <label for="detailDescription">설명:</label>
		                    <textarea class="form-control" id="detailDescription"></textarea>
		                </div>
		                <div class="form-group">
		                    <label for="detailColor">색상:</label>
		                    <input type="color" class="form-control" id="detailColor" disabled="disabled">
		                </div>
		            </div>
		            <div class="modal-footer">
		                <button type="button" class="btn btn-primary" onclick="editEvent()">수정</button>
		                <button type="button" class="btn btn-default" onclick="deleteEvent()">삭제</button>
		                <button type="button" class="btn btn-default custom-close-detail">닫기</button>
		            </div>
		        </div>
		    </div>
		</div>
          <!-- Container-fluid Ends-->
        </div>
        <!-- footer start-->
        
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
                right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth,listWeek,listDay'
            },
            customButtons: {
                addEventButton: {
                    text: '일정 추가',
                    click: function() {
                        $('#myModal').modal('show');
                    }
                }
            },
            events: fetchEvents,
            select: function(info) {
                var startDateInput = document.getElementById('startDate');
                var endDateInput = document.getElementById('endDate');

                startDateInput.value = info.startStr;
                endDateInput.value = info.endStr;

                $('#myModal').modal('show');
            },
            eventClick: function(info) {
                var event = info.event;
                document.getElementById('detailEventId').value = event.id;
                document.getElementById('detailTitle').value = event.title;
                document.getElementById('detailStartDate').value = event.start.toISOString().slice(0, 10);
                document.getElementById('detailEndDate').value = event.end ? event.end.toISOString().slice(0, 10) : '';
                document.getElementById('detailStartTime').value = event.start.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
                document.getElementById('detailEndTime').value = event.end ? event.end.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' }) : '';
                document.getElementById('detailDescription').value = event.extendedProps.description;
                document.getElementById('detailColor').value = event.backgroundColor;

                // 시작 시간 select box 설정
                var startTimeSelect = document.getElementById('detailStartTime');
                startTimeSelect.innerHTML = '';
                for (var i = 0; i < 24; i++) {
                    var hour = (i < 10) ? '0' + i : i;
                    var option = document.createElement('option');
                    option.value = hour + ':00';
                    option.textContent = hour + ':00';
                    startTimeSelect.appendChild(option);
                }

                // 종료 시간 select box 설정
                var endTimeSelect = document.getElementById('detailEndTime');
                endTimeSelect.innerHTML = '';
                for (var i = 0; i < 24; i++) {
                    var hour = (i < 10) ? '0' + i : i;
                    var option = document.createElement('option');
                    option.value = hour + ':00';
                    option.textContent = hour + ':00';
                    endTimeSelect.appendChild(option);
                }

                $('#eventDetailModal').modal('show');
            },
            eventContent: function(arg) {
                var eventTitle = arg.event.title;
                return { html: '<div>' + eventTitle + '</div>' };
            },
            dayMaxEvents: 5
        });

        calendar.render();

        document.querySelector('.custom-close').addEventListener('click', function() {
            $('#myModal').modal('hide');
        });

        document.querySelector('.custom-close-detail').addEventListener('click', function() {
            $('#eventDetailModal').modal('hide');
        });

        document.getElementById('addEventBtn').addEventListener('click', function() {
            var startDate = document.getElementById('startDate').value;
            var startTime = document.getElementById('startTime').value;
            var endDate = document.getElementById('endDate').value;
            var endTime = document.getElementById('endTime').value;
            var title = document.getElementById('title').value;
            var description = document.getElementById('description').value;
            var color = document.getElementById('color').value;
            
            // [il] 유효성 검사
            if (!title) {
                alert("일정명을 입력하세요.");
                return;
            }
            if (!startDate) {
                alert("시작 날짜를 입력하세요.");
                return;
            }
            if (!startTime) {
                alert("시작 시간을 입력하세요.");
                return;
            }
            if (!endDate) {
                alert("종료 날짜를 입력하세요.");
                return;
            }
            if (!endTime) {
                alert("종료 시간을 입력하세요.");
                return;
            }
            if (!description) {
                alert("일정 설명을 작성해주세요.");
                return;
            }
            if (new Date(startDate + 'T' + startTime) >= new Date(endDate + 'T' + endTime)) {
                alert("종료 일시는 시작 일시보다 나중이어야 합니다.");
                return;
            }

            var event = {
                cc_title: title,
                cc_description: description,
                cc_start_datetime: startDate + 'T' + startTime,
                cc_end_datetime: endDate + 'T' + endTime,
                cc_color: color
            };

            $.ajax({
                url: './addCompanyEvent.ajax',
                method: 'POST',
                contentType: 'application/json',
                data: JSON.stringify(event),
                success: function(response) {
                    console.log('이벤트 추가가 완료되었습니다.');
                    $('#myModal').modal('hide');
                    calendar.getEventSources()[0].refetch(); 
                },
                error: function(xhr, status, error) {
                    console.error('이벤트 추가에 실패했습니다: ' + error);
                }
            });
        });

        var selectOptions = '';
        for (var i = 0; i < 24; i++) {
            var hour = (i < 10) ? '0' + i : i;
            selectOptions += '<option value="' + hour + ':00">' + hour + ':00</option>';
        }
        document.getElementById('startTime').innerHTML = selectOptions;
        document.getElementById('endTime').innerHTML = selectOptions;

        function fetchEvents(info, successCallback, failureCallback) {
            $.ajax({
                url: './getAllCompanyEvents.ajax',
                method: 'GET',
                success: function(response) {
                    var events = [];
                    for (var i = 0; i < response.CompanyEvents.length; i++) {
                        var event = {
                            id: response.CompanyEvents[i].idx_company_calendar,
                            title: response.CompanyEvents[i].cc_title,
                            description: response.CompanyEvents[i].cc_description,
                            start: response.CompanyEvents[i].cc_start_datetime,
                            end: response.CompanyEvents[i].cc_end_datetime,
                            backgroundColor: response.CompanyEvents[i].cc_color
                        };
                        events.push(event);
                    }
                    successCallback(events);
                },
                error: function(xhr, status, error) {
                    console.error('이벤트 로딩에 실패했습니다: ' + error);
                    if (typeof failureCallback === "function") {
                        failureCallback(xhr, status, error);
                    }
                }
            });
        }
    });

    function editEvent() {
  	    var eventId = document.getElementById('detailEventId').value;
  	    var title = document.getElementById('detailTitle').value;
  	    var startDate = document.getElementById('detailStartDate').value;
  	    var startTime = document.getElementById('detailStartTime').value;
  	    var endDate = document.getElementById('detailEndDate').value;
  	    var endTime = document.getElementById('detailEndTime').value;
  	    var description = document.getElementById('detailDescription').value;
  	    var color = document.getElementById('detailColor').value;
  	    
  	    // [il] 유효성 검사
        if (!title) {
            alert("일정명을 입력하세요.");
            return;
        }
        if (!startDate) {
            alert("시작 날짜를 입력하세요.");
            return;
        }
        if (!startTime) {
            alert("시작 시간을 입력하세요.");
            return;
        }
        if (!endDate) {
            alert("종료 날짜를 입력하세요.");
            return;
        }
        if (!endTime) {
            alert("종료 시간을 입력하세요.");
            return;
        }
        if (!description) {
            alert("일정 설명을 작성해주세요.");
            return;
        }
        if (new Date(startDate + 'T' + startTime) >= new Date(endDate + 'T' + endTime)) {
            alert("종료 일시는 시작 일시보다 나중이어야 합니다.");
            return;
        }

  	    var updatedEvent = {
  	        idx_emp_calendar: eventId,
  	        cc_title: title,
  	        cc_start_datetime: startDate + 'T' + startTime,
  	        cc_end_datetime: endDate + 'T' + endTime,
  	        cc_description: description,
  	        cc_color: color
  	    };

  	    $.ajax({
  	        url: './updateCompanyEvent.ajax',
  	        method: 'POST',
  	        contentType: 'application/json',
  	        data: JSON.stringify({
  	            updatedEvent,
  	          	idx_company_calendar: eventId
  	        }),
  	        success: function(response) {
  	            console.log('일정 수정이 완료되었습니다.');
  	            $('#eventDetailModal').modal('hide');
  	            location.reload();
  	        },
  	        error: function(xhr, status, error) {
  	            console.error('일정 수정에 실패했습니다: ' + error);
  	        }
  	    });
  	}


    function deleteEvent() {
        var eventId = document.getElementById('detailEventId').value;
        console.log(eventId);
        $.ajax({
            url: './deleteCompanyEvent.ajax',
            method: 'POST',
            contentType: 'application/json',
            dataType: 'json',
            data: JSON.stringify({
            	idx_company_calendar: eventId
            }),
            success: function(response) {
	            console.log('일정 수정이 완료되었습니다.');
	            $('#eventDetailModal').modal('hide');
	            location.reload();
	        },
            /* success: function(response) {
                if (response.status === 'success') {
                    console.log(response.message);
                    $('#eventDetailModal').modal('hide');
                    calendar.getEventSources()[0].refetch();
                } else {
                    console.error(response.message);
                }
            }, */
            error: function(xhr, status, error) {
                console.error('이벤트 삭제에 실패했습니다: ' + error);
            }
        });
    }
    </script>
    
    
    
    <!-- latest jquery-->
    <!-- [il]부트스트랩 jquery 버전 : 3.7.1 -->
    <!-- <script src="/assets/js/jquery.min.js"></script>  -->
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