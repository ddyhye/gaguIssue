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
          <br>
          <h2><center>Employee Attendance</center></h2>
		    <div id="calendar"></div>
		    <!-- [il] : value 나중에 바꿔줘야함. -->
		    <input type="hidden" id="idx_employee" value="1"> 		    
		    <br>
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
    document.addEventListener('DOMContentLoaded', function () {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
      	  themeSystem: 'bootstrap',
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
                    click: function () {
                        $('#myModal').modal('show');
                    }
                }
            },
            events: fetchEvents,
            select: function (info) {
                var startDateInput = document.getElementById('startDate');
                var endDateInput = document.getElementById('endDate');

                startDateInput.value = info.startStr;
                endDateInput.value = info.endStr;

                $('#myModal').modal('show');
            },
            eventClick: function (info) {
                var event = info.event;

                // [il] 회사 일정인지 확인
                var isCompanyEvent = event.id.startsWith('company_');

                if (isCompanyEvent) {
                    // [il] 회사 일정 모달 창 설정
                    document.getElementById('companyDetailTitle').value = event.title;
                    document.getElementById('companyDetailStartDate').value = event.start.toISOString().slice(0, 10);
                    document.getElementById('companyDetailEndDate').value = event.end ? event.end.toISOString().slice(0, 10) : '';
                    document.getElementById('companyDetailStartTime').value = event.start.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
                    document.getElementById('companyDetailEndTime').value = event.end ? event.end.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' }) : '';
                    document.getElementById('companyDetailDescription').value = event.extendedProps.description;
                    document.getElementById('companyDetailColor').value = event.backgroundColor;

                    // [il] 시작 시간 select box 설정
                    var startTimeSelect = document.getElementById('companyDetailStartTime');
                    startTimeSelect.innerHTML = '';
                    for (var i = 0; i < 24; i++) {
                        var hour = (i < 10) ? '0' + i : i;
                        var option = document.createElement('option');
                        option.value = hour + ':00';
                        option.textContent = hour + ':00';
                        startTimeSelect.appendChild(option);
                    }

                    // [il] 종료 시간 select box 설정
                    var endTimeSelect = document.getElementById('companyDetailEndTime');
                    endTimeSelect.innerHTML = '';
                    for (var i = 0; i < 24; i++) {
                        var hour = (i < 10) ? '0' + i : i;
                        var option = document.createElement('option');
                        option.value = hour + ':00';
                        option.textContent = hour + ':00';
                        endTimeSelect.appendChild(option);
                    }

                    $('#companyEventDetailModal').modal('show');
                } else {
                    // [il] 개인 일정 모달 창 설정
                    document.getElementById('detailEventId').value = event.id;
                    document.getElementById('detailTitle').value = event.title;
                    document.getElementById('detailStartDate').value = event.start.toISOString().slice(0, 10);
                    document.getElementById('detailEndDate').value = event.end ? event.end.toISOString().slice(0, 10) : '';
                    document.getElementById('detailStartTime').value = event.start.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
                    document.getElementById('detailEndTime').value = event.end ? event.end.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' }) : '';
                    document.getElementById('detailDescription').value = event.extendedProps.description;
                    document.getElementById('detailColor').value = event.backgroundColor;

                    // [il] 시작 시간 select box 설정
                    var startTimeSelect = document.getElementById('detailStartTime');
                    startTimeSelect.innerHTML = '';
                    for (var i = 0; i < 24; i++) {
                        var hour = (i < 10) ? '0' + i : i;
                        var option = document.createElement('option');
                        option.value = hour + ':00';
                        option.textContent = hour + ':00';
                        startTimeSelect.appendChild(option);
                    }

                    // [il] 종료 시간 select box 설정
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
                }
            },
            eventContent: function (arg) {
                var eventTitle = arg.event.title;
                return { html: '<div>' + eventTitle + '</div>' };
            },
            dayMaxEvents: 5
        });

        calendar.render();
        
        calendarEl.querySelector('.fc-listMonth-button').addEventListener('click', function() {
            calendar.changeView('listMonth');
        });
        
        // [il] 리스트 주간 보기
        calendarEl.querySelector('.fc-listWeek-button').addEventListener('click', function() {
            calendar.changeView('listWeek');
        });

        // [il] 리스트 일간 보기 버튼 클릭 시 처리
        calendarEl.querySelector('.fc-listDay-button').addEventListener('click', function() {
            calendar.changeView('listDay');
        });

        document.querySelector('.custom-close').addEventListener('click', function() {
            $('#myModal').modal('hide');
        });

        document.querySelector('.custom-close-detail').addEventListener('click', function() {
            $('#eventDetailModal').modal('hide');
        });

        document.querySelector('.custom-close-company-detail').addEventListener('click', function() {
            $('#companyEventDetailModal').modal('hide');
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
                ec_title: title,
                ec_description: description,
                ec_start_datetime: startDate + 'T' + startTime,
                ec_end_datetime: endDate + 'T' + endTime,
                ec_color: color
            };

            $.ajax({
                url: './addEvent.ajax',
                method: 'POST',
                data: { idx_employee: idx_employee },
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
                url: './getAllEvents.ajax',
                method: 'GET',
                data: { idx_employee: idx_employee },
                dataType: 'json',
                success: function(response) {
                    var events = [];
                    
                    // [il] 개인일정 추가
                    for (var i = 0; i < response.calendarEvents.length; i++) {
                        var event = {
                            id: response.calendarEvents[i].idx_emp_calendar,
                            title: response.calendarEvents[i].ec_title,
                            description: response.calendarEvents[i].ec_description,
                            start: response.calendarEvents[i].ec_start_datetime,
                            end: response.calendarEvents[i].ec_end_datetime,
                            backgroundColor: response.calendarEvents[i].ec_color
                        };
                        events.push(event);
                    }
                    
                 	  // [il] 회사 일정 추가
                    for (var j = 0; j < response.companyEvents.length; j++) {
                        var event = {
                            id: 'company_'+response.companyEvents[j].idx_company_calendar,
                            title: response.companyEvents[j].cc_title,
                            description: response.companyEvents[j].cc_description,
                            start: response.companyEvents[j].cc_start_datetime,
                            end: response.companyEvents[j].cc_end_datetime,
                            backgroundColor: response.companyEvents[j].cc_color
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
        
        /* // 회사 일정 불러오기
        function fetchEvents(info, successCallback, failureCallback) {
            $.ajax({
                url: './getAllCompanyEvents.ajax',
                method: 'GET',
                success: function(response) {
                    var eventss = [];
                    for (var i = 0; i < response.CompanyEvents.length; i++) {
                        var event = {
                            id: response.CompanyEvents[i].idx_company_calendar,
                            title: response.CompanyEvents[i].cc_title,
                            description: response.CompanyEvents[i].cc_description,
                            start: response.CompanyEvents[i].cc_start_datetime,
                            end: response.CompanyEvents[i].cc_end_datetime,
                            backgroundColor: response.CompanyEvents[i].cc_color
                        };
                        eventss.push(event);
                    }
                    successCallback(eventss);
                },
                error: function(xhr, status, error) {
                    console.error('이벤트 로딩에 실패했습니다: ' + error);
                    if (typeof failureCallback === "function") {
                        failureCallback(xhr, status, error);
                    }
                }
            });
        } */
    </script>
    
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
</html>