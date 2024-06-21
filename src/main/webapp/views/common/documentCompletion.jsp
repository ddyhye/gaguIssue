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
<style>
.container-fluid {
	display: flex;
	justify-content: center;
}

iframe {
	border: none;
	width: 90%;
	text-align: center;
	height: 100%;
	margin-top: 5%;
}

#form {
	width: 70%;
	display: flex;
	height: 750px;
	justify-content: center;
	border: 1px solid;
	background: white;
}
#form-document {
	width: 100%;
	height: 700px; /* 원하는 높이로 설정 */
	overflow: scroll; /* 스크롤바를 항상 표시 */
	border: none; /* 테두리를 없애려면 사용 */
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
					<a href="/index.go"> <img class="img-fluid for-light" src="/assets/images/logo/logo.png" alt="" /> <img class="img-fluid for-dark" src="/assets/images/logo/logo_light.png" alt="" />
					</a>
				</div>
			</div>
			<div class="col-4 col-xl-4 page-title">
				<h4 class="f-w-700">Default dashboard</h4>
				<nav>
					<ol class="breadcrumb justify-content-sm-start align-items-center mb-0">
						<li class="breadcrumb-item"><a href="index.go"> <i data-feather="home"> </i></a></li>
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
					<div class="row h-100 w-100">
						<!-- jeong : 사이드바 시작 -->
						<div class="col-2 sidebar-left-wrapper">
							<ul class="sidebar-left-icons nav nav-pills" id="add-product-pills-tab" role="tablist">
								<li class="nav-item"><a class="nav-link">
										<div class="nav-rounded">
											<div class="product-icons">
												<svg class="stroke-icon">
                                    			<use href="/assets/svg/icon-sprite.svg#product-detail"></use>
                                  			</svg>
											</div>
										</div>
										<div class="product-tab-content">
											<h5>결제 서류 선택</h5>
										</div>
								</a></li>
								<li class="nav-item"><a class="nav-link">
										<div class="nav-rounded">
											<div class="product-icons">
												<svg class="stroke-icon">
                                    			<use href="/assets/svg/icon-sprite.svg#pencil"></use>
                                  			</svg>
											</div>
										</div>
										<div class="product-tab-content">
											<h5>서류 작성</h5>
										</div>
								</a></li>
								<li class="nav-item"><a class="nav-link">
										<div class="nav-rounded">
											<div class="product-icons">
												<svg class="stroke-icon">
                                   				<use href="/assets/svg/icon-sprite.svg#attchment"></use>
                                  			</svg>
											</div>
										</div>
										<div class="product-tab-content">
											<h5>참고 자료 첨부</h5>
										</div>
								</a></li>
								<li class="nav-item"><a class="nav-link active">
										<div class="nav-rounded">
											<div class="product-icons">
												<svg class="stroke-icon">
                                    			<use href="/assets/svg/icon-sprite.svg#print"> </use>
                                  			</svg>
											</div>
										</div>
										<div class="product-tab-content">
											<h5>작성 완료</h5>
										</div>
								</a></li>
							</ul>
						</div>
						<!-- jeong : 사이드바 끝 -->

						<!-- jeong : 시작 -->
						
						<!-- jeong : 끝 -->
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
			<!-- footer end-->
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
	<!-- Plugins JS Ends-->
	<!-- Theme js-->
	<script src="/assets/js/script.js"></script>
	<script src="/assets/js/script1.js"></script>
	
	<script>
    function document_next() {
    	// 작성한 내용은 담은 iframe 요소를 가져온다
        const iframe = document.getElementById('form-document');
        
        // IFrame 요소의 접근 방식
        // https://blog.naver.com/kaiz00/220488509587
        // contentDocument 과 contentWindow 차이
        // https://aljjabaegi.tistory.com/551
        
        // iframe 의 상위 객체인 document 객체를 반환한 후 저장한다
        const iframeDocument = iframe.contentDocument || iframe.contentWindow.document;
        // docuemnt 객체에 접근하여 input, textarea 태그들을 찾은 후 inputs 변수에 담는다
        const inputs = iframeDocument.querySelectorAll('input, textarea');
        // values 는 Key-value 형태로 태그의 이름과 값을 key-value 로 저장할 예정이다
        const values = {};
        
        // 문서에서 입력칸(input, textarea)들의 요소들을 반복문 돌린다
        for (const input of inputs) {
        	// 태그의 이름은 key, 값은 value 로 저장한다 
        	values[input.name] = input.value;
        	// textarea 태그는 value 로 저장하면 나중에 보이지 않기 때문에 textcontent 속성에 저장해야한다
        	if (input.tagName.toLowerCase() === 'textarea') {
            	input.textContent = input.value;	
            }
        	input.setAttribute('value', input.value);
        	// 나중에 문서를 볼때 수정할 수 없게 설정한다
            input.setAttribute('readonly', 'true');
        }
        values['idx_dc'] = ${idx_dc}
	
        // 
        const htmlTag = new Blob([iframeDocument.documentElement.outerHTML], {type: 'text/html'});
        const data = new FormData();
        data.append('file', htmlTag, 'document.html');
        
        const json = new Blob([JSON.stringify(values)], {type: 'application/json'});
        data.append('json', json);
        
        fetch('/document/write.do', {
            method: 'POST',
            body: data
        })
        .then(response => response.json())
        .then(data => console.log('Success:', data))
        .catch(error => console.error('Error:', error));
    }
	</script>
</body>
</html>