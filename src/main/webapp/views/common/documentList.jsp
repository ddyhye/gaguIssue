<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"%><html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Mofi admin is super flexible, powerful, clean &amp; modern responsive bootstrap 5 admin template with unlimited possibilities.">
<meta name="keywords"
	content="admin template, Mofi admin template, dashboard template, flat admin template, responsive admin template, web app">
<meta name="author" content="pixelstrap">
<link rel="icon" href="/assets/images/favicon.png" type="image/x-icon">
<link rel="shortcut icon" href="/assets/images/favicon.png"
	type="image/x-icon">
<title>Default Dashboard | Mofi - Premium Admin Template By
	Pixelstrap</title>
<!-- Google font-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
<link
	href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;300;400;500;600;700;800;900&amp;display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/font-awesome.css'/>">
<!-- ico-font-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/vendors/icofont.css'/>">
<!-- Themify icon-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/vendors/themify.css'/>">
<!-- Flag icon-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/vendors/flag-icon.css'/>">
<!-- Feather icon-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/vendors/feather-icon.css'/>">
<!-- Plugins css start-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/vendors/slick.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/vendors/slick-theme.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/vendors/scrollbar.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/vendors/animate.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/vendors/datatables.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/vendors/date-range-picker/flatpickr.min.css'/>">
<!-- Plugins css Ends-->
<script src='https://code.jquery.com/jquery-3.6.0.min.js'></script>
<!-- Bootstrap css-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/vendors/bootstrap.css'/>">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">	
<!-- App css-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/style.css'/>">
<link id="color" rel="stylesheet"
	href="<c:url value='/assets/css/color-1.css'/>" media="screen">
<!-- Responsive css-->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/assets/css/responsive.css'/>">	
<style>
.document-list {
	background: white;
	padding: 30px;
}

#filter {
	border: 1px dashed #7a70ba;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
	border-radius: 5px;
	background: white;
	color: #7a70ba;
	width: 30px;
	height: 30px;
}

.document-list-table {
}

.document-list-table th:first-child {
    border-top-left-radius: 5px; /* 왼쪽 상단 모서리 둥글게 */
}

.document-list-table th:last-child {
    border-top-right-radius: 5px; /* 오른쪽 상단 모서리 둥글게 */
}

.document-list-table tr:last-child td:first-child {
    border-bottom-left-radius: 5px; /* 왼쪽 하단 모서리 둥글게 */
}

