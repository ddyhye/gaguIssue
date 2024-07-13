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
		.profileMain {
			height: 90%;
			background: white;
			padding: 15px;
		}
		
		.profileBackground {
			height: 65%;
			background: #7a70ba;
			display: flex;
			justify-content: center;
		}
		
		#profileImage {
			background: url(/img/user.jpg) center 50% no-repeat;
			height: 350px;
			width: 350px;
			border-radius: 50%;
			position: relative;
			border: 10px solid white;
			justify-content: center;
			top: 50%;
			text-align: center;
		}
		
		#photoBtn {
		    position: relative;
		    display:flex;
		    align-items: center;
		    justify-content: center;
			left: 70%;
			width: 75px;
			height: 75px;
			background: white;
			border-radius: 50%;
			cursor: pointer;
		}
		
		#profileImage img {
			position: absolute;
		}
		
		.profileInfo {
			padding: 75 0 0 155;
			display: flex;
			width: 100%;
			justify-content: space-between;
		}
		
		.infomation {
			width: 25%;
		}
		
		.form-input {
			width: 60%;
			height: 40%;
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
          <h4 class="f-w-700">프로필</h4>
          <nav>
            <ol class="breadcrumb justify-content-sm-start align-items-center mb-0">
              <li class="breadcrumb-item"><a href="index.go"> <i data-feather="home"> </i></a></li>
              <!-- do: 경로명 변경 -->
              <li class="breadcrumb-item f-w-400">회원 서비스</li>
              <li class="breadcrumb-item f-w-400 active">프로필</li>
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
          	<div class="profileMain">
          		<div class="profileBackground">
          			<div id="profileImage">
          				<div id="photoBtn">
          					<i class="fa fa-3x fa-camera"></i>
          					<input class='hidden-file-input' type='file' id='fileInput' style='display: none;'>
          				</div>
          				<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
						<h1>${employeeInfo.empName}</h1>
          				<h6>${employeeInfo.empId}</h6>
          			</div>
          		</div>
          		<div>
          			<div style="width: 100%; height: 10%;display: flex; justify-content: end;">
	          			<div class="d-flex align-items-center">
          					<button class="btn btn-primary btn-ms" onClick="updateEmployeeInfo()">프로필 수정</button>
          				</div>
          			</div>
          			<br/>
					<div class="profileInfo">
						<div class="infomation">
							<div class="d-flex align-items-center">
								<i class="fa fa-2x fa-user m-5"></i>
								<h3>부서/직위</h3>
							</div>
							<h4>${employeeInfo.departmentName}/${employeeInfo.titleName}</h4>
						</div>
						<div class="infomation">
							<div class="d-flex align-items-center">
								<i class="fa fa-2x fa-birthday-cake m-5"></i>
								<h3>생일</h3>
							</div>
							<input class="form-control flatpickr-input form-input" id="birthDate" type="text" value="${employeeInfo.empBirthDate}" onChange="startDateOnChanage()" readonly="readonly">
						</div>												
						<div class="infomation">
							<div class="d-flex align-items-center">
								<i class="fa fa-2x fa-envelope m-5"></i>
								<h3>이메일</h3>
							</div>
							<input class="form-control form-input" id="email" type="text" value="${employeeInfo.email}"/>
						</div>
						<div class="infomation">
							<div class="d-flex align-items-center">
								<i class="fa fa-2x fa-mobile m-5"></i>
								<h3>전화번호</h3>
							</div>
							<input class="form-control form-input" id="phoneNumber" type="text" value="${employeeInfo.phoneNumber}"/>
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
    <!-- flatpickr -->
	<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
	<script src="https://cdn.jsdelivr.net/npm/flatpickr/dist/l10n/ko.js"></script>
	<!-- Sweetalert js -->
	<script src='/assets/js/sweet-alert/sweetalert.min.js'></script>
    <script>new WOW().init();</script>
    <script>
    	var uploadProfileFile = 'none';
    	var filepath = '${employeeInfo.profileFilePath}';
    	
		async function loadImage() {
		    try {
		        const response = await fetch('/file/'+ filepath);
		        if (response.ok) {
		        	
		            const blob = await response.blob();
		            const url = URL.createObjectURL(blob);
		            console.log(url);
		            document.querySelector('#profileImage').style.backgroundImage = 'url('+url+')';
		        } else {
		            console.error('Failed to load image');
		        }
		    } catch (error) {
		        console.error('Error:', error);
		    }
		}
		loadImage();
		
		document.querySelector('#photoBtn').addEventListener('click', function(event){
			document.getElementById('fileInput').click();		
		});
		
        document.getElementById('fileInput').addEventListener('change', function(event) {
            const file = event.target.files[0];
            console.log(file);
            addFile(file);
        });
		
	    function addFile(file) {
			if(!isValid(file)) {
				return;
			}
			uploadProfileFile = file;
			uploadProfileImage();
			
	    }
	    
	    function updateEmployeeInfo() {
	    	const birthDate = document.querySelector('#birthDate').value;
	    	const email = document.querySelector('#email').value;
	    	const phoneNumber = document.querySelector('#phoneNumber').value;
	    	
            const birthDatePattern = /^\d{4}-\d{2}-\d{2}$/;
            const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
            const phoneNumberPattern = /^\d{3}-\d{4}-\d{4}$/;

            let valid = true;

            if (!birthDatePattern.test(birthDate)) {
                Swal.fire('생일은 날짜 형식(2024-07-16)에 맞추어서 작성해주세요')
                valid = false;
            }

            if (!emailPattern.test(email)) {
                Swal.fire('이메일 형식에 맞추어서 작성해주세요');
                valid = false;
            }

            if (!phoneNumberPattern.test(phoneNumber)) {
                Swal.fire('휴대폰 번호 형식(xxx-xxxx-xxxx)에 맞추어서 작성해주세요');
                valid = false;
            }

            if (valid) {
            	var data = new FormData();
            	data.append('birthDate', birthDate);
            	data.append('email', email);
            	data.append('phoneNumber', phoneNumber);
    	        fetch('/employee/updateProfileInfo.do', {
    	            method: 'POST',
    	            body: data
    	        })
    	        .then(response => response.json())
    	        .then(data => {

    	        })
    	        .catch(error => {
    	        });
            }	 
	    }
	    
	    function uploadProfileImage() {
	    	var data = new FormData();
	    	const profileImage = new Blob([uploadProfileFile], {type: uploadProfileFile.type});
	    	
	    	data.append('uploadProfileFile', profileImage, uploadProfileFile.name);
	    	
	        fetch('/employee/uploadProfileImage.do', {
	            method: 'POST',
	            body: data
	        })
	        .then(response => response.json())
	        .then(data => {
	        	console.log(data);
	        	filepath = data.profileImageName;
	        	loadImage();
	        })
	        .catch(error => {
	        });
	    }
		
		function isValid(file) {
			//이미지인지 유효성 검사
	        const allowedMimeTypes = [
	            // 이미지
	            'image/jpeg', 
	            'image/png', 
	            'image/gif', 
	            'image/bmp', 
	            'image/webp',
	        ];
			
			// 첨부 파일 형식은 한글, MS문서, 이미지, 텍스트 등이다.
			if(!allowedMimeTypes.includes(file.type)){
				Swal.fire('이미지 형식으로만 프로필 사진을 변경할 수 있습니다.');
				return false;
			}
			
			// 파일의 사이즈는 5MB 미만이다.
			if(file.size >= 1024 * 1024 * 5){
				Swal.fire('5MB 이상인 파일은 첨부할 수 없습니다.');
				return false;
			}

			return true;
		}
		
        function bytesToMB(bytes) {
            return (bytes / (1024 * 1024)).toFixed(2); // 메가바이트로 변환하고 소수점 둘째 자리까지 표시
        }
    </script>
  </body>
</html>
