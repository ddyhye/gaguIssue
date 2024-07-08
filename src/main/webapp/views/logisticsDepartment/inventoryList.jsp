<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    
    
    
    <!-- [do] css 추가 -->
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/doCommon.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/inventoryList.css'/>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    
    
    <link id="color" rel="stylesheet" href="<c:url value='/assets/css/color-1.css'/>" media="screen">
    <!-- Responsive css-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/responsive.css'/>">
  	
  	<!-- J-Query -->
  	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
          <h4 class="f-w-700">Inventory</h4>
          <nav>
            <ol class="breadcrumb justify-content-sm-start align-items-center mb-0">
              <li class="breadcrumb-item"><a href="index.go"> <i data-feather="home"> </i></a></li>
              <!-- do: 경로명 변경 -->
              <li class="breadcrumb-item f-w-400">logisticsDept</li>
              <li class="breadcrumb-item f-w-400 active">Inventory</li>
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
          <div class="container-fluid">
            <div class="row"> 
              <div class="col-sm-12"> 
                <div class="card"> 
                  <div class="card-body">
                  	<div class="card-header do-flexdirection-row">
			          <h4>Inventory</h4>
			          <div class="do-rightfixed"> 
                        <a class="btn btn-primary" href="<c:url value='/logisticsDepartment/poWrite.go'/>"><i class="fa-solid fa-pen"></i>&nbsp;발주 요청</a>
                      </div>
			        </div>
			        
			        
                    <div class="list-product-header">
                      <div class="do-annual-header-left">
                      	<div class="do-left-search">
	                      	<input type="text" name="memberSearch" id="memberSearch" placeholder="제품번호 또는 제품명..."/>
	                      	<i class="fa-solid fa-magnifying-glass" id="productSearchBtn"></i>
                      	</div>
                      	<div class="do-left-category1">
	                      	<p class="do-bold do-p-darkgray do-pCategory">카테고리&nbsp;</p>
	                      	<div class="datatable-top do-pCategoryyy">
	                      		<div class="datatable-dropdown">
	                      			<label>
	                      				<select class="datatable-selector" id="productCategory">
	                      					<option value="전체">전체</option>
	                      					<c:forEach items="${categoryList}" var="item">
	                      						<option value="${item}">${item}</option>
	                      					</c:forEach>
	                      				</select>
	                      			</label>
	                      		</div>
	                      	</div>
	                    </div>
                      	<div class="do-left-category2">
	                      	<p class="do-bold do-p-darkgray do-margin">발주처&nbsp;</p>
	                      	<div class="datatable-top do-pCategoryyy">
	                      		<div class="datatable-dropdown">
	                      			<label>
	                      				<select class="datatable-selector" id="clientList">
	                      					<option value="전체">전체</option>
	                      					<c:forEach items="${clientList}" var="item">
	                      						<option value="${item}">${item}</option>
	                      					</c:forEach>
	                      				</select>
	                      			</label>
	                      		</div>
	                      	</div>
	                    </div>
                      </div>
                      <div class="do-annual-header-right">
                      	<div class="do-rightfixed"> 
	                        <div class="do-warning" id="do-warning">
	                        	<i class="fa-solid fa-triangle-exclamation"></i>&nbsp;재고부족
	                        </div>
	                    </div>
                      </div>
                    </div>
                    
                    
                    <div class="list-product">
                      <table class="table do-table">
                        <thead> 
                          <tr> 
                            <th class="do-table-1">제품번호</th>
                            <th class="do-table-2">카테고리</th>
                            <th class="do-table-3">제품명</th>
                            <th class="do-table-4">수주처</th>
                            <th class="do-table-5">현재 재고</th>
                            <th class="do-table-6">안전 재고</th>
                          </tr>
                        </thead>
                        <tbody class= "do-inventory"> 
                          <tr>
                          	<td colspan="6">loding...</td>
                          </tr>
                        </tbody>
                      </table>
                      
                      <!-- 페이징 -->
                      <div class="d-flex justify-content-center" style="margin-top: 20px">								
						  <nav aria-label="Page navigation">
						      <ul class="pagination" id="pagination"></ul>
						  </nav>
					  </div>
					  
                    </div>
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
    
    <!-- pagination js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twbs-pagination/1.4.2/jquery.twbsPagination.min.js"></script>
 
  </body>
  
  