.document-list-table tr:last-child td:last-child {
    border-bottom-right-radius: 5px; /* 오른쪽 하단 모서리 둥글게 */
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
					<a href="index.go"><img class="img-fluid for-light"
						src="/assets/images/logo/logo.png" alt="" /><img
						class="img-fluid for-dark"
						src="/assets/images/logo/logo_light.png" alt="" /></a>
				</div>
			</div>
			<div class="col-4 col-xl-4 page-title">
				<h4 class="f-w-700">Default dashboard</h4>
				<nav>
					<ol
						class="breadcrumb justify-content-sm-start align-items-center mb-0">
						<li class="breadcrumb-item"><a href="index.go"> <i
								data-feather="home"> </i></a></li>
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
					<div class="document-list">
						<div class="document-list-header">
							<h2>기안서 리스트</h2>
							<hr/>
						</div>
						<div class="d-flex justify-content-between m-5">
							<div>
								<ul class="simple-wrapper nav nav-tabs" id="myTab" role="tablist">
									<li class="nav-item">
										<a class="nav-link active txt-primary" 
										data-bs-toggle="tab" href="#list" role="tab"
										onClick="setFilter('all')">전체</a>
									</li>
									<li class="nav-item">
										<a class="nav-link txt-primary" 
										data-bs-toggle="tab" href="#list" role="tab"
										onClick="setFilter('pending')">결재해야할 문서</a>
									</li>
									<li class="nav-item">
										<a class="nav-link txt-primary" 
										data-bs-toggle="tab" href="#list" role="tab"
										onClick="setFilter('rejected')">반려된 문서</a>
									</li>
									<li class="nav-item">
										<a class="nav-link txt-primary" 
										data-bs-toggle="tab" href="#list" role="tab"
										onClick="setFilter('approved')">승인된 문서</a>
									</li>
									<li class="nav-item">
										<a class="nav-link txt-primary" 
										data-bs-toggle="tab" href="#list" role="tab"
										onClick="setFilter('retracted')">회수한 문서</a>
									</li>																											
								</ul>
							</div>
							<div class="d-flex" style="align-items: center;">
								<div class="d-block">								
									<button class="btn btn-primary btn-xs" style="width: 60px; margin-right: 10px;" onClick="dateClear()">날짜<br/>초기화</button>
								</div>
								<input class="form-control flatpickr-input" id="startDate" type="text" value="날짜선택" onChange="startDateOnChanage()" readonly="readonly">
								<h4>~</h4>
								<input class="form-control flatpickr-input" id="endDate" type="text" onchange="endDateOnChanage()" readonly="readonly">
							</div>
						</div>
						<div class="tab-content" id="myTabContent">
							<div class="tab-pane fade show active" id="list" role="tabpanel">
								<table class="table table-striped document-list-table">
									<thead>
										<tr>
											<th><span class="f-light f-w-600">번호</span></th>
											<th><span class="f-light f-w-600">문서 제목</span></th>
				                            <th><span class="f-light f-w-600">결재 양식</span></th>
				                            <th><span class="f-light f-w-600">부서</span></th>
				                            <th><span class="f-light f-w-600">기안자</span></th>
				                            <th><span class="f-light f-w-600">결재 상태</span></th>
				                            <th><span class="f-light f-w-600">기안 일시</span></th>
										</tr>
									</thead>
									<tbody>
										<c:choose>
											<c:when test="${documentList != 'none'}">
												<c:forEach items="${documentList}" var="document" varStatus="status">
													<tr>
														<td>${status.index + 1}</td>
														<td><a href="/document/${document.idx_approval}/detail.go">${document.ap_title}</a></td>
														<td>${document.dc_name}</td>
														<td>${document.de_name}</td>
														<td>${document.emp_name}</td>
														<td>${document.final_ap_status}</td>
														<td>${document.written_datetime}</td>
													</tr>
												</c:forEach>										
											</c:when>
											<c:otherwise>
												<td colspan="7" style="text-align: center;">조회된 문서가 없습니다.</td>
											</c:otherwise>
										</c:choose>

									</tbody>
<!-- 									<tr class="product-removes">
										<td>인사팀 김정원 휴가 올립니다.</td>
										<td>연차 및 휴가 신청서</td>
										<td>인사팀</td>
										<td>김정원</td>
										<td>진행중</td>
										<td>2024/06/10</td>
									</tr>
									<tr class="product-removes">
										<td>연차 및 휴가 신청서</td>
									</tr>
									<tr class="product-removes">
										<td>연차 및 휴가 신청서</td>
									</tr> -->																		
								</table>
								<br/>
								<br/>
								<div class="d-flex justify-content-center">								
								    <nav aria-label="Page navigation">
								        <ul class="pagination" id="pagination"></ul>
								    </nav>
								</div>
							</div>
<!-- 							<div class="tab-pane fade" id="pending" role="tabpanel" aria-labelledby="profile-tabs">
								<p class="pt-3">
									결재해야할 문서
								</p>							
							</div>
							<div class="tab-pane fade" id="rejected" role="tabpanel" aria-labelledby="profile-tabs">
								<p class="pt-3">
									반려된 문서
								</p>							
							</div>
							<div class="tab-pane fade" id="approved" role="tabpanel" aria-labelledby="profile-tabs">
								<p class="pt-3">
									승인된 문서
								</p>							
							</div>
							<div class="tab-pane fade" id="retracted" role="tabpanel" aria-labelledby="profile-tabs">
								<p class="pt-3">
									회수한 문서
								</p>							
							</div> -->							
						</div>
					</div>
				</div>
				<!-- Container-fluid Ends-->
			</div>
			<!-- footer start-->
			<footer class="footer">
				<div class="container-fluid">
					<div class="row">
						<div
							class="col-md-12 footer-copyright d-flex flex-wrap align-items-center justify-content-between">
							<p class="mb-0 f-w-600">
								Copyright <span class="year-update"> </span> Â© Mofi theme by
								pixelstrap
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
    <script src="/assets/js/height-equal.js"></script>
	<script src="/assets/js/dashboard/default.js"></script>
	<script src="/assets/js/notify/index.js"></script>
	<script src="/assets/js/datatable/datatables/jquery.dataTables.min.js"></script>
	<script src="/assets/js/datatable/datatables/datatable.custom.js"></script>
	<script src="/assets/js/datatable/datatables/datatable.custom1.js"></script>
	<script src="/assets/js/datepicker/date-range-picker/moment.min.js"></script>
	<script
		src="/assets/js/datepicker/date-range-picker/datepicker-range-custom.js"></script>
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
	<!-- flatpickr -->
	<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <script src="https://cdn.jsdelivr.net/npm/flatpickr/dist/l10n/ko.js"></script>
    <!-- pagination js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twbs-pagination/1.4.2/jquery.twbsPagination.min.js"></script>
 
	<script>
		new WOW().init();
	</script>
	<script>
		/* [jeong] flatpickr 생성 및 초기화 함수 */
	    function getToday() {
	        const today = new Date();
	        const yyyy = today.getFullYear();
	        const mm = String(today.getMonth() + 1).padStart(2, '0'); // 월은 0부터 시작하므로 1을 더해줌
	        const dd = String(today.getDate()).padStart(2, '0');
	        return '${yyyy}-${mm}-${dd}';
	    }	
		
        function convertToKST(date) {
            // 입력된 date를 밀리초 단위로 가져옴
            const localTime = date.getTime();
            // 현재 date의 타임존 오프셋을 분 단위로 가져옴
            const localOffset = date.getTimezoneOffset() * 60000;
            // 입력된 date와 타임존 오프셋을 더하여 UTC 시간 계산
            const utcTime = localTime + localOffset;
            // KST 시간대 오프셋을 적용하여 새로운 date 생성 (KST는 GMT+9)
            const kstOffset = 9 * 60 * 60000; // 9시간을 밀리초로 변환
            const kstTime = utcTime + kstOffset;
            return new Date(kstTime);
        }
        
        // var startDate = document.getElementById('startDate').value;
        // var endDate = document.getElementById('endDate').value;
        
		var startflatpickr = flatpickr("#startDate", {
			locale: "ko",
			maxDate: "today"
/* 	        onChange: function(selectedDates, dateStr, instance) {
	        	fetchDocumentList();
	        	console.log('startflatpickr');
	        } */			
		});
		
		var endflatpickr = flatpickr("#endDate", {
			locale: "ko",
			maxDate: "today",
			defaultDate: "today"
/* 	        onChange: function(selectedDates, dateStr, instance) {
	        	fetchDocumentList();
	        	console.log('endflatpickr');
	        } */
		});	
		
		var flag = false;
		
		function startDateOnChanage() {
			if (!flag) {
				fetchDocumentList();	
			}
			console.log('startflatpickr');
		}
		
		function endDateOnChanage() {
			if (!flag) {
				fetchDocumentList();	
			}	
			console.log('endflatpickr');
		}
		
        var startDate = document.getElementById('startDate').value;
        var endDate = document.getElementById('endDate').value;
		
	    function dateClear() {
	    	flag = true;
	    	startflatpickr.clear();
	    	endflatpickr.clear();
	    	document.getElementById('startDate').value = '날짜선택';
	    	endflatpickr.setDate('today', true);
	    	console.log('dateClear');
	    	fetchDocumentList();
	    	flag = false;
	    }
	</script>
	<script>
		var page = 1;
		var totalPage = ${totalPages}; // totalPages 는 서버에서 불러와야한다
		var filter = 'all';
		
		$(document).ready(function () {
			if (totalPage == 0) {
				
			} else {
			    $('#pagination').twbsPagination({
					startPage:page, //시작페이지
					totalPages:totalPage, //총 페이지 갯수
					visiblePages:5, // 보여줄 페이지 수 [1][2][3][4][5] <<이렇게 나옴
			        first: '처음', // 첫 페이지 버튼 텍스트 변경
			        prev: '이전', // 이전 페이지 버튼 텍스트 변경
			        next: '다음', // 다음 페이지 버튼 텍스트 변경
			        last: '마지막', // 마지막 페이지 버튼 텍스트 변경
					onPageClick:function(evt, clickPageIdx){
						// 페이지 이동 번호 클릭시 이벤트 발동
	                    if (page !== clickPageIdx) {
	                        page = clickPageIdx;
	                        fetchDocumentList();
	                    }
					}
			    });			
			}
			// pagination();
		});
		
		function pagination() {
			if (totalPage < page) {
				page = totalPage;
			}
			console.log(page, totalPage);
			if (totalPage == 1 && page == 0) {
				page = 1;
			}
			if (totalPage != 0) {				
				$('#pagination').twbsPagination('destroy');
			    $('#pagination').twbsPagination({
					startPage:page, //시작페이지
					totalPages:totalPage, //총 페이지 갯수
					visiblePages:5, // 보여줄 페이지 수 [1][2][3][4][5] <<이렇게 나옴
			        first: '처음', // 첫 페이지 버튼 텍스트 변경
			        prev: '이전', // 이전 페이지 버튼 텍스트 변경
			        next: '다음', // 다음 페이지 버튼 텍스트 변경
			        last: '마지막', // 마지막 페이지 버튼 텍스트 변경
					onPageClick:function(evt, clickPageIdx){
						// 페이지 이동 번호 클릭시 이벤트 발동
	                    if (page !== clickPageIdx) {
	                        page = clickPageIdx;
	                        fetchDocumentList();
	                    }
					}
			    });		
			} 
		}
	    
		function setFilter(category) {
			filter = category;
			fetchDocumentList();
		}
		
		function fetchDocumentList() {
			// 1. 날짜 필터링
			// 시작 날짜는 undefined 로 들어오면 모든 과거 내용을 가져와야한다
			//console.log(startDate.selectedDates[0]);
			//console.log(endDate.selectedDates[0]);
			
			// 2. filter 는 문서 유형을 나눈다  
			//console.log(filter);
			const pagingDTO = {
				filter : filter,
				page : page,
				startDate : document.getElementById('startDate').value,
				endDate : document.getElementById('endDate').value
			}
			console.log(pagingDTO);
	        fetch('/document/list.do', {
	            method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
	            body: JSON.stringify(pagingDTO)
	        })
	        .then(response => response.json())
	        .then(data => {
	        	console.log('Success:', data);
	        	drawDocumentList(data);
	        	totalPage = data.totalPages;
	        	pagination();
	        	// 3. 현재 페이지 번호가 몇번인지 알아야한다
	        	
	        })
	        .catch(error => {
	        	console.error('Error:', error);
	        });
			
			
			
		}	
		
		function drawDocumentList(data) {

			const documentListTag = document.getElementsByTagName('tbody')[0];
			let content = '';
			let index = 1;
			if (data.totalPages == 0) {
				content += '<td colspan="7" style="text-align: center;">조회된 문서가 없습니다.</td>';
			} else {				
				for (row of data.documentFilterList) {
					content += '<tr>';
					content += '<td>' + index++ + '</td>';
					content += '<td><a href="/document/' + row.idx_approval + '/detail.go">' + row.ap_title + '</a></td>';
					content += '<td>' + row.dc_name + '</td>';
					content += '<td>' + row.de_name + '</td>';
					content += '<td>' + row.emp_name + '</td>';
					content += '<td>' + row.final_ap_status + '</td>';
					content += '<td>' + row.written_datetime + '</td>';	
					content += '</tr>';
				}
			}
			documentListTag.innerHTML = content;
		}
		
/* 		function searchResultPagination(startpage) {
			//console.log(choice);
			$.ajax({
				type:'post', 
				url:'/searchResult.ajax',  
				data:{
				},
				dataType:'json',
				success:function(response){ 
					drawSearchResultList(response);	
		            $('#pagination').twbsPagination({
						startPage:startpage,       //시작페이지
						totalPages:response.totalPages,    //총 페이지 갯수
						visiblePages:5, // 보여줄 페이지 수 [1][2][3][4][5] <<이렇게 나옴
						onPageClick:function(evt, clickPageIdx){
							// 페이지 이동 번호 클릭시 이벤트 발동
							searchResultPageIndex = clickPageIdx;
							searchResultPagination(clickPageIdx);
						}
		            });
				}, 
				error:function(error){ // 통신 실패 시
					console.log(error);
				} 
			});
		} */
	</script>
</body>
</html>
