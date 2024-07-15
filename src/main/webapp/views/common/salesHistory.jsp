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
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<style>
#salesHistoryDataList {
	background: white;
	/* height: 85%; */
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	margin-bottom: 20px;
}

#salesHistoryHeader {
	/* height: 17%; */
	/* background: red; */
	padding: 15px;
}

#salesHistoryTable {
	height: 75%;
	padding: 0 50 0 50;
	/* background: yellow; */
}

#salesHistoryTable table {
	text-align: center;
}

.salesDataTable tbody {
	font-size: 11px;
}

.salesDataTable th:first-child {
    border-top-left-radius: 5px; /* 왼쪽 상단 모서리 둥글게 */
}

.salesDataTable th:last-child {
    border-top-right-radius: 5px; /* 오른쪽 상단 모서리 둥글게 */
}

.salesDataTable tr:last-child td:first-child {
    border-bottom-left-radius: 5px; /* 왼쪽 하단 모서리 둥글게 */
}

.salesDataTable tr:last-child td:last-child {
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
					<a href="index.go"><img class="img-fluid for-light" src="/assets/images/logo/logo.png" alt="" /><img class="img-fluid for-dark" src="/assets/images/logo/logo_light.png" alt="" /></a>
				</div>
			</div>
			<div class="col-4 col-xl-4 page-title">
				<!-- do: 페이지명 변경 -->
				<h4 class="f-w-700">매출 내역</h4>
				<nav>
					<ol class="breadcrumb justify-content-sm-start align-items-center mb-0">
						<li class="breadcrumb-item"><a href="index.go"> <i data-feather="home"> </i></a></li>
						<!-- do: 경로명 변경 -->
						<li class="breadcrumb-item f-w-400">매출 관리</li>
						<li class="breadcrumb-item f-w-400 active">매출 내역</li>
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
					<div id="salesHistoryDataList">
						<div id="salesHistoryHeader">
							<div>
								<h2>매출 내역</h2>
							</div>
							
							
							<hr />
							
							
							<div style="width: 700px; height: 350px; margin: auto;">
						        <canvas id="customerTransactionChart"></canvas>
						    </div>
						    
						    
							<hr />
							
							
							<div class="d-flex align-items-center justify-content-between w-100">
								<div class="d-flex align-items-center flex-shrink-0">
									<h4 style="width: 125px;">날짜 :</h4>
									<input class="form-control flatpickr-input" id="startDate" type="text" placeholder="날짜 선택" onChange="startDateOnChanage()" readonly="readonly">
									<h4>~</h4>
									<input class="form-control flatpickr-input" id="endDate" type="text" onchange="endDateOnChanage()" readonly="readonly">
								</div>
								<div class="d-flex align-items-center flex-shrink-0">
									<h4>구분 :</h4>
									<select id="filter" class="form-select-sm m-5" onchange="filter()">
										<option value="" selected disabled hidden>선택</option>
										<option value="purchaseOrder">발주</option>
										<option value="order">판매</option>
									</select>
								</div>
								<div class="d-flex align-items-center flex-shrink-0" style="width: 33%;">
									<h4 style="width: 125px;">검색 :</h4>
									<select id="searchOption" class="form-select-sm m-5">
										<option value="" selected disabled hidden>선택</option>
										<option value="product">상품명</option>
										<option value="businessPartner">거래처명</option>
									</select>
									<input class="form-control m-10 h-75" type="text" id="searchKeyword" placeholder="상품명 또는 거래처명">
									<button class="btn btn-primary btn-sm" style="width: 150px;" onClick="search()">검색</button>
								</div>
								<div class="d-flex align-items-center flex-shrink-0">
									<select id="sortOption" class="form-select-sm m-5" onchange="sort()">
										<option value="" selected disabled hidden>선택</option>
										<option value="new">최신순</option>
										<option value="name">제품명순</option>
									</select>
								</div>
								<button class="btn btn-secondary btn-sm" onClick="allClear()">초기화</button>
							</div>
						</div>
						<div id="salesHistoryTable">
							<table class="table table-striped salesDataTable">
								<thead>
									<tr>
										<th><span class="f-light f-w-600">번호</span></th>
										<th><span class="f-light f-w-600">구분</span></th>
										<th><span class="f-light f-w-600">거래일자</span></th>
										<th style="width: 5%;"><span class="f-light f-w-600">거래번호</span></th>
										<th style="width: 35%;"><span class="f-light f-w-600">제품명</span></th>
										<th><span class="f-light f-w-600">거래처명</span></th>
										<th><span class="f-light f-w-600">거래금액</span></th>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${success == true}">
											<c:forEach items="${salesDataList}" var="salesData" varStatus="status">
												<tr>
													<td>${status.index + 1}</td>
													<td>${salesData.transactionType}</td>
													<td>${salesData.transactionDatetime}</td>
													<td>${salesData.transactionId}</td>
													<td>${salesData.productName}</td>
													<td>${salesData.customerName}</td>
													<td>${salesData.transactionAmount}</td>
												</tr>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<td colspan="7" style="text-align: center;">조회된 내역이 없습니다.</td>
										</c:otherwise>
									</c:choose>
<%-- 									<c:forEach begin="1" end="13" varStatus="status">
										<tr>
											<td>${status.index }</td>
											<td>${status.index }</td>
											<td>${status.index }</td>
											<td>${status.index }</td>
											<td>${status.index }</td>
											<td>${status.index }</td>
											<td>${status.index }</td>
											<td>${status.index }</td>
											<td>${status.index }</td>
										</tr>
									</c:forEach> --%>
								</tbody>
							</table>
						</div>
						<div class="d-flex justify-content-center">
							<nav aria-label="Page navigation">
								<ul class="pagination" id="pagination"></ul>
							</nav>
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
	<!-- flatpickr -->
	<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
	<script src="https://cdn.jsdelivr.net/npm/flatpickr/dist/l10n/ko.js"></script>
	<!-- pagination js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twbs-pagination/1.4.2/jquery.twbsPagination.min.js"></script>
	<script>
		new WOW().init();
	</script>
	<script>
		var startDate = document.getElementById('startDate').value;
		var endDate = document.getElementById('endDate').value;
		var flag = false;

		var startflatpickr = flatpickr("#startDate", {
			locale : "ko",
			maxDate : "today",
			onChange : function(selectedDates, dateStr, instance) {
				endflatpickr.set('minDate', dateStr);
			}
		});

		var endflatpickr = flatpickr("#endDate", {
			locale : "ko",
			maxDate : "today",
			defaultDate : "today",
			onChange : function(selectedDates, dateStr, instance) {
				startflatpickr.set('maxDate', dateStr);
			}
		});

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

		function startDateOnChanage() {
			if (!flag) {
				fetchSalesDataList();
			}
		}

		function endDateOnChanage() {
			if (!flag) {
				fetchSalesDataList();

			}
		}

		function sort() {
			fetchSalesDataList();	
		}
		
		function search() {
			fetchSalesDataList();
		}

		function filter() {
			fetchSalesDataList();	
		}

		function allClear() {
			flag = true;
			console.log('a');
			startflatpickr.clear();
			endflatpickr.clear();
			document.getElementById('startDate').placeholder = '날짜 선택';
			document.getElementById('filter').selectedIndex = 0;
			document.getElementById('searchOption').selectedIndex = 0;
			document.getElementById('sortOption').selectedIndex = 0;
			document.getElementById('searchKeyword').value = '';
			endflatpickr.setDate('today', true);
			fetchSalesDataList();
			flag = false;
		}
	</script>
	<script>
		var page = 1;
		var totalPages = ${totalPages};
		pagination();

		function pagination() {
			$('#pagination').twbsPagination('destroy');			
			$('#pagination').twbsPagination({
				startPage : page,
				totalPages : totalPages,
				visiblePages : 5,
				first : '처음',
				prev : '이전',
				next : '다음',
				last : '마지막',
				onPageClick : function(evt, clickPageIdx) {
					if (page !== clickPageIdx) {
						page = clickPageIdx;
						fetchSalesDataList();
					}
				}
			});
		}

		function fetchSalesDataList() {
			const pagingDTO = {
				filter : document.getElementById('filter').value,
				sortOption : document.getElementById('sortOption').value,
				searchOption : document.getElementById('searchOption').value,
				searchKeyword : document.getElementById('searchKeyword').value,
				page : page,
				startDate : document.getElementById('startDate').value,
				endDate : document.getElementById('endDate').value
			}
			console.log(pagingDTO);
			
	        fetch('/common/salesHistoryPaging.do', {
	            method: 'POST',
	            headers: {
	                'Content-Type': 'application/json'
	            },
	            body: JSON.stringify(pagingDTO)
	        })
	        .then(response => response.json())
	        .then(data => {
	        	console.log('Success:', data);
	        	drawSalesDataList(data);
	        	totalPages = data.totalPages;
	        	page = data.page;
	        	pagination();
	        })
	        .catch(error => {
	        	// console.error('Error:', error);
	        });
		}

	
	function drawSalesDataList(data) {

		const salesDataListTag = document.getElementsByTagName('tbody')[0];
		let content = '';
		let index = 1;
		if (data.totalPages == 0) {
			content += '<td colspan="7" style="text-align: center;">조회된 내역이 없습니다.</td>';
		} else {				
			for (row of data.salesDataList) {
				content += '<tr>';
				content += '<td>' + index++ + '</td>';
				content += '<td>' + row.transactionType + '</td>';
				content += '<td>' + row.transactionDatetime + '</td>';
				content += '<td>' + row.transactionId + '</td>';
				content += '<td>' + row.productName + '</td>';
				content += '<td>' + row.customerName + '</td>';
				content += '<td>' + row.transactionAmount + '</td>';	
				content += '</tr>';
			}
		}
		salesDataListTag.innerHTML = content;
	}
	
	
	
	
	// [do] 매출 관리 그래프
	// 매출 현황 그래프
	salesGraph();
	
	function salesGraph() {
		// 현재 달로부터 지난 6개월 동안의 발주금액, 판매금액, 영업 이익 (판매금액 - 발주금액) 을 불러온다.
		fetch('/main/salesGraph.ajax', {
			method: 'POST',
			headers: {
				'Content-Type': 'application/json'
			},
			body: JSON.stringify()
		})
		.then(response => response.json())
		.then(data => {
			drawGraph(data.yearMonthList, data.poPriceList, data.salePriceList, data.profitPriceList);
		})
		.catch(error => {console.log('Error: ',error);});
	}
	
	// 그래프 그리기
	function drawGraph(yearMonthList, poPriceList, salePriceList, profitPriceList){
		const ctx = document.getElementById('customerTransactionChart').getContext('2d');
	    
	    const data = {
	        labels: yearMonthList,
	        datasets: [
	        	{
	                type: 'bar',
	                label: '발주 금액',
	                data: poPriceList,
	                backgroundColor: 'rgba(72, 163, 215, 0.65)',
	                borderRadius: 10,
	                barPercentage: 0.6, 
	                categoryPercentage: 0.3, 
	                order: 3
	            },
	            {
	                type: 'bar',
	                label: '판매 금액',
	                data: salePriceList,
	                backgroundColor: 'rgba(122, 112, 186, 0.65)',
	                borderRadius: 10,
	                barPercentage: 0.6,
	                categoryPercentage: 0.3,
	                order: 3
	            },
	            {
	                type: 'line',
	                label: '영업 이익',
	                data: profitPriceList,
	                backgroundColor: 'rgba(122, 112, 186, 1)',
	                borderColor: 'rgba(122, 112, 186, 1)',
	                borderWidth: 2,
	                fill: false,
	                pointBackgroundColor: 'rgba(122, 112, 186, 1)',
	                pointBorderColor: '#fff',
	                pointBorderWidth: 2,
	                pointRadius: 5,
	                pointStyle: 'circle',
	                order: 1
	            }
	        ]
	    };

	    const options = {
	        responsive: true,
	        plugins: {
	            legend: {
	                position: 'top'
	            },
	            title: {
	                display: false,
	            }
	        },
	        scales: {
	            y: {
	                beginAtZero: true,
	                max: 100000000,
	                ticks: {
	                    callback: function(value) {
	                        return (value / 10000);
	                    }
	                }
	            },
	            x: {
	                stacked: false,
	                grid: {
	                    offset: true
	                },
	                ticks: {
	                    maxRotation: 0,
	                    minRotation: 0
	                },
	                categoryPercentage: 0.8
	            }
	        }
	    };

	    const customerTransactionChart = new Chart(ctx, {
	        type: 'bar',  // Use 'bar' to create a mixed bar chart
	        data: data,
	        options: options
	    });
	}
	</script>
</body>
</html>