<script>
	/*
	// 필터링 값
	// memberSearch (productSearch)
	// productCategory
	// clientList
	var productSearch = document.getElementById('memberSearch').value;
	var productCategory = document.getElementById('productCategory').value;
	var clientList = document.getElementById('clientList').value;
	
	listCall(productSearch, productCategory, clientList);

    document.getElementById('memberSearch').addEventListener('keydown', function(event) {
        if (event.key === "Enter") {
            event.preventDefault();
            productSearch = document.getElementById('memberSearch').value;
            listCall(productSearch, productCategory, clientList);
        }
    });
    document.getElementById('productSearchBtn').addEventListener('click', () => {
    	productSearch = document.getElementById('memberSearch').value;
    	listCall(productSearch, productCategory, clientList);
	});
    document.getElementById('productCategory').addEventListener('change', () => {
    	productCategory = document.getElementById('productCategory').value;
    	listCall(productSearch, productCategory, clientList);
	});
    document.getElementById('clientList').addEventListener('change', () => {
    	clientList = document.getElementById('clientList').value;
    	listCall(productSearch, productCategory, clientList);
	});
    // 재고 부족 누를 경우,
    document.getElementById('do-warning').addEventListener('click', () => {
    	listCall('warn', 'warn', 'warn');
	});
    

	// 물품 리스트 출력
	function listCall(productSearch, productCategory, clientList) {
		$.ajax({
			type: 'post',
			url: '<c:url value="/inventoryList.ajax"/>',
			data: {
				'productSearch': productSearch,
				'productCategory': productCategory,
				'clientList': clientList
			},
			dataType: 'JSON',
			success: function(data) {
				drawInventoryList(data);
			}, error: function(error) {
				console.log(error);
			}
		});
	}
	// drawHistory 함수 : 히스토리 그리기
	function drawInventoryList(data) {
		$('.do-inventory').empty();
		
		var content = '';

		if (!data.list || data.list.length === 0) {
			content += '<tr><td colspan="6">현재 보유중인 재고가 없습니다...</td></tr>';
		}
		for (item of data.list) {
			content += '<tr>';
			content += '<td class="do-table-td1">';
			content += item.idx_product;
			content += '</td>';
			content += '<td class="do-table-td2">';
			content += item.category;
			content += '</td>';
			content += '<td class="do-table-td3">';
			content += item.product_name;
			content += '</td>';
			content += '<td class="do-table-td4">';
			content += item.client_name;
			content += '</td>';
			
			// 안전 재고 밑으로 떨어지면 css 설정
	        let ddchange = '';
	        if (item.current_stock < item.minimum_stock) {
	        	ddchange = 'low-stock';  // 최소 재고보다 낮은 경우
	        } else {
	        	ddchange = 'normal-stock';  // 정상 재고
	        }
			
			content += '<td class="do-table-td5 '+ddchange+'">';
			content += item.current_stock;
			content += '</td>';
			content += '<td class="do-table-td6">';
			content += item.minimum_stock;
			content += '</td>';
			content += '</tr>';
		}
		
		$('.do-inventory').append(content);
	}
	// timestamp 형식인 거 문자열로 변환하는 함수
	function DateToString(timesteamp){
	  	var date = new Date(timesteamp);
	  	var dateStr = date.toLocaleDateString("ko-KR");
	  	return dateStr;
	}
	
	*/
	
	
	
	
	
	// 페이징 ,,,
	// 처음부터 ajax로 그리자. 처음부터.....
	var page = 1;
	var totalPage = ${totalPages}; // totalPages 는 서버에서 불러와야한다
	var filter = 'all';
	
	fetchDocumentList();
	
    document.getElementById('memberSearch').addEventListener('keydown', function(event) {
        if (event.key === "Enter") {
            event.preventDefault();
            fetchDocumentList();
        }
    });
    document.getElementById('productSearchBtn').addEventListener('click', () => {
    	fetchDocumentList();
	});
    document.getElementById('productCategory').addEventListener('change', () => {
    	fetchDocumentList();
	});
    document.getElementById('clientList').addEventListener('change', () => {
    	fetchDocumentList();
	});
    // 재고 부족 누를 경우, 
    document.getElementById('do-warning').addEventListener('click', () => {
    	// 함수를 새로 만들어야한다....
    	fetchDocumentList2();
	});
	
	// 페이지 이동
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
			doProductSearch : document.getElementById('memberSearch').value,
			doProductCategory : document.getElementById('productCategory').value,
			doClientList : document.getElementById('clientList').value
		}
		
        fetch('/logisticsDepartment/InventorylistPaging.ajax', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(pagingDTO)
        })
        .then(response => response.json())
        .then(data => {
        	console.log('Success:', data);
        	drawList(data);
        	totalPage = data.totalPages;
        	pagination();
        	// 3. 현재 페이지 번호가 몇번인지 알아야한다
        	
        })
        .catch(error => {
        	console.error('Error:', error);
        });
	}	
	// 재고부족 필터링
	function fetchDocumentList2() {
		// 1. 날짜 필터링
		// 시작 날짜는 undefined 로 들어오면 모든 과거 내용을 가져와야한다
		//console.log(startDate.selectedDates[0]);
		//console.log(endDate.selectedDates[0]);
		
		// 2. filter 는 문서 유형을 나눈다  
		//console.log(filter);
		const pagingDTO = {
			filter : filter,
			page : page,
			doProductSearch : 'warn'
		}
		
        fetch('/logisticsDepartment/InventorylistPaging.ajax', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(pagingDTO)
        })
        .then(response => response.json())
        .then(data => {
        	console.log('Success:', data);
        	drawList(data);
        	totalPage = data.totalPages;
        	pagination();
        	// 3. 현재 페이지 번호가 몇번인지 알아야한다
        	
        })
        .catch(error => {
        	console.error('Error:', error);
        });
	}	
	
	// 리스트 그리기
	function drawList(data) {

		$('.do-inventory').empty();
		
		var content = '';
	
		if (!data.list || data.list.length === 0) {
			content += '<tr><td colspan="6">현재 보유중인 재고가 없습니다...</td></tr>';
		}
		for (item of data.list) {
			content += '<tr>';
			
			content += '<td class="do-table-td1">';
			content += item.idx_product;
			content += '</td>';
			content += '<td class="do-table-td2">';
			content += item.category;
			content += '</td>';
			content += '<td class="do-table-td3">';
			content += item.product_name;
			content += '</td>';
			content += '<td class="do-table-td4">';
			content += item.client_name;
			content += '</td>';
			
			// 안전 재고 밑으로 떨어지면 css 설정
	        let ddchange = '';
	        if (item.current_stock < item.minimum_stock) {
	        	ddchange = 'low-stock';  // 최소 재고보다 낮은 경우
	        } else {
	        	ddchange = 'normal-stock';  // 정상 재고
	        }
			
			content += '<td class="do-table-td5 '+ddchange+'">';
			content += item.current_stock;
			content += '</td>';
			content += '<td class="do-table-td6">';
			content += item.minimum_stock;
			content += '</td>';
			
			content += '</tr>';
		}
		
		$('.do-inventory').append(content);
	}
	
	
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
	
</script>


</html>