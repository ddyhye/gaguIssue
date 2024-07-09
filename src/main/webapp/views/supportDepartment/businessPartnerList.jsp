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
    
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css'/>" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
    #rsvList {
		background: white;
		height: 85%;
		box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
		padding: 30px;
	}
	
	#rsvTable {
		height: 95%;
	}
	
	#rsvTitle {
		font-weight: bold;
	}
	
	#rsvList table th {
		background: #f4f7f9;
		opacity: 0.9;
	}
	
	#rsvList table {
		text-align: center;
	}
	
	#rsvList table th:first-child {
		border-top-left-radius: 10px; /* 왼쪽 상단 모서리 둥글게 */
	}
	
	#rsvList table th:last-child {
		border-top-right-radius: 10px; /* 오른쪽 상단 모서리 둥글게 */
	}
	
	#rsvList table tr:last-child td:first-child {
		border-bottom-left-radius: 10px; /* 왼쪽 하단 모서리 둥글게 */
	}
	
	#rsvList table tr:last-child td:last-child {
		border-bottom-right-radius: 10px; /* 오른쪽 하단 모서리 둥글게 */
	}
	table #checkbox{
		width: 1px;
	}
	.client-search {
	    display: flex;
	    align-items: center;
	    position: relative;
	    width: 60%; /* 검색창 너비를 조정 */
	    max-width: 285px; /* 최대 너비를 설정 */
	}
	
	.client-search .form-control {
	    width: 100%; /* 입력 필드가 전체 너비를 차지하도록 설정 */
	    padding-left: 35px; /* 왼쪽에 여백을 추가하여 아이콘이 겹치지 않도록 설정 */
	}
	
	.client-search .form-control:focus {
	    box-shadow: none;
	    border-color: var(--chart-dashed-border);
	}
	
	.client-search svg {
	    stroke: var(--chart-text-color);
	    width: 18px;
	    height: 18px;
	    left: 10px; /* 아이콘의 왼쪽 위치 설정 */
	    top: 50%; /* 수직 중앙 정렬 */
	    transform: translateY(-50%); /* 수직 중앙 정렬을 위한 변환 */
	    position: absolute;
	}
	
	[dir=rtl] .client-search svg {
	    left: unset;
	    right: 10px;
	}

	.container {
	    margin-bottom: 20px;  /* 원하는 간격으로 설정 */
	    position: relative;
	    display: flex;
	    justify-content: space-between;
	    align-items: center;
	}
	
	.button-group {
	    display: flex;
	    gap: 10px;
	    justify-content: flex-end;
	}
	.button-group .btn {
	    white-space: nowrap;
	}
	
	.edit_btn{
	  background-color: #0ab414 !important;
	  border-color: #0ab414 !important;
	}
	.del_btn{
	  background-color: #f9554d !important;
	  border-color: #f9554d !important;
	}
   	/* 폼 요소 컨테이너를 그리드 레이아웃으로 설정 */
	.container2 {
	    display: grid;
	    grid-template-columns: repeat(2, 1fr); /* 두 개의 열로 구성된 그리드 */
	    gap: 20px; /* 요소들 사이의 간격 */
	    padding: 20px; /* 폼 내부의 여백 */
	}	
	
	/* 전체 너비를 차지하는 요소 */
	.container2 .col-12 {
	    grid-column: span 2;
	}
	/* 모달 다이얼로그 크기 조정 */
	.modal-dialog {
	    max-width: 80%;
	    width: 40%;
	    height: 80%;
	}
	
	.modal-content {
	    height: 92vh;
	}
	
	/* 모달 헤더와 푸터에 여백 추가 */
	.modal-header, .modal-footer {
	    padding: 20px;
	}
	.modal-body{
		height: 60vh;
	}
	
	/* 폼 요소에 여백 추가 */
	.modal-body .form-control {
	    margin-bottom: 10px;
	}
 	.modal-footer {
        display: flex;
        justify-content: center;
    }
	    
    /* 라디오 버튼 그룹 스타일 */
	.radio-group {
	    display: flex;
	    justify-content: center; /* 가운데 정렬 */
	    gap: 30px; /* 라디오 버튼 사이의 간격 */
	    margin-top: 10px; /* 위쪽 간격 */
	}
	
	.radio-group label {
	    display: flex;
	    align-items: center; /* 라디오 버튼과 라벨 수직 정렬 */
	    gap: 5px; /* 라디오 버튼과 라벨 사이 간격 */
	}

    /* 기타 입력 칸 높이 조절 */
	.input-etc {
	    height: 100px; /* 원하는 높이로 설정 */
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
          <h4 class="f-w-700">거래처 관리</h4>
          <nav>
            <ol class="breadcrumb justify-content-sm-start align-items-center mb-0">
              <li class="breadcrumb-item"><a href="index.go"> <i data-feather="home"> </i></a></li>
              <!-- do: 경로명 변경 -->
              <li class="breadcrumb-item f-w-400 active">거래처 관리</li>
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
					<div id="rsvList">
						<div id="rsvTable">
							<h1 id="rsvTitle">거래처 목록</h1>
							<hr/>
							<div class="container">
								<div class="client-search">
					                <input class="form-control" name="clientSearch" id="clientSearch" type="text" placeholder="거래처명 검색 ">
					                <svg>
					                  <use href="/assets/svg/icon-sprite.svg#stroke-search"></use>
					                </svg>
					            </div>
					            <div class="button-group"> 
		                        	<a class="btn btn-primary add_btn" href="#" data-bs-toggle="modal" data-bs-target="#addModal"><i class="fa fa-plus"></i>&nbsp;추가</a>
		                        	<a class="btn btn-primary edit_btn" href="#" onclick="edit()"><i class="fa fa-edit"></i>&nbsp;수정</a>
		                        	<a class="btn btn-primary del_btn" href="#" onclick="del()"><i class="fa fa-trash"></i>&nbsp;삭제</a>
		                        </div>
							</div>
				             <hr/>
							<table class="table table-striped rsv-list-table">
								<thead>
									<tr>
										<th id= "checkbox"><input type="checkbox" id="all"/></th>
										<th><span class="f-light f-w-600">유형</span></th>
										<th><span class="f-light f-w-600">거래처명</span></th>
										<th><span class="f-light f-w-600">연락처</span></th>
										<th><span class="f-light f-w-600">주소</span></th>
									</tr>
								</thead>
								<tbody class="client-List">
									
									
								</tbody>
							</table>
							</br>
							<div class="d-flex justify-content-center">								
							    <nav aria-label="Page navigation">
							        <ul class="pagination" id="pagination"></ul>
							    </nav>
							</div>						
						</div>
					</div>
				</div>
				
				
				
			<!-- 거래처 추가 모달 창 -->
			<div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="registerModalLabel" aria-hidden="true">
			    <div class="modal-dialog">
			        <div class="modal-content">
			            <div class="modal-header">
			                <h5 class="modal-title" id="registerModalLabel">거래처 등록</h5>
			                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
			            </div>
			            <div class="modal-body">
			                <!-- 사원 등록 폼 -->
			                <form action="/clientForm" id="clientForm" method="post" enctype="multipart/form-data">
			                    
			                    <!-- 폼 요소 -->
			                    <div class="container2">
			                    	<div class="col-12 mb-2">
		                                <label for="client_name">사업자등록번호</label>
		                                <input type="text" class="form-control" id="idx_business" name="idx_business" required>
		                            </div>
			                    
				                    <div class="row">
			                            <div class="col-12 mb-2">
			                                <label for="client_name">거래처명</label>
			                                <input type="text" class="form-control" id="client_name" name="client_name" required>
			                            </div>   
			                        </div> 
			                        <div class="row">
   			                            <div class="col-12 mb-2">
			                                <label for="ceo_name">대표자명</label>
			                                <input type="text" class="form-control" id="ceo_name" name="ceo_name" required>
			                            </div>
			                        </div> 
									<div class="row">
			                            <div class="col-12 mb-2">
			                                <label for="client_phone_num">연락처</label>
			                                <input type="tel" class="form-control" id="client_phone_num" name="client_phone_num" required>
			                            </div>
			                        </div> 			                            
			                        <div class="row">
			                            <div class="col-12 mb-2 radio-group">
							                <label><input type="radio" id="select" name="client_type" value="발주처">발주처</label>
							                <label><input type="radio" id="select2" name="client_type" value="수주처">수주처</label>
							            </div>
			                        </div> 
			                            <div class="col-12 mb-2">
			                                <label for="address">주소 &nbsp;
			                                <button type="button" class="btn btn-outline-secondary mt-2" onclick="openPostalCodeSearch()">주소 입력</button></label>
			                                <input type="text" class="form-control" id="address" name="address" readonly>
			                                
			                                <label for="detail_address">상세 주소</label>
			                                <input type="text" class="form-control" id="detail_address" name="detail_address">
			                            </div>
			                            <div class="col-12 mb-2">
			                                <label for="detail_address">기타</label>
			                                <input type="text" class="form-control input-etc" id="etc" name="etc">
			                            </div>
			                    </div>
			            <div class="modal-footer">
			                <button type="submit" class="btn btn-primary">등록</button>
			                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
			            </div>
			                </form>
			            </div>
			        </div>
			    </div>
			</div>
			
			
			
			
			
			<!-- 거래처 수정 모달 창 -->
			<div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="registerModalLabel" aria-hidden="true">
			    <div class="modal-dialog">
			        <div class="modal-content">
			            <div class="modal-header">
			                <h5 class="modal-title" id="registerModalLabel">거래처 수정</h5>
			                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
			            </div>
			            <div class="modal-body">
			                <!-- 사원 등록 폼 -->
			                <form action="/clientEdit" id="clientEdit" method="post" enctype="multipart/form-data">
			                    
			                    <!-- 폼 요소 -->
			                    <div class="container2">
			                    	<div class="col-12 mb-2">
		                                <label for="client_name">사업자등록번호</label>
		                                <input type="text" class="form-control" id="idx_business2" name="idx_business" required>
		                            </div>
			                    
				                    <div class="row">
			                            <div class="col-12 mb-2">
			                                <label for="client_name">거래처명</label>
			                                <input type="text" class="form-control" id="client_name2" name="client_name" required>
			                            </div>   
			                        </div> 
			                        <div class="row">
   			                            <div class="col-12 mb-2">
			                                <label for="ceo_name">대표자명</label>
			                                <input type="text" class="form-control" id="ceo_name2" name="ceo_name" required>
			                            </div>
			                        </div> 
									<div class="row">
			                            <div class="col-12 mb-2">
			                                <label for="client_phone_num">연락처</label>
			                                <input type="tel" class="form-control" id="client_phone_num2" name="client_phone_num" required>
			                            </div>
			                        </div> 			                            
			                        <div class="row">
			                            <div class="col-12 mb-2 radio-group">
							                <label><input type="radio" id="select" name="client_type2" value="발주처">발주처</label>
							                <label><input type="radio" id="select2" name="client_type2" value="수주처">수주처</label>
							            </div>
			                        </div> 
			                            <div class="col-12 mb-2">
			                                <label for="address">주소 &nbsp;
			                                <button type="button" class="btn btn-outline-secondary mt-2" onclick="openPostalCodeSearch()">주소 입력</button></label>
			                                <input type="text" class="form-control" id="address2" name="address" readonly>
			                                
			                                <label for="detail_address">상세 주소</label>
			                                <input type="text" class="form-control" id="detail_address2" name="detail_address">
			                            </div>
			                            <div class="col-12 mb-2">
			                                <label for="detail_address">기타</label>
			                                <input type="text" class="form-control input-etc" id="etc2" name="etc">
			                            </div>
			                    </div>
			            <div class="modal-footer">
			                <button type="submit" class="btn btn-primary">수정</button>
			                <button type="button" class="btn btn-secondary" id="editCancel" data-bs-dismiss="modal">닫기</button>
			            </div>
			                </form>
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
    <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
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
    <!-- pagination js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twbs-pagination/1.4.2/jquery.twbsPagination.min.js"></script>
	
    <!-- Plugin used-->
    <script>new WOW().init();</script>
  </body>
  
  <script>
  var showPage = 1;
  var search = '';
  $(document).ready(function(){ // html 문서가 모두 읽히면 되면(준비되면) 다음 내용을 실행 해라
  	   listCall(showPage, search);
  
  });
  
  function listCall(page, search){
		
	    $.ajax({
	       type:'get',
	       url:'/clientList.ajax',
	       data:{
	    	  'clientSearch': search,
	          'page':page,
	          'cnt':5
	       },
	       dataType:'json',
	       success:function(data){
		    	
	          drawList(data.list);
	          console.log(data);
	          console.log("총 페이지수 :",data.totalPages);
	          
	       	  
	          //플러그인 추가
	          var startPage = data.currPage > data.totalPages? data.totalPages : data.currPage;
	          
	          $('#pagination').twbsPagination({
	        	  startPage:startPage, //시작페이지
	        	  totalPages:data.totalPages, //총 페이지 갯수
	        	  visiblePages:5, //보여줄 페이지 수 [1][2][3][4][5]
	        	  first: '<<', 
  	        	  prev: '<',
	  	          next: '>', 
	  	          last: '>>',
	         	  onPageClick:function(evt, pg){//페이지 클릭시 실행 함수
	        		  console.log(evt); // 이벤트 객체
	        		  console.log(pg); //클릭한 페이지 번호
	        		  listCall(pg, clientSearch);
	        	  }
	        	  
	          });
	          
	       },
	       error: function(request, status, error) {
	           console.log("code: " + request.status)
	           console.log("message: " + request.responseText)
	           console.log("error: " + error);
	       }
	    });
	}
  
  
  
  function drawList(list){
	    var content = '';
	    for(item of list){
	      // console.log(item);
	       content += '<tr>';
	       content += '<td class="col"><input type="checkbox" name="selected" value="' + item.idx_business +'"/></td>';
	       content += '<td>'+ item.client_type + '</td>';
	       content += '<td>'+ '<a href="clientDetail.go?idx_business=' + item.idx_business + '">' + item.client_name + '</a>' + '</td>';
	       content += '<td>'+ item.client_phone_num + '</td>';
	       content += '<td>'+ item.address + '</td>';
	       content += '</tr>';
	    }
	    $('.client-List').html(content);
	}

  
  
  
  var clientSearch = document.getElementById('clientSearch').value;
	
  document.getElementById('clientSearch').addEventListener('keydown', function(event) {
	console.log(clientSearch);
      if (event.key === "Enter") {
          event.preventDefault();
          clientSearch = document.getElementById('clientSearch').value;
          $('#pagination').twbsPagination('destroy');
          listCall(showPage, clientSearch);
      }
  });
  
  
  function del() {
	    var delArr = [];
	    $("input[name='selected']").each(function(index, item) {
	      if ($(item).is(":checked")) {
	         var val = $(this).val();
	         console.log(val);
	         delArr.push(val);
	      }
	   });
	    
	 	// 선택된 항목이 없을 때
	    if (delArr.length === 0) {
	        alert("삭제하실 거래처를 선택 해 주세요.");
	        return;
	    }
	    
	    
	     $.ajax({
	         type:'post' // method 방식
	         ,url:'./del.ajax' // 요청할 주소 // 파라미터 
	         ,data:{delList:delArr}
	        ,dataType:'json' // 기본 데이터 타입은 JSON 이다
	         ,success:function(data){
	            if(data.cnt>0){
	               alert('선택하신'+data.cnt+'개의 거래처가 삭제되었습니다.');
	               $('.client-List').empty(); // 업데이트 전 리스트들을 지워버리고
	               listCall(showPage, search); // 업데이트 후 리스트들을 다시 불러옴
	            }
	            console.log(data);
	         } 
	         ,error:function(error){ // 통신 실패한 경우
	             console.log(error);
	         }
	     });
	}
  
  var val = 0;
  function edit() {
      var selectedCount = 0;

      $("input[name='selected']").each(function(index, item) {
          if ($(item).is(":checked")) {
              selectedCount++;
              val = parseInt($(this).val());
              console.log(val);
              console.log(selectedCount);
          }
      });

	      if (selectedCount === 0) {
	    	    alert("수정할 거래처를 선택해주세요.");
	    	    return;
	    	}


          if (selectedCount > 1) {
              alert("거래처 수정은 1개씩만 가능합니다");
              return;
          }

          if (selectedCount === 1) {
              $.ajax({
                  url: './getClient',
                  type: 'GET',
                  data: { idx: val },
                  success: function(data) {
                      // 데이터가 성공적으로 불러와지면 모달에 데이터 채우기
                      $('#idx_business2').val(data.idx_business);
                      $('#client_name2').val(data.client_name);
                      $('#ceo_name2').val(data.ceo_name);
                      $('#client_phone_num2').val(data.client_phone_num);
                      $('#address2').val(data.address);
                      $('#detail_address2').val(data.detail_address);
                      $('#etc2').val(data.etc);
                      // 라디오 버튼 값 설정
                      $('input[name="client_type2"][value="' + data.client_type + '"]').prop('checked', true);

                      // 모달 창 열기
                      $('#editModal').modal('show');
                  },
                  error: function(error) {
                      console.error('에러 메시지:', error);
                      alert('데이터를 불러오는 중 오류가 발생했습니다.');
                  }
              });
          }
      
  }

  
  $('#editCancel').on('click', function(){
	  $('#idx_business2').val('');
      $('#client_name2').val('');
      $('#ceo_name2').val('');
      $('#client_phone_num2').val('');
      $('#address2').val('');
      $('#detail_address2').val('');
      $('#etc2').val('');
	});
  
  
  /* 셀렉트 박스 모두 선택 버튼 기능 */
  $('#all').on('click', function() {
	    var $chk = $('input[name="selected"]');
	    if ($(this).prop('checked')) {
	        $chk.prop('checked', true);
	    } else {
	        $chk.prop('checked', false);
	    }
	});
  
  
  //주소 API 함수
  function openPostalCodeSearch() {
      new daum.Postcode({
          oncomplete: function(data) {
              // 검색된 정보를 해당 필드에 넣음
             // document.getElementById('postal_code').value = data.zonecode;
              document.getElementById('address').value = data.roadAddress; // 도로명 주소 사용
          }
      }).open();
  }
  
  
  </script>
  
  
  
  
  
  
</html>