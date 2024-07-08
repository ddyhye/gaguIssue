<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	<!-- JsTree -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.3.12/themes/default/style.min.css"/>
    <!-- font-awesome -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
	<style>
		.main {
	 		height: 89%;
	 		background: white;
	 		padding: 30px;
	 		box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
		}
		
		.organization {
			border: 2px dashed gray;
			color: #7a70ba;
			padding: 30 30 0 30;
			height: 73vh;
			margin: 10px;
		}
		
		table {
			width: 100%;
		}
		
		th {
			width: 15%;
		}
		
		.selected {
			background-color: #7870B5 !important;
			color:white;
		}
		
		.jstree-wholerow-clicked {
			background: linear-gradient(to bottom, #7870B5 0, #7870B5 100%) !important;
			opacity: 0.7;
			color:white !important;		
			
		}
		
		.jstree-wholerow-hovered {
			background: linear-gradient(to bottom, #7870B5 0, #7870B5 100%) !important;
			opacity: 0.3;
		}
		
		.jstree-clicked {
			color:white !important;
		}
		
		.profileImage {
			width: 65px;
			height: 65px;
			border-radius: 50%;
		}
		
		.pagination {
			margin-top: 10px;
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
          	<div class="main">
          		<div style="height: 10%;">
          			<h1 style="font-size: 30px; font-weight: bold;">가구있수 조직도</h1>
          			<hr/>
          		</div>
          		<div class="d-flex">
	          		<div class="organization" id="organization"></div>
	          		<div class="organization" id="employeeTable" style="width: 100%;">
	          			<div class="d-flex justify-content-between">
		          			<h3>${employeeList[0].departmentName}</h3>
		          			<h5>전체&nbsp;&nbsp;<span>${fn:length(employeeList)}</span></h5>
	          			</div>
	          			<hr/>
	          			<div style="height: 80%;">	          			
	          			<table class="table table-striped">
	          				<thead>
		          				<tr>
		          					<th>번호</th>
		          					<th style="width: 30%;">프로필</th>
		          					<th>부서</th>
		          					<th>연락처</th>
		          				</tr>
	          				</thead>
	          				<tbody>
		          				<c:choose>
			          				<c:when test="${employeeList == null}">
			          					<tr>
			          						<td colspan="4" style="text-align: center;">조회된 직원이 없습니다</td>
			          					</tr>
			          				</c:when>
			          				<c:otherwise>
				          				<c:forEach items="${employeeList}" var="employee" varStatus="i">
				          					<tr>
				          						<td>${i.index + 1}</td>
				          						<td style="display: flex;" >
				          							<div style="margin-right: 20px;">
					          							<c:choose>
					          								<c:when test="${employee.profileFilePath != 'NONE'}">
					          									<img src="/file/${employee.profileFilePath}" class="profileImage"/>
					          								</c:when>
					          								<c:otherwise>
					          									<img src="/img/user.jpg" class="profileImage"/>
					          								</c:otherwise>
					          							</c:choose>
				          							</div>
				          							<div style="flex-direction: column;display: flex;justify-content: center;">
					          							<h3>${employee.empName}</h3><br/>
					          							<h5>${employee.titleName}</h5>
				          							</div>
				          						</td>
				          						<td>${employee.departmentName}</td>
				          						<td>${employee.phoneNumber}<br/>${employee.email}</td>
				          					</tr>
				          				</c:forEach>
			          				</c:otherwise>
		          				</c:choose>
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
	<!-- Sweetalert js -->
	<script src='/assets/js/sweet-alert/sweetalert.min.js'></script>
	<!-- JsTree -->
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js'></script>
		<!-- pagination js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twbs-pagination/1.4.2/jquery.twbsPagination.min.js"></script>

    <script>new WOW().init();</script>
    <script>
		var page = 1;
		var totalPages = ${totalPages};
		
		pagination();
		
	    $('#organization').jstree({ 
			'plugins': ['wholerow','radio','types','search'],
			'core' : {
				'multiple': false,
				'data' : JSON.parse('${organization}')
			},
			'types' : {
				'department' : {
					'icon' : 'fas fa-users',
				},
				'company' : {
					'icon' : 'fas fa-building'
					,'select_node': false
				}
			}
	   	}).on('loaded.jstree', function() {
	   		$("#organization").jstree("open_all");
		}).on('select_node.jstree', function(e, data) {
			if (data.node.type == 'company') { // 선택 불가능한 타입 검사
			    data.instance.deselect_node(data.node); // 노드 선택 해제
			    return false; // 선택을 막음
			}
			selectedDepartment(data.node);
		});   
	    /* #7870B5 */
    	
	    function selectedDepartment(node) {
	    	let data = new FormData();
	    	data.append('selectedDepartment', node.original.idxDepartment);
	    	data.append('page', page);
	    	console.log(node.original.idxDepartment);
	    	
	        fetch('/employee/group.do', {
	            method: 'POST',
	            body: data
	        })
	        .then(response => response.json())
	        .then(data => {
	        	console.log('Success:', data);
	        	drawEmployeeList(data.employeeList);
	        	page = data.page;
	        	totalPages = data.totalPages;
	        	pagination();
	        })
	        .catch(error => {
	        	console.error('Error:', error);
	        });
	    }
/* 			<c:choose>
				<c:when test="${employeeList == null}">
					<tr>
						<td colspan="4" style="text-align: center;">조회된 직원이 없습니다</td>
					</tr>
				</c:when>
				<c:otherwise>
  				<c:forEach items="${employeeList}" var="employee" varStatus="i">
  					<tr>
  						<td>${i.index + 1}</td>
  						<td style="display: flex;" >
  							<div style="margin-right: 20px;">
      							<c:choose>
      								<c:when test="${employee.profileFilePath != 'NONE'}">
      									<img src="/file/${employee.profileFilePath}" class="profileImage"/>
      								</c:when>
      								<c:otherwise>
      									<img src="/img/user.jpg" class="profileImage"/>
      								</c:otherwise>
      							</c:choose>
  							</div>
  							<div style="flex-direction: column;display: flex;justify-content: center;">
      							<h3>${employee.empName}</h3><br/>
      							<h5>${employee.titleName}</h5>
  							</div>
  						</td>
  						<td>${employee.departmentName}</td>
  						<td>${employee.phoneNumber}<br/>${employee.email}</td>
  					</tr>
  				</c:forEach>
				</c:otherwise>
			</c:choose> */
	    function drawEmployeeList(data) {
	    	let content = '';
	    	let index = 1;
	    	if (data.length == 0) {
				content += '<tr>';
				content += '<td colspan="4" style="text-align: center;">조회된 직원이 없습니다</td>';
				content += '</tr>';
	    	} else {	    		
		    	for(row of data) {
		    		content += '<tr>';
		    		content += '<td>' + index++ + '</td>';
		    		content += '<td style="display: flex;" >';
		    		content += '<div style="margin-right: 20px;">';
		    		if (row.profileFilePath != 'NONE') {
		    			content += '<img src="/file/'+ row.profileFilePath +'" class="profileImage"/>';
		    		} else {
		    			content += '<img src="/img/user.jpg" class="profileImage"/>';
		    		}
		    		content += '</div>';
		    		content += '<div style="flex-direction: column;display: flex;justify-content: center;">';
					content += '<h3>' + row.empName + '</h3><br/>';
					content += '<h5>' + row.titleName + '</h5>';
					content += '</div>';
					content += '</td>';
					content += '<td>' + row.departmentName + '</td>';
					content += '<td>' + row.phoneNumber + '<br/>' + row.email + '</td>';
		    		content += '</tr>';
		    	}
	    	}
	    	document.querySelector('tbody').innerHTML = content;
	    	// document.querySelector('tbody')[0].innerHTML = content;
	    }
			
		function pagination() {			
			$('#pagination').twbsPagination('destroy');
			$('#pagination').twbsPagination({
					startPage:page,
					totalPages:totalPages, 
					visiblePages:5, 
					first: '처음', 
					prev: '이전',
					next: '다음', 
					last: '마지막', 
					onPageClick:function(evt, clickPageIdx){
						if (page != clickPageIdx) {							
							page = clickPageIdx;
							selectedDepartment();
						}
				}
			});		
		}			
    </script>
  </body>
</html>