<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
<html lang="ko">
<%@ page import="java.util.Calendar" %>

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
  	<!-- [tae] css 추가 -->
    <!--  <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/tae1.css'/>">-->
  
  </head>
  <style>
  	.modal-dialog {
            max-width: 800px; /* 모달 창 크기 조정 */
        }
        .form-label {
            font-weight: bold; /* 라벨 강조 */
            display: flex;
            align-items: center;
        }
        .form-control {
            margin-bottom: 15px; /* 필드 간 간격 조정 */
        }
        .form-table {
            width: 100%;
            margin: 0 auto;
        }
        .form-table td {
            padding: 10px;
            vertical-align: middle;
        }
        .form-table select,
        .form-table input[type="date"],
        .form-table input[type="text"],
        .form-table input[type="email"],
        .form-table input[type="tel"] {
            width: 100%;
        }
        .form-header {
            text-align: center;
            font-size: 1.5em;
            margin-bottom: 20px;
            font-weight: bold;
        }
  
  		@media (min-width: 992px) {
		    .col-lg-6 {
		        width: 45%;
		        float: left;
		    }
		    .col-lg-6 + .col-lg-6 {
		        float: right;
		    }
		} 	
		.table-wrapper {
            max-height: 600px; /* 테이블 높이를 설정 */
            overflow-y: auto; /* 세로 스크롤 추가 */
        }
        /* 기본 테이블 스타일 */
        .table {
            width: 100%;
            border-collapse: collapse; /* 테이블 경계선을 붙임 */
            margin-top : 30px;
        }
        
        /* 테이블 헤더 (thead) 스타일 */
        .table thead {
            background-color: #f2f2f2; /* 헤더 배경색 */
        }
        
        /* 테이블 행 (tr) 스타일 */
        .table tr {
            border-bottom: 1px solid #ccc; /* 각 행의 하단에 회색 선 추가 */
        }
        
        /* 테이블 셀 (td, th) 스타일 */
        .table td, .table th {
            padding: 10px;
            text-align: left;
            border-right: 1px solid #ccc; /* 각 셀의 우측에 회색 선 추가 */
        }
        
        .table > :not(:last-child) > :last-child > * {
        	border-style: none;
        }
        .button-container {
            display: flex;
            justify-content: flex-end;
            padding: 0px;
        }
        #registerButton{
        	margin-right : 10px;
        }
        .modal-body {
        display: flex;
        flex-direction: column;
        align-items: center;
	    }
	    
	    .modal-body2 {
        display: flex;
        flex-direction: column;
        align-items: center;
	    }
	    
	    .form-group {
	        margin-bottom: 1rem;
	    }
	    .form-table {
	        width: 100%;
	    }
	    .form-label {
	        font-weight: bold;
	    }
	    .form-control {
	        margin-bottom: 0.5rem;
	    }
	    .img-thumbnail {
	        border-radius: 50%;
	        border: 2px solid #ddd;
	    }
	    .mb-2 {
	        margin-bottom: 1rem;
	    }
	    .container {
	        width: 100%;
	        padding: 0 15px;
	    }
	    .row {
	        display: flex;
	        flex-wrap: wrap;
	    }
	    .col-6 {
	        flex: 0 0 50%;
	        max-width: 50%;
	    }
	    tr.selected {
		    background-color: #e0e0e0; /* 회색 배경 */
		}
		#employeeDetails {
		    display: none;
		}
		#employeePhoto {
		    /*max-width: 50%; 이미지의 최대 너비 설정 */
		    height: auto; /* 높이 자동 조정 */
		}
		#employeePhoto2 {
		    /*max-width: 50%; 이미지의 최대 너비 설정 */
		    height: auto; /* 높이 자동 조정 */
		}
		
		body {
			margin-top : 20px;
		    font-family: Arial, sans-serif;
		    margin: 20px;
		    background-color: #ffffff;
		}
		.info-section h5 {
		    background-color: #f5f5f5;
		    padding: 10px;
		    border-radius: 5px;
		    font-size: 1.2em;
		    margin-bottom: 10px;
		}
		.employee-details {
		    width: 600px;
		    margin: 0 auto;
		    padding: 20px;
		    border: 1px solid #ddd;
		    border-radius: 8px;
		    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		    background-color : white;
		}
		
		.annual-details{
			width: 600px;
		    margin: 0 auto;
		    padding: 20px;
		    border: 1px solid #ddd;
		    border-radius: 8px;
		    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		    background-color : white;
		}
		
		/* 인적 정보 섹션 스타일링 */
		#personalInfo {
		    border-bottom: 1px solid #ddd;
		    margin-bottom: 20px;
		    padding-bottom: 20px;
		}
		
		#personalInfo h5 {
		    background-color: #f5f5f5;
		    padding: 10px;
		    border-radius: 5px;
		    font-size: 1.2em;
		    margin-bottom: 10px;
		}
		
		/* 인적 정보의 각 항목을 flex로 배치 */
		#personalInfo .infoItem {
		    display: flex;
		    align-items: center;
		    margin-bottom: 10px;
		}
		
		/* 이름과 전화번호를 같은 줄에 배치 */
		#personalInfo .namePhoneContainer {
		    display: flex;
		    justify-content: space-between;
		    width: 100%;
		}
		
		/* 텍스트 요소 스타일 */
		#personalInfo .infoItem p {
		    margin: 0;
		    flex: 1;
		    padding: 0 10px;
		}
		
		/* 재직 정보 섹션 스타일링 */
		#employmentInfo h5 {	
		    background-color: #f5f5f5;
		    padding: 10px;
		    border-radius: 5px;
		    font-size: 1.2em;
		    margin-bottom: 10px;
		}
		
		#employmentInfo .infoItem {
		    margin-bottom: 10px;
		}
		
		#employmentInfo .infoItem p {
		    margin: 5px 0;
		}
		
		/* 사원 사진 스타일링 */
		#employeePhotoContainer {
		    text-align: center;
		    margin-bottom: 20px;
		}
		
		#employeePhoto {
		    width: 150px;
		    height: 150px;
		    object-fit: cover;
		    border-radius: 50%;
		    border: 2px solid #ddd;
		    margin-bottom: 10px;
		}
		
		/* 재직 기간 정보 스타일링 */
		#employmentInfo .periodItem {
		    display: flex;
		    justify-content: space-between;
		}
		
		#employmentInfo .periodItem input {
		    flex: 1;
		    margin: 0 5px;
		}
		
		/* 컨테이너에 대한 스타일 설정 */
	    .button-detail-container {
	        display: flex;
	        gap: 0px;
	        margin-bottom: 0px;
	    }
	    
	    
	    .custom-btn {
	        background-color: #ffffff; /* 버튼의 배경색을 흰색으로 설정 */
	        color: #000000; /* 텍스트 색상은 검은색 */
	        border: 1px solid #cccccc; /* 버튼 테두리 색상 */
	        padding: 5px 10px; /* 버튼의 내부 여백 조정 */
	        font-size: 12px; /* 버튼 텍스트 크기 조정 */
	        cursor: pointer; /* 커서를 포인터로 변경 */
	    }
	    .custom-btn.selected {
	        background-color: #cccccc; /* 버튼 클릭 시 회색으로 변경 */
	        color: #000000; /* 클릭 시 텍스트 색상 유지 */
	    }
	    .custom-btn:focus {
	        outline: none; /* 포커스 시 외곽선을 제거 */
	        background-color: #cccccc; /* 포커스된 버튼의 배경색을 회색으로 변경 */
	        color: #000000; /* 포커스된 버튼의 텍스트 색상 유지 */
	    }
	    
	   
		
		.info-section {
		    margin-bottom: 20px;
		}
		
		.info-content {
		    display: flex;
		}
		
		.photo-container {
		    flex: 0 0 100px;
		}
		
		.photo-container img {
		    width: 100px;
		    height: 100px;
		    border-radius: 50%;
		}
		
		.info-details {
		    flex: 1;
		    padding-left: 10px;
		}
		
		.info-details p {
		    margin: 5px 0;
		}
		
		.namePhoneContainer {
		    display: flex;
		    justify-content: space-between;
		}
		
		.info-row {
		    display: flex;
		    justify-content: space-between;
		}
		
		.leave-info {
		    margin-top: 10px;
		}
		
		.leave-summary {
		    margin-top: 10px;
		}
		
		.leave-summary-table,
		.leave-details-table {
		    width: 100%;
		    border-collapse: collapse;
		    margin-top: 10px;
		}
		
		.leave-summary-table th,
		.leave-details-table th,
		.leave-summary-table td,
		.leave-details-table td {
		    border: 1px solid #ddd;
		    padding: 8px;
		    text-align: center;
		}
		
		.leave-summary-table th,
		.leave-details-table th {
		    background-color: #f2f2f2;
		}
		
		.leave-summary-table tbody tr,
		.leave-details-table tbody tr {
		    transition: background-color 0.3s;
		}
		
		.leave-summary-table tbody tr:hover,
		.leave-details-table tbody tr:hover {
		    background-color: #f5f5f5;
		}
		
		.detail-button {
		    background-color: #f2f2f2;
		    border: none;
		    padding: 5px 10px;
		    cursor: pointer;
		    transition: background-color 0.3s;
		}
		
		.detail-button:hover {
		    background-color: #ddd;
		}
		.no-click {
		    pointer-events: none; /* 클릭 이벤트 비활성화 */
		}
	    
	    
       
  </style>
  
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
          <h4 class="f-w-700">사원관리</h4>
          <nav>
            <ol class="breadcrumb justify-content-sm-start align-items-center mb-0">
              <li class="breadcrumb-item"><a href="index.go"> <i data-feather="home"> </i></a></li>
              <!-- do: 경로명 변경 -->
              <li class="breadcrumb-item f-w-400">Dashboard</li>
              <li class="breadcrumb-item f-w-400 active">employeeList</li>
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
          <!-- Container-fluid 시작-->
          <!-- 사원 등록 모달 창 -->
			<div class="modal fade" id="registerModal" tabindex="-1" aria-labelledby="registerModalLabel" aria-hidden="true">
			    <div class="modal-dialog">
			        <div class="modal-content">
			            <div class="modal-header">
			                <h5 class="modal-title" id="registerModalLabel">사원 등록</h5>
			                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			                    <span aria-hidden="true">&times;</span>
			                </button>
			            </div>
			            <div class="modal-body">
			                <!-- 사원 등록 폼 -->
			                <form id="employeeForm" enctype="multipart/form-data">
			                    <!-- 상단 중앙 이미지 -->
			                    <div class="text-center mb-4">
			                        <label for="profileImage">
			                            <img id="profileImagePreview" src="/img/user.jpg"
			                                 alt="profile" class="img-thumbnail"
			                                 style="width: 150px; height: 150px; cursor: pointer; object-fit: cover;">
			                        </label>
			                        <input type="file" id="profileImage" name="profileImage" style="display: none;"
			                               onchange="previewImage(event)">
			                    </div>
			                    <!-- 폼 요소 -->
			                    <div class="container">
			                        <div class="row">
			                            <div class="col-6 mb-2">
			                                <label for="emp_name">이름</label>
			                                <input type="text" class="form-control" id="emp_name" name="emp_name" required>
			                                
			                            </div>
			                            <div class="col-6 mb-2">
			                                <label for="emp_phone_number">전화번호</label>
			                                <input type="tel" class="form-control" id="emp_phone_number" name="emp_phone_number" required>
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="col-6 mb-2">
			                                <label for="emp_birth_date">생년월일</label>
			                                <input type="date" class="form-control" id="emp_birth_date" name="emp_birth_date" required>
			                            </div>
			                            <div class="col-6 mb-2">
			                                <label for="emp_email">이메일</label>
			                                <input type="email" class="form-control" id="emp_email" name="emp_email" required>
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="col-6 mb-2">
			                                <label for="emp_id">사원번호</label>
			                                <input type="text" class="form-control" id="emp_id" name="emp_id" readonly required>
			                            </div>
			                            <div class="col-6 mb-2">
			                                <label for="emp_pw">임시 비밀번호</label>
			                                <input type="text" class="form-control" id="emp_pw" name="emp_pw" value="1111" readonly required>
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="col-6 mb-2">
			                                <label for="de_name">부서</label>
			                                <select class="form-control" id="de_name" name="de_name" onchange="updatePositions()" >
			                                    <option value="임원진">임원진</option>
			                                    <option value="인사관리부서">인사관리부서</option>
			                                    <option value="물류관리부서">물류관리부서</option>
			                                    <option value="경영지원부서">경영지원부서</option>
			                                </select>
			                            </div>
			                            <div class="col-6 mb-2">
			                                <label for="title_name">직위</label>
			                                <select class="form-control" id="title_name" name="title_name">
			                                    <option value="부장">부장</option>
			                                    <option value="과장">과장</option>
			                                    <option value="대리">대리</option>
			                                    <option value="사원">사원</option>
			                                </select>
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="col-6 mb-2">
			                                <label for="leave_days">연차</label>
			                                <input type="number" class="form-control" id="leave_days" name="leave_days" value="15" readonly>
			                            </div>
			                        </div>
			                        <!-- 주소 입력 -->
			                        <div class="row">
			                            <div class="col-12 mb-2">
			                                <label for="postal_code">우편번호</label>
			                                <input type="text" class="form-control" id="postal_code" name="postal_code" readonly>
			                                <button type="button" class="btn btn-outline-secondary mt-2" onclick="openPostalCodeSearch()">우편번호 찾기</button>
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="col-12 mb-2">
			                                <label for="address">주소</label>
			                                <input type="text" class="form-control" id="address" name="address" readonly>
			                            </div>
			                        </div>
			                        <div class="row">
			                            <div class="col-12 mb-2">
			                                <label for="detail_address">상세 주소</label>
			                                <input type="text" class="form-control" id="detail_address" name="detail_address">
			                            </div>
			                        </div>
			                    </div>
			                </form>
			            </div>
			            <div class="modal-footer">
			                <button type="button" class="btn btn-primary" onclick="submitEmployeeForm()">등록</button>
			                <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
			            </div>
			        </div>
			    </div>
			</div>
			


			<!-- Container-fluid Ends-->

			<div class="container-fluid default-dashboard">
			    <div class="row">
			        <!-- 사원 리스트를 표시할 왼쪽 반분 컨테이너 -->
			        <div class="col-lg-6">
			            <div class="search-container">
			                <label for="searchInput">검색:</label>
			                <input type="text" id="searchInput" placeholder="사원명 또는 사원번호">
			                <label for="departmentSelect">부서:</label>
			                <select id="departmentSelect">
			                    <option value="전체">전체</option>
			                    <option value="임원진">임원진</option>
			                    <option value="인사관리부서">인사관리부서</option>
			                    <option value="물류관리부서">물류관리부서</option>
			                    <option value="경영지원부서">경영지원부서</option>
			                </select>
			            </div>
			
			            <!-- 사원리스트 테이블 -->
			            <div class="table-container table-wrapper">
			                <table class="table">
			                    <thead>
			                        <tr>
			                            <th>No</th>
			                            <th>사원번호</th>
			                            <th>사원명</th>
			                            <th>부서명</th>
			                        </tr>
			                    </thead>
			                    <tbody>
						            <!-- 순서 번호를 위한 초기 값 설정 -->
						            <c:set var="rowNumber" value="1" />
						            
						            <c:forEach var="employee" items="${employees}">
						                <tr data-emp-id="${employee.emp_id}">
						                    <!-- 자동 증가하는 번호 출력 -->
						                    <td>${rowNumber}</td>
						                    <td>${employee.emp_id}</td>
						                    <td>${employee.emp_name}</td>
						                    <td>${employee.de_name}</td>
						                </tr>
						                
						                <c:set var="rowNumber" value="${rowNumber + 1}" />
						            </c:forEach>
						        </tbody>
			                </table>
			            </div>
			
			            <!-- 사원등록 및 수정 버튼 -->
			            
			        </div>
			
			        <!-- 오른쪽 반분 컨테이너 -->
			        <div class="col-lg-6">
					    <div class="button-container">
					        <button id="registerButton" class="btn btn-primary" data-toggle="modal" data-target="#registerModal">사원등록</button>
					        <button id="modifyButton" class="btn btn-secondary" data-toggle="modal" data-target="#employeeModifyModal">사원수정</button>
					    </div>
						<div class="button-detail-container">
						    <button id="viewDetailsButton" class="btn custom-btn" style="display: none;">상세보기</button>
						    <button id="annualLeaveButton" class="btn custom-btn" style="display: none;">연차정보</button>
						</div>
					    <!-- 사원 정보 표시 -->
					    <div id="employeeDetails" class="employee-details">
					        <h4>사원 상세 정보</h4>
					        <hr>
					        
					        <!-- 인적정보 섹션 -->
					        <div class="info-section">
					            <h5>인적정보</h5>
					            <div class="info-content">
					                <div class="photo-container">
					                    <img id="employeePhoto" src="/img/user.jpg" alt="사원 사진">
					                </div>
					                <div class="info-details">
					                	<div class="tae-test">
						                    <div class="namePhoneContainer">
						                        <p><strong>이름:</strong> <span id="emp_name_detail"></span></p>
						                        <p><strong>전화번호:</strong> <span id="emp_phone_number_detail"></span></p>
						                    </div>
						                    <div class="info-row">
						                        <p><strong>생년월일:</strong> <span id="emp_birth_date_detail"></span></p>
						                        <p><strong>이메일:</strong> <span id="emp_email_detail"></span></p>
						                    </div>
					                    </div>
					                    <div class="info-row">
					                        <p><strong>거주지:</strong> <span id="address_detail"></span></p>
					                    </div>
					                </div>
					            </div>
					        </div>
					
					        <hr>
					
					        <!-- 재직정보 섹션 -->
					        <div class="info-section">
					            <h5>재직정보</h5>
					            <div class="info-details">
					                <p><strong>사원번호:</strong> <span id="emp_id_detail"></span></p>
					                <p><strong>부서:</strong> <span id="de_name_detail"></span></p>
					                <p><strong>직위:</strong> <span id="title_name_detail"></span></p>
					                <p><strong>입사일자:</strong> <span id="emp_hire_date_detail"></span></p>
					                <p><strong>퇴직일자:</strong> <span id="emp_term_date_detail"></span></p>
					                <p><strong>재직유무:</strong> <span id="emp_status_detail"></span></p>
					            </div>
					        </div>
					    </div>
					    <div id="annualDetails" class="annual-details">
					        <h4>사원 연차정보</h4>
					        <hr>
					        
					        <!-- 인적정보 섹션 -->
					        <div class="info-section">
					            <h5>인적정보</h5>
					            <div class="info-content">
					                <div class="photo-container">
					                    <img id="employeePhoto2" src="/img/user.jpg" alt="사원 사진">
					                </div>
					                <div class="info-details">
					                    <div class="namePhoneContainer">
					                        <p><strong>이름:</strong> <p id="annual_emp_name_detail"></p></p>
					                        <p><strong>전화번호:</strong> <p id="annual_emp_phone_number_detail"></p></p>
					                    </div>
					                    <div class="info-row">
					                        <p><strong>생년월일:</strong> <span id="annual_emp_birth_date_detail"></span></p>
					                        <p><strong>이메일:</strong> <span id="annual_emp_email_detail"></span></p>
					                    </div>
					                    <div class="info-row">
					                        <p><strong>거주지:</strong> <span id="annual_emp_address_detail"></span></p>
					                    </div>
					                </div>
					            </div>
					        </div>
					
					        <hr>
					        
					    <div class="leave-summary">
				            <label for="yearSelect">연차정보:</label>
				            <select id="yearSelect">
				                <option value="2024">2024</option>
				                <option value="2023">2023</option>
				                <option value="2022">2022</option>
				            </select>
				            <table class="leave-summary-table">
				                <thead>
				                    <tr>
				                        <th>이번년도 연차</th>
				                        <th>사용 연차</th>
				                        <th>남은 연차</th>
				                    </tr>
				                </thead>
				                <tbody>
				                    <tr>
				                        <td class="no-click">15</td>
				                        <td id="annual_usage_days_detail" class="no-click"></td>
				                        <td id="annual_leave_days_detail" class="no-click"></td>
				                    </tr>
				                </tbody>
				            </table>
				            <table id="leaveUsageTable" class="leave-details-table">
				                <thead>
				                    <tr>
				                        <th>No</th>
				                        <th>연차 사용 기간</th>
				                        <th>사용 연차</th>
				                        <th>연차 내용</th>
				                    </tr>
				                </thead>
				                <tbody  class="no-click">
				                    <tr>
				                        <td class="no-click"></td>
				                        <td id ="annual-time" class="no-click"></td>
				                        <td id ="lu_usage_days"class="no-click"></td>
				                        <td><button class="detail-button">상세내역</button></td>
				                    </tr>
				                    
				                </tbody>
				            </table>
				        </div>
				    </div>
				</div>
				
				<!-- 사원 수정 모달 창 -->
				<div class="modal fade" id="modifyModal" tabindex="-1" aria-labelledby="modifyModalLabel" aria-hidden="true">
			        <div class="modal-dialog">
			            <div class="modal-content">
			                <div class="modal-header">
			                    <h5 class="modal-title" id="modifyModalLabel">사원 수정</h5>
			                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			                        <span aria-hidden="true">&times;</span>
			                    </button>
			                </div>
			                <div class="modal-body2">
			                    <!-- 사원 수정 폼 -->
				                    <form id="modifyForm">
				                    <div class="text-center mb-4">
				                        <label for="profileImage">
				                            <img id="profileImagePreview" src="/img/user.jpg"
				                                 alt="profile" class="img-thumbnail"
				                                 style="width: 150px; height: 150px; cursor: pointer; object-fit: cover;">
				                        </label>
				                        <input type="file" id="profileImage" name="profileImage" style="display: none;"
				                               onchange="previewImage(event)">
				                    </div>
			                        <div class="container">
			                            <div class="row">
			                                <div class="col-6 mb-2">
			                                    <label for="modifyEmpId">사원번호</label>
			                                    <input type="text" class="form-control" id="modifyEmpId" readonly>
			                                </div>
			                                <div class="col-6 mb-2">
			                                    <label for="modifyEmpName">이름</label>
			                                    <input type="text" class="form-control" id="modifyEmpName">
			                                </div>
			                            </div>
			                            <div class="row">
			                                <div class="col-6 mb-2">
			                                    <label for="modifyEmpPhoneNumber">전화번호</label>
			                                    <input type="tel" class="form-control" id="modifyEmpPhoneNumber">
			                                </div>
			                                <div class="col-6 mb-2">
			                                    <label for="modifyEmpBirthDate">생년월일</label>
			                                    <input type="date" class="form-control" id="modifyEmpBirthDate">
			                                </div>
			                            </div>
			                            <div class="row">
			                                <div class="col-6 mb-2">
			                                    <label for="modifyEmpEmail">이메일</label>
			                                    <input type="email" class="form-control" id="modifyEmpEmail">
			                                </div>
			                                <div class="col-6 mb-2">
			                                    <label for="modifyDeName">부서</label>
			                                    <select class="form-control" id="modifyDeName" name="modifyDeName" onchange="updatePositions()">
			                                        <option value="임원진">임원진</option>
			                                        <option value="인사관리부서">인사관리부서</option>
			                                        <option value="물류관리부서">물류관리부서</option>
			                                        <option value="경영지원부서">경영지원부서</option>
			                                    </select>
			                                </div>
			                                <div class="col-6 mb-2">
			                                    <label for="modifyTitleName">직위</label>
			                                    <select class="form-control" id="modifyTitleName" name="modifyTitleName">
			                                        <option value="부장">부장</option>
			                                        <option value="과장">과장</option>
			                                        <option value="대리">대리</option>
			                                        <option value="사원">사원</option>
			                                    </select>
			                                </div>
			                            </div>
			                             <div class="row">
				                            <div class="col-12 mb-2">
				                                <label for="postal_code">우편번호</label>
				                                <input type="text" class="form-control" id="modifyPostalCode" name="postal_code" readonly>
				                                <button type="button" class="btn btn-outline-secondary mt-2" onclick="openPostalCodeSearch2()">우편번호 찾기</button>
				                            </div>
				                        </div>
				                        <div class="row">
				                            <div class="col-12 mb-2">
				                                <label for="address">주소</label>
				                                <input type="text" class="form-control" id="modifyaddress" name="address" readonly>
				                            </div>
				                        </div>
				                        <div class="row">
				                            <div class="col-12 mb-2">
				                                <label for="detail_address">상세 주소</label>
				                                <input type="text" class="form-control" id="detail_address" name="detail_address">
				                            </div>
				                        </div>
			                        </div>
			                    </form>
			                </div>
			                <div class="modal-footer">
							    <button type="button" class="btn btn-primary" onclick="submitModifyForm()">수정</button>
							    <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
							</div>
			            </div>
			        </div>
			    </div>

				
			<!-- Container-fluid 종료-->

          
          
          </div>
          <!-- Container-fluid Ends-->
        </div>
        <!-- footer start-->
       
      </div>
    
    
	
	<script>
		 function previewImage(event) {
		        var output = document.getElementById('profileImagePreview');
		        output.src = URL.createObjectURL(event.target.files[0]);
		        output.onload = function() {
		            URL.revokeObjectURL(output.src);  
		        }
		    }
	
		    function resetImage() {
		        var defaultImageSrc = '/img/user.jpg';
		        var profileImage = document.getElementById('profileImagePreview');
		        profileImage.src = defaultImageSrc;
	
		        var fileInput = document.getElementById('profileImage');
		        fileInput.value = null;
		    }
	
		    $(document).ready(function() {
		        $('#registerModal').on('hidden.bs.modal', function () {
		            resetImage();
		        });
		    });
		    
		    function updatePositions() {
	            // 선택된 부서를 가져옴
	            var deName = document.getElementById('modifyDeName').value;
	            var titleSelect = document.getElementById('modifyTitleName');
	            
	            console.log('hh',deName);
	           

	            // 직위 선택 옵션을 초기화
	            titleSelect.innerHTML = '';

	            if (deName === '임원진') {
	                // 임원진일 때 직위 옵션
	                titleSelect.appendChild(new Option('대표이사', '대표이사'));
	                titleSelect.appendChild(new Option('상무', '상무'));
	                titleSelect.appendChild(new Option('이사', '이사'));
	            } 
	            else {
	                // 다른 부서일 때 기본 직위 옵션
	                titleSelect.appendChild(new Option('부장', '부장'));
	                titleSelect.appendChild(new Option('과장', '과장'));
	                titleSelect.appendChild(new Option('대리', '대리'));
	                titleSelect.appendChild(new Option('사원', '사원'));
	            }
	        }
		    
		    function InsertPositions() {
	            // 선택된 부서를 가져옴
	            var deName = document.getElementById('de_name').value;
	            var titleSelect = document.getElementById('title_name');
	            
	            console.log('hh',titleSelect);
	           

	            // 직위 선택 옵션을 초기화
	            titleSelect.innerHTML = '';

	            if (deName === '임원진') {
	                // 임원진일 때 직위 옵션
	                titleSelect.appendChild(new Option('대표이사', '대표이사'));
	                titleSelect.appendChild(new Option('상무', '상무'));
	                titleSelect.appendChild(new Option('이사', '이사'));
	            } 
	            else {
	                // 다른 부서일 때 기본 직위 옵션
	                titleSelect.appendChild(new Option('부장', '부장'));
	                titleSelect.appendChild(new Option('과장', '과장'));
	                titleSelect.appendChild(new Option('대리', '대리'));
	                titleSelect.appendChild(new Option('사원', '사원'));
	            }
	        }
	
		    function submitEmployeeForm() {
		        var formData = new FormData($('#employeeForm')[0]); // FormData 객체 생성
		        
		        // 우편번호, 주소, 상세주소를 합쳐서 하나의 문자열로 만든다.
		        var postalCode = $('#postal_code').val();
		        var address = $('#address').val();
		        var detailAddress = $('#detail_address').val();
		        var fullAddress = postalCode + ' ' + address + ' ' + detailAddress;
	
		        // 합쳐진 주소를 emp_address 필드에 추가
		        formData.append('emp_address', fullAddress);
		        updatePositions();
		        formData.append('emp_term_date', '9999-12-31');
	
		        $.ajax({
		            type: 'POST',
		            url: '/employeeInsert',
		            data: formData,
		            dataType: 'json',
		            processData: false,
		            contentType: false,
		            success: function (data) {
		                alert('사원 등록 성공');
		                $('#registerModal').modal('hide');
		                resetForm();
		            },
		            error: function (error) {
		                alert('사원 등록 실패');
		            }
		        });
		    }
	
		    function resetForm() {
		        // 폼 초기화 함수
		        $('#employeeForm')[0].reset(); // 폼 리셋
		        $('#profileImagePreview').attr('src', '/img/wow.jpg'); // 이미지 미리보기 초기화
		    }
	
		    // 주소 API 함수
		    function openPostalCodeSearch() {
		        new daum.Postcode({
		            oncomplete: function(data) {
		                // 검색된 정보를 해당 필드에 넣음
		                document.getElementById('postal_code').value = data.zonecode;
		                document.getElementById('address').value = data.roadAddress; // 도로명 주소 사용
		            }
		        }).open();
		    }
		    
		    function openPostalCodeSearch2() {
		        new daum.Postcode({
		            oncomplete: function(data) {
		                // 검색된 정보를 해당 필드에 넣음
		                document.getElementById('modifyPostalCode').value = data.zonecode;
		                document.getElementById('modifyaddress').value = data.roadAddress; // 도로명 주소 사용
		            }
		        }).open();
		    }
		    
		 // 등록 폼 로딩 시 실행할 함수
		    $(document).ready(function() {
		        // 사원 번호 초기 설정
		        updateEmpId();
		        InsertPositions();
		        // 부서 선택 변경 시 사원 번호 업데이트
		        $("#de_name").change(function() {
		            updateEmpId(); // 부서 변경 시 사원 번호 업데이트
		            InsertPositions();
		        });
		    });
	
		    function updateEmpId() {
		        var de_name = $("#de_name").val();
				var de_char = '';
		        // AJAX를 통해 de_char 값을 가져오기
		        $.ajax({
		            type: "GET",
		            url: "/getnewIdx",
		            data: {},
		            success: function(data) {
		                // 현재 날짜
		                var currentDate = new Date();
		                var yy = String(currentDate.getFullYear()).slice(-2);
		                var mm = ('0' + (currentDate.getMonth() + 1)).slice(-2);
		                var dd = ('0' + currentDate.getDate()).slice(-2);
						
						switch (de_name) {
							case "임원진":
								de_char = "A";
								break;
							case "경영지원부서":
								de_char = "B";
								break;
							case "물류관리부서":
								 de_char = "C";
								break;
							case "인사관리부서":
								de_char = "D";
								break;
							default:
								de_char = "A"; // 기본 값
								break;
						}
		                console.log(data)
		                var empId = yy + mm + dd + de_char + data;
						
		                $("#emp_id").val(empId);
		            },
		            error: function(xhr, status, error) {
		                console.error("에러내용 : " + error);
		            }
		        });
		    }
		    
		    
		    
		    
		    // 직원 상세보기 그리기
		    $(document).ready(function() {
    // 초기에 상세 정보 영역 숨기기
			    $('#employeeDetails').hide();
			    $('#annualDetails').hide();
			
			    // 사원 리스트 클릭 시 선택 표시 및 상세 정보 표시
			    $('table tbody').on('click', 'tr', function() {
			    	if ($(event.target).is('#year_days_detail','#usage_days_detail','#leave_days_detail')) {
			            // 클릭 이벤트 무시
			            return;
			        }
			        // 선택 상태를 토글(toggle)
			        if (!$(this).hasClass('selected')) {
			            // 다른 선택된 행이 있으면 선택 해제 후 현재 행만 선택
			            $('table tbody tr').removeClass('selected');
			            $(this).addClass('selected');
			            
			            // 사원 번호 가져오기
			            const emp_id = $(this).data('emp-id');
			            
			            // 상세 정보 표시
			            displayEmployeeDetails(emp_id);
			            
			            $('#viewDetailsButton').show();
			            $('#annualLeaveButton').show();
			            
			            $('#viewDetailsButton').removeClass('selected');
			            $('#annualLeaveButton').removeClass('selected');

			            // 모든 상세 정보 숨기기
			            $('#employeeDetails').hide();
			            $('#annualDetails').hide();
			        } else {
			            $(this).removeClass('selected');
			            $('#employeeDetails').hide();
			            $('#annualDetails').hide();
			            $('#viewDetailsButton').hide();
			            $('#annualLeaveButton').hide();
			        }
			    });
			    $('#annualLeaveButton').click(function() {
			        const emp_id = $('table tbody tr.selected').data('emp-id');
			        displayAnnualDetails(emp_id);

			        $(this).addClass('selected');
			        $('#viewDetailsButton').removeClass('selected');

			        $('#employeeDetails').hide();
			        $('#annualDetails').show();
			    });

			    // 사원 상세 정보 버튼 클릭 시 사원 상세 정보 표시
			    $('#viewDetailsButton').click(function() {
			        const emp_id = $('table tbody tr.selected').data('emp-id');
			        displayEmployeeDetails(emp_id);

			        $(this).addClass('selected');
			        $('#annualLeaveButton').removeClass('selected');

			        $('#employeeDetails').show();
			        $('#annualDetails').hide();
			    });
			
			    function displayEmployeeDetails(emp_id) {
			        $.ajax({
			            type: 'POST',
			            url: '/employeeDetail.ajax',
			            data: { 'emp_id': emp_id },
			            dataType: 'json',
			            success: function(data) {
			                console.log(data); // 데이터 확인용
			                console.log(data.photo_url);
			                // 사원 정보를 폼에 채워 넣기
			                $('#emp_id_detail').text(data.emp_id);
			                $('#emp_name_detail').text(data.emp_name);
			                $('#emp_phone_number_detail').text(data.emp_phone_number);
			                $('#emp_birth_date_detail').text(data.emp_birth_date);
			                $('#emp_email_detail').text(data.emp_email);
			                $('#de_name_detail').text(data.de_name);
			                $('#title_name_detail').text(data.title_name);
			                $('#leave_days_detail').text(data.leave_days);
			                $('#emp_address_detail').text(data.emp_address); 
			                $('#emp_hire_date_detail').text(data.emp_hire_date);
			                $('#emp_term_date_detail').text(data.emp_term_date); 
			                $('#emp_status_detail').text(data.emp_status); 
			                
			                if (data.photo_url) {
			                    $('#employeePhoto').attr('src', '/photo/'+data.photo_url);
			                } else {
			                    // 데이터에 사진 URL이 없는 경우 대체 처리
			                    $('#employeePhoto').attr('src', '/img/user.jpg'); // 기본 이미지로 대체
			                }
			                
			                $('#employeeDetails').show(); // 상세 정보가 있는 경우 폼 표시
			            },
			            
			            
			            error: function(error) {
			                alert('사원 정보를 가져오는 동안 오류가 발생했습니다.');
			                console.error('Ajax 오류:', error);
			            }
			        });
			    }
			    
			    function displayAnnualDetails(emp_id) {
			        $.ajax({
			            type: 'POST',
			            url: '/annualDetail.ajax',
			            data: { 'emp_id': emp_id },
			            dataType: 'json',
			            success: function(data) {
			                console.log(data); // 데이터 확인용
							console.log('data.emp_name : ' + data.annual_emp_name);
			                // 연차 정보를 폼에 채워 넣기
			                $('#annual_emp_name_detail').text(data.DTO.emp_name); // 데이터가 null인 경우 대체값 추가
				            $('#annual_emp_phone_number_detail').text(data.DTO.emp_phone_number || '');
				            $('#annual_emp_birth_date_detail').text(data.DTO.emp_birth_date || '');
				            $('#annual_emp_email_detail').text(data.DTO.emp_email || '');             
				            $('#annual_emp_address_detail').text(data.DTO.emp_address || '');
				
				            $('#annual_leave_days_detail').text(data.DTO.leave_days || '');
				            $('#annual_usage_days_detail').text(data.DTO.usage_days || '');
			               

			                // 연차 사용 내역 테이블 초기화
			                $('#leaveUsageTable tbody').empty();
							
			                console.log('hi',data);
			                console.log('hhii',data.DTO.annual_leave_usage_history);
			                // 연차 사용 내역을 테이블에 추가
			                if (data.DTO.annual_leave_usage_history && data.DTO.annual_leave_usage_history.length > 0) {
							    let tableBody = $('#leaveUsageTable tbody');
							    
							    tableBody.empty(); // 테이블 내용을 초기화합니다.
							    
							    data.DTO.annual_leave_usage_history.forEach((item, index) => {
							        console.log('Item:', item); // 데이터 확인용 로그
							
							        // 필요한 데이터를 안전하게 추출
							        let startDate = item.lu_start_date ? item.lu_start_date : '없음';
							        let endDate = item.lu_end_date ? item.lu_end_date : '없음';
							        let usageDays = item.lu_usage_days !== undefined ? item.lu_usage_days : '없음';
							
							        let row = $('<tr>');
							        row.append($('<td>').text(index + 1)); // No 열 추가
							        row.append($('<td>').text(startDate + ' - ' + endDate));
							        row.append($('<td>').text(usageDays));
							        row.append($('<td>').html('<button class="detail-button">상세내역</button>'));
							        tableBody.append(row);
							    });
							} else {
							    // 연차 사용 내역 데이터가 없는 경우 대체 처리
							    let tableBody = $('#leaveUsageTable tbody');
							    tableBody.empty(); // 테이블 내용을 초기화합니다.
							    let row = $('<tr>').append($('<td colspan="4">').text('연차 사용 내역이 없습니다.'));
							    tableBody.append(row);
							}
			                console.log('ohoto',data.DTO.photo_url);
			                if (data.DTO.photo_url) {
			                    $('#employeePhoto2').attr('src', '/photo/'+data.DTO.photo_url);
			                } else {
			                    // 데이터에 사진 URL이 없는 경우 대체 처리
			                    $('#employeePhoto2').attr('src', '/img/user.jpg'); // 기본 이미지로 대체
			                }

			                $('#annualDetails').show(); // 연차 상세 정보가 있는 경우 폼 표시
			            },
			            error: function(error) {
			                alert('연차 정보를 가져오는 동안 오류가 발생했습니다.');
			                console.error('Ajax 오류:', error);
			            }
			        });
			    }
			});
		    
		    
		    $(document).ready(function() {
		        // 검색 입력 필드의 변경을 감지
		        $('#searchInput').on('input', function() {
		            filterTable();
		        });

		        // 부서 선택 드롭다운의 변경을 감지
		        $('#departmentSelect').on('change', function() {
		            filterTable();
		        });

		        function filterTable() {
		            let searchValue = $('#searchInput').val().toLowerCase();
		            let selectedDepartment = $('#departmentSelect').val();

		            // 테이블의 각 행을 반복
		            $('tbody tr').each(function() {
		                let empId = $(this).children('td').eq(1).text().toLowerCase();
		                let empName = $(this).children('td').eq(2).text().toLowerCase();
		                let department = $(this).children('td').eq(3).text();

		                // 검색 필드와 부서 선택 필터링 조건 확인
		                let matchSearch = empId.includes(searchValue) || empName.includes(searchValue);
		                let matchDepartment = (selectedDepartment === '전체' || selectedDepartment === department);

		                // 조건에 따라 행을 표시하거나 숨기기
		                if (matchSearch && matchDepartment) {
		                    $(this).show();
		                } else {
		                    $(this).hide();
		                }
		            });
		        }
		    });

			
		    $(document).ready(function() {
		        // 사원 행 클릭 시 상세 정보 표시
		        $('.table tbody').on('click', 'tr', function() {
		            let empId = $(this).data('emp-id');
					
		            // AJAX 요청을 사용하여 서버에서 사원 정보를 가져옵니다.
		            $.ajax({
		                url: '/getEmployeeDetails', // 사원 정보를 가져오는 서버 엔드포인트
		                method: 'GET',
		                data: { empId: empId },
		                success: function(employee) {
		                    // 상세 정보를 채웁니다.
		                    $('#emp_name_detail').text(employee.emp_name);
		                    $('#emp_phone_number_detail').text(employee.emp_phone_number);
		                    $('#emp_birth_date_detail').text(employee.emp_birth_date);
		                    $('#emp_email_detail').text(employee.emp_email);
		                    $('#address_detail').text(employee.address);
		                    $('#emp_id_detail').text(employee.emp_id);
		                    $('#de_name_detail').text(employee.de_name);
		                    $('#title_name_detail').text(employee.title_name);
		                    $('#emp_hire_date_detail').text(employee.emp_hire_date);
		                    $('#emp_term_date_detail').text(employee.emp_term_date);
		                    $('#emp_status_detail').text(employee.emp_status);

		                    // 상세보기 버튼과 연차정보 버튼을 표시
		                    $('#viewDetailsButton').show();
		                    $('#annualLeaveButton').show();
		                }
		            });
		        });

		        // 수정 버튼 클릭 시 모달 창 열기
		        $('#modifyButton').on('click', function() {
		            let emp_id = $('#emp_id_detail').text();
		            updatePositions();
		            updateEmpId();
		            
		            // AJAX 요청을 사용하여 서버에서 사원 정보를 가져옵니다.
		            $.ajax({
		                url: '/employeeDetail.ajax', // 사원 정보를 가져오는 서버 엔드포인트
		                method: 'POST',
		                data: { emp_id: emp_id },
		                success: function(employee) {
		                    // 수정 폼에 정보를 채웁니다.
		                    $('#modifyEmpId').val(employee.emp_id);
		                    $('#modifyEmpName').val(employee.emp_name);
		                    $('#modifyEmpPhoneNumber').val(employee.emp_phone_number);
		                    $('#modifyEmpBirthDate').val(employee.emp_birth_date);
		                    $('#modifyEmpEmail').val(employee.emp_email);
		                    $('#modifyEmpAddress').val(employee.emp_address);
		                    $('#modifyEmpDept').val(employee.de_name);
		                    $('#modifyEmpTitle').val(employee.title_name);
		                    $('#modifyEmpHireDate').val(employee.emp_hire_date);
		                    $('#modifyEmpTermDate').val(employee.emp_term_date);
		                    $('#modifyEmpStatus').val(employee.emp_status);
		                    
		                    // 모달 창 표시
		                    $('#modifyModal').modal('show');
		                }
		            });
		        });

		        // 수정 완료 버튼 클릭 시 서버로 데이터 전송
		        $('#saveChangesButton').on('click', function() {
		            let updatedEmployee = {
		                emp_id: $('#modifyEmpId').val(),
		                emp_name: $('#modifyEmpName').val(),
		                emp_phone_number: $('#modifyEmpPhoneNumber').val(),
		                emp_birth_date: $('#modifyEmpBirthDate').val(),
		                emp_email: $('#modifyEmpEmail').val(),
		                address: $('#modifyEmpAddress').val(),
		                de_name: $('#modifyEmpDept').val(),
		                title_name: $('#modifyEmpTitle').val(),
		                emp_hire_date: $('#modifyEmpHireDate').val(),
		                emp_term_date: $('#modifyEmpTermDate').val(),
		                emp_status: $('#modifyEmpStatus').val()
		            };

		            // 서버로 수정된 데이터를 전송합니다.
		            $.ajax({
		                url: '/updateEmployeeDetails', // 사원 정보를 업데이트하는 서버 엔드포인트
		                method: 'POST',
		                data: JSON.stringify(updatedEmployee),
		                contentType: 'application/json',
		                success: function(response) {
		                    if (response.success) {
		                        alert('수정이 완료되었습니다.');
		                        $('#modifyModal').modal('hide');
		                        // 수정된 데이터를 새로고침
		                        location.reload();
		                    } else {
		                        alert('수정 중 오류가 발생했습니다.');
		                    }
		                }
		            });
		        });
		    });
	</script>
	
	
	

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
		
	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	
		
	<!-- Bootstrap JS -->
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
    <!-- Plugin used-->
    <script>new WOW().init();</script>
  </body>
</html>