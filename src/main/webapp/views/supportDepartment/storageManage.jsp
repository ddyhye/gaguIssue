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
	.storage-Map{
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
          <h4 class="f-w-700">창고 관리</h4>
          <nav>
            <ol class="breadcrumb justify-content-sm-start align-items-center mb-0">
              <li class="breadcrumb-item"><a href="index.go"> <i data-feather="home"> </i></a></li>
              <!-- do: 경로명 변경 -->
              <li class="breadcrumb-item f-w-400 active">창고 관리</li>
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
          <div id="rsvList">
						<div id="rsvTable">
        <h1 id="rsvTitle">${client.client_name}</h1>
        <div class="container">
            <div class="storage-Map">
            <img class="img-500" alt="" src="/img/storageMap.png">
			</div>
        </div>
        <hr/>
        
        
        <table class="table table-striped rsv-list-table">
            <thead>
			        <tr>
			            <th>No</th>
			            <th>구역명</th>
			            <th>카테고리</th>
			            <th>현재수량</th>
			            <th>가용수량</th>
			        </tr>
            </thead>
            <tbody class="storageList">
                <!-- 데이터 행은 여기 추가됩니다. -->
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
    <!-- pagination js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twbs-pagination/1.4.2/jquery.twbsPagination.min.js"></script>
    <!-- Plugin used-->
    <script>new WOW().init();</script>
  </body>
  
  <script>
  var showPage = 1;
  $(document).ready(function(){ // html 문서가 모두 읽히면 되면(준비되면) 다음 내용을 실행 해라
  	   listCall(showPage);
  });
  
  function listCall(page){
		
	    $.ajax({
	       type:'get',
	       url:'/storageList',
	       data:{
	          'page':page,
	          'cnt':5,
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
	        		  listCall(pg);
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
	       content += '<td>'+ item.idx_storage +'</td>';
	       content += '<td>'+ item.section_name + '</td>';
	       content += '<td>'+ item.category + '</td>';
	       content += '<td>'+ item.current_stock + '</td>';
	       content += '<td>'+ item.capacity + '</td>';
	       content += '</tr>';
	    }
	    $('.storageList').html(content);
	}
  
  </script>
</html>