<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%><%@ taglib prefix='c'
	uri='http://java.sun.com/jsp/jstl/core'%><html>
<html lang='ko'>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<meta http-equiv='X-UA-Compatible' content='IE=edge'>
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
<meta name='description'
	content='Mofi admin is super flexible, powerful, clean &amp; modern responsive bootstrap 5 admin template with unlimited possibilities.'>
<meta name='keywords'
	content='admin template, Mofi admin template, dashboard template, flat admin template, responsive admin template, web app'>
<meta name='author' content='pixelstrap'>
<link rel='icon' href='/assets/images/favicon.png' type='image/x-icon'>
<link rel='shortcut icon' href='/assets/images/favicon.png'
	type='image/x-icon'>
<title>Default Dashboard | Mofi - Premium Admin Template By
	Pixelstrap</title>
<!-- Google font-->
<link rel='preconnect' href='https://fonts.googleapis.com'>
<link rel='preconnect' href='https://fonts.gstatic.com' crossorigin=''>
<link
	href='https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;300;400;500;600;700;800;900&amp;display=swap'
	rel='stylesheet'>
<link rel='stylesheet' type='text/css'
	href='<c:url value='/assets/css/font-awesome.css'/>'>
<!-- ico-font-->
<link rel='stylesheet' type='text/css'
	href='<c:url value='/assets/css/vendors/icofont.css'/>'>
<!-- Themify icon-->
<link rel='stylesheet' type='text/css'
	href='<c:url value='/assets/css/vendors/themify.css'/>'>
<!-- Flag icon-->
<link rel='stylesheet' type='text/css'
	href='<c:url value='/assets/css/vendors/flag-icon.css'/>'>
<!-- Feather icon-->
<link rel='stylesheet' type='text/css'
	href='<c:url value='/assets/css/vendors/feather-icon.css'/>'>
<!-- Plugins css start-->
<link rel='stylesheet' type='text/css'
	href='<c:url value='/assets/css/vendors/slick.css'/>'>
<link rel='stylesheet' type='text/css'
	href='<c:url value='/assets/css/vendors/slick-theme.css'/>'>
<link rel='stylesheet' type='text/css'
	href='<c:url value='/assets/css/vendors/scrollbar.css'/>'>
<link rel='stylesheet' type='text/css'
	href='<c:url value='/assets/css/vendors/animate.css'/>'>
<link rel='stylesheet' type='text/css'
	href='<c:url value='/assets/css/vendors/datatables.css'/>'>
<link rel='stylesheet' type='text/css'
	href='<c:url value='/assets/css/vendors/date-range-picker/flatpickr.min.css'/>'>
<!-- Plugins css Ends-->
<script src='https://code.jquery.com/jquery-3.6.0.min.js'></script>
<!-- Bootstrap -->
<link rel='stylesheet' type='text/css'
	href='<c:url value='/assets/css/vendors/bootstrap.css'/>'>
<link
	href='https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css'
	rel='stylesheet'>
<script
	src='https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js'></script>
<!-- App css-->
<link rel='stylesheet' type='text/css'
	href='<c:url value='/assets/css/style.css'/>'>
<link id='color' rel='stylesheet'
	href='<c:url value='/assets/css/color-1.css'/>' media='screen'>
<!-- Responsive css-->
<link rel='stylesheet' type='text/css'
	href='<c:url value='/assets/css/responsive.css'/>'>
<!-- jsTree theme -->
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css' />
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
	width: 80%;
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

#ex9 {
	margin-top: 20px;
	display: flex;
	justify-content: center;
}

#ex9 .upload-box {
	width: 85%;
	height: 150px;
	border: 1px dashed black;
	display: flex;
	justify-content: center;
	background: white;
	align-items: center;
}
.upload-box span {
	font-size: 12px;
}
#jstree {
	overflow-y: auto;
	max-height: 300px;
	height: 290px;
	border: 1px solid #ccc;
}
#approvalLine {
	font-family: outfit;
	font-size: 15px;
	text-align: center;
	border: 1px #dbdbdb solid;
}
.approvalHr {
	color: #000000;
	background: #F4F4F4;
	font-weight: bold;
	border: 1.5px #dbdbdb solid;
}
#writer {
	color: #aeaeae;
}

#approvalLineHeader {
	font-size: 18px;
}
.no-checkbox > .jstree-checkbox {
	display: none;
}
.seectionBorder {
	width: 100%;
	border: 1px solid black;
}
</style>
</head>
<body>
	<div class='loader-wrapper'>
		<div class='loader loader-1'>
			<div class='loader-outter'></div>
			<div class='loader-inner'></div>
			<div class='loader-inner-1'></div>
		</div>
	</div>
	<!-- loader ends-->
	<!-- tap on top starts-->
	<div class='tap-top'>
		<i data-feather='chevrons-up'></i>
	</div>
	<!-- tap on tap ends-->
	<!-- page-wrapper Start-->
	<div class='page-wrapper compact-wrapper' id='pageWrapper'>
		<div class='page-header row'>
			<div class='header-logo-wrapper col-auto'>
				<div class='logo-wrapper'>
					<a href='/index.go'> <img class='img-fluid for-light'
						src='/assets/images/logo/logo.png' alt='' /> <img
						class='img-fluid for-dark'
						src='/assets/images/logo/logo_light.png' alt='' />
					</a>
				</div>
			</div>
			<div class='col-4 col-xl-4 page-title'>
				<h4 class='f-w-700'>Default dashboard</h4>
				<nav>
					<ol
						class='breadcrumb justify-content-sm-start align-items-center mb-0'>
						<li class='breadcrumb-item'><a href='index.go'> <i
								data-feather='home'> </i></a></li>
						<li class='breadcrumb-item f-w-400'>Dashboard</li>
						<li class='breadcrumb-item f-w-400 active'>Default</li>
					</ol>
				</nav>
			</div>
			<!-- Page Header Start -->
			<%@ include file='../main/common_top.jsp'%>
			<!-- Page Header Ends -->
		</div>
		<!-- Page Body Start-->
		<div class='page-body-wrapper'>
			<!-- Page Sidebar Start-->
			<%@ include file='../main/common_sidebar.jsp'%>
			<!-- Page Sidebar Ends-->
			<div class='page-body' style='padding: 30 50 0 30;'>
				<!-- Container-fluid starts-->
				<div class='container-fluid default-dashboard'>
					<div class='row h-100 w-100'>
						<!-- jeong : 사이드바 시작 -->
						<div class='col-2 sidebar-left-wrapper'
							style='padding-right: 24px;'>
							<ul class='sidebar-left-icons nav nav-pills'
								id='add-product-pills-tab' role='tablist'>
								<li class='nav-item'><a class='nav-link'>
										<div class='nav-rounded'>
											<div class='product-icons'>
												<svg class='stroke-icon'>
                                    			<use
														href='/assets/svg/icon-sprite.svg#product-detail'></use>
                                  			</svg>
											</div>
										</div>
										<div class='product-tab-content'>
											<h5>결제 서류 선택</h5>
										</div>
								</a></li>
								<li class='nav-item'><a class='nav-link active'>
										<div class='nav-rounded'>
											<div class='product-icons'>
												<svg class='stroke-icon'>
                                    			<use
														href='/assets/svg/icon-sprite.svg#pencil'></use>
                                  			</svg>
											</div>
										</div>
										<div class='product-tab-content'>
											<h5>서류 작성</h5>
										</div>
								</a></li>
								<li class='nav-item'><a id="ApprovalStatus" class='nav-link'>
										<div class='nav-rounded'>
											<div class='product-icons'>
												<svg class='stroke-icon'>
                                    			<use
														href='/assets/svg/icon-sprite.svg#fill-user'></use>
                                  			</svg>
											</div>
										</div>
										<div class='product-tab-content'>
											<h5>결재자 지정</h5>
										</div>
								</a></li>
								<li class='nav-item'><a class='nav-link'>
										<div class='nav-rounded'>
											<div class='product-icons'>
												<svg class='stroke-icon'>
                                    			<use
														href='/assets/svg/icon-sprite.svg#orders'> </use>
                                  			</svg>
											</div>
										</div>
										<div class='product-tab-content'>
											<h5>결재 요청</h5>
										</div>
								</a></li>
							</ul>
						</div>
						<!-- jeong : 사이드바 끝 -->

						<!-- jeong : 문서 양식 작성하는 영역 시작 -->
						<div class='col-10 h-100'>
							<div class='row'>
								<div class='col-1'></div>
								<div class='col-10'>
									<div id='submit'
										style='display: flex; justify-content: end; padding: 5px;'>
										<!-- <button class='btn btn-primary ripple-button' style='cursor: default;margin-right: 10px;cursor: pointer;'>결재자 지정</button> -->
										<button type='button' class='btn btn-primary'
											style='margin-right: 20px;' data-toggle='modal'
											data-target='#approverModal'>결재자 지정</button>
										<button class='btn btn-primary ripple-button' id="confirmBtn"
											style='background: gray !important; border-color: gray !important; cursor: default;'
											onclick='documentWrite()'>작성 완료</button>
									</div>
									<br />
									<div class='row'
										style='display: flex; flex-direction: column; align-items: center;'>
										<div style="width: 80%;margin-bottom: 10px;">
					                        <label class="form-label">문서 제목</label>
					                        <input class="form-control" id="documentTtile" type="text" placeholder="문서의 제목을 입력해주세요." required="">								
										</div>
										<div id='form' class='row'>		
											<iframe id='form-document' src='/file/${formSrc}'></iframe>
										</div>
									</div>
									<div class='row'>
										<section id='ex9'>
											<div class='upload-box'>
												<p style='font-size: 1.5rem; margin-bottom: 0rem;'>
													이 곳에 파일을 드래그 하세요. 또는 <a id='fileSelectLink'
														style='font-size: 1.5rem; text-decoration: underline; cursor: pointer;'>파일선택</a>
												</p>
											</div>
											<input class='hidden-file-input' type='file' id='fileInput'
												style='display: none;' multiple>
										</section>
									</div>
								</div>
								<div class='col-1'></div>
							</div>
						</div>
						<!-- jeong : 문서 양식 작성하는 영역 끝 -->
					</div>
				</div>
				<!-- Container-fluid Ends-->
			</div>
			<!-- footer start-->
			<footer class='footer'>
				<div class='container-fluid'>
					<div class='row'>
						<div
							class='col-md-12 footer-copyright d-flex flex-wrap align-items-center justify-content-between'>
							<p class='mb-0 f-w-600'>
								Copyright <span class='year-update'> </span> Â© Mofi theme by
								pixelstrap
							</p>
							<p class='mb-0 f-w-600'>
								Hand crafted & made with
								<svg class='footer-icon'>
                    				<use
										href='/assets/svg/icon-sprite.svg#footer-heart'> </use>
                  				</svg>
							</p>
						</div>
					</div>
				</div>
			</footer>
			<!-- footer end-->
		</div>
		<!-- [jeong] : 결재재 지정 모달 시작 -->
		<div class='modal fade' id="approverModal" role='dialog'>
			<div class='modal-dialog' role='document' style="top: 10%;height: 525px;max-width: 1200px;">
				<div class='modal-content' style="height: 100%">
					<div class='modal-header'>
						<h5 class='modal-title' id='approverModalLabel'>결재자 지정</h5>
						<button type='button' class='close' data-dismiss='modal'
							aria-label='Close'>
							<span aria-hidden='true'>&times;</span>
						</button>
					</div>
					<div class='modal-body' style='display: flex;height: 80%'>
						<!-- 결재자 목록 -->
						<div class='col-4'>
							<h5 style="font-weight: bold;">조직도</h5>
							<section class="seectionBorder">							
								<div id='jstree'>
									
								</div>
							</section>
							<input type="text" id="searchInput" placeholder="직원 이름을 검색하세요." style="margin-top: 5px; width: 100%">
						</div>
						<!-- 버튼 -->
						<div class="col-1 d-flex flex-column align-items-center justify-content-center">
							<button type='button' class='btn btn-primary' onClick="approvalAdd()" style="width:100px;">추가</button>
							<button type='button' class='btn btn-primary' onClick="approvalRemove()" style="width:100px;margin-top: 10px;">제외</button>
						</div>
						<!-- 결재라인 -->
						<div class='col-7'>
							<h5 style="font-weight: bold;">결재 순서</h5>
							<section class="seectionBorder"style="height: 325px;">	
								<table id='approvalLine' style='width: 100%'>
									<tr id='approvalLineHeader'>
										<td style='width: 15%'>순서</td>
										<td style='width: 15%'>이름</td>
										<td style='width: 30%'>부서</td>
										<td style='width: 30%'>직급</td>
									</tr>
									<tr>
										<td class='approvalHr' colspan='5'>요청</td>
									</tr>
									<tr id='writer'>
										<td></td>
										<td>${employeeDTO.emp_name}</td>
										<td>${employeeDTO.de_name}</td>
										<td>${employeeDTO.title_name}</td>
									</tr>
									<tr>
										<td class='approvalHr' colspan='5'>결재</td>
									</tr>
									<tbody id="approvalLineTable">
									</tbody>
								</table>
							</section>
						</div>
					</div>
					<div class='modal-footer' style="padding-top: 7px;">
						<button type='button' class='btn btn-secondary'data-dismiss='modal' onclick='resetApprover()'>취소</button>
						<button type='button' class='btn btn-primary' data-dismiss='modal' onclick='assignApprover()'>확인</button>
					</div>
				</div>
			</div>
		</div>
		<!-- [jeong] : 결재재 지정 모달 끝 -->
	</div>
	<!-- Bootstrap js-->
	<script src='/assets/js/bootstrap/bootstrap.bundle.min.js'></script>
	<!-- feather icon js-->
	<script src='/assets/js/icons/feather-icon/feather.min.js'></script>
	<script src='/assets/js/icons/feather-icon/feather-icon.js'></script>
	<!-- scrollbar js-->
	<script src='/assets/js/scrollbar/simplebar.js'></script>
	<script src='/assets/js/scrollbar/custom.js'></script>
	<!-- Sidebar jquery-->
	<script src='/assets/js/config.js'></script>
	<!-- Plugins JS start-->
	<script src='/assets/js/sidebar-menu.js'></script>
	<script src='/assets/js/sidebar-pin.js'></script>
	<script src='/assets/js/slick/slick.min.js'></script>
	<script src='/assets/js/slick/slick.js'></script>
	<script src='/assets/js/header-slick.js'></script>
	<script src='/assets/js/chart/apex-chart/apex-chart.js'></script>
	<script src='/assets/js/chart/apex-chart/stock-prices.js'></script>
	<script src='/assets/js/chart/apex-chart/moment.min.js'></script>
	<script src='/assets/js/notify/bootstrap-notify.min.js'></script>
	<!-- Plugins JS Ends-->
	<!-- Theme js-->
	<script src='/assets/js/script.js'></script>
	<script src='/assets/js/script1.js'></script>
	<!-- Sweetalert js -->
	<script src='/assets/js/sweet-alert/sweetalert.min.js'></script>
	<!-- JsTree -->
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js'></script>
	<!-- font-awesome -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
	
	<script>
		/* [jeong] 헤더와 page-body 의 간격이 벌어져서 스크립트로 맞춤 */
/* 	    var pageHeader = document.querySelector('.page-header');
	    var pageBody = document.querySelector('.page-body');
	
	    if (pageHeader && pageBody) {
	        var headerHeight = pageHeader.offsetHeight;
	        pageBody.style.marginTop = headerHeight + 'px';
	    }   */
    </script>
	<script>
    	/* [jeong] 작성자의 성명, 부서, 직급, 현재 날짜를 서버로부터 받아와 문서에 자동으로 기입 */
    	const iframe = document.getElementById('form-document');
    	const iframeDocument = iframe.contentDocument || iframe.contentWindow.document;
    	const inputs = iframeDocument.querySelectorAll('input, textarea');
    	const employeeInfo = JSON.parse('${employeeInfo}');
        // 데이터 맵을 순회하면서 input 태그에 값을 설정
        for (var key in employeeInfo) {
            if (employeeInfo.hasOwnProperty(key)) {
                var fields = iframeDocument.querySelectorAll('input[name="' + key + '"]');           
                for (const field of fields) {
                	field.value = employeeInfo[key];
                }
            }
        }
    </script>
    <script>
   		/* [jeong] 조직도 불러오기 */
   		var selectedEmp = 0;
   		var approvalLine = [];
   		var confirmApprovalLine = [];
   		var removeIdx = 9999;
   		var approvalStatus = false;
   		
	    $('#jstree').jstree({ 
			'plugins': ['wholerow','radio','types','search'],
			'core' : {
				'multiple': false,
/* 				'data' : [
					{ 'type': 'department', 'id' : 'gaguissue', 'parent' : '#', 'text' : '가구있수' },
					{ 'type': 'default', 'id' : 'ajson1', 'parent' : 'gaguissue', 'text' : '대표이사' },
					{ 'type': 'default',  'id' : 'ajson2', 'parent' : 'gaguissue', 'text' : '전무' },
					{ 'type': 'department',  'id' : 'ajson3', 'parent' : 'gaguissue', 'text' : '인사팀' },
					{ 'type': 'default',  'id' : 'emp1', 'parent' : 'ajson3', 'text' : '김정원', 'department' : '개발', 'title' : '대리', },
					{ 'type': 'default',  'id' : 'emp2', 'parent' : 'ajson3', 'text' : '전태환', 'data' : '사원' },
					{ 'type': 'default',  'id' : 'emp3', 'parent' : 'ajson3', 'text' : '이도혜', "state": { "checkbox_disabled": true } },
					{ 'type': 'department',  'id' : 'ajson4', 'parent' : 'gaguissue', 'text' : '경영지원팀', "li_attr": { "class": "no-checkbox" } },
					{ 'type': 'default',  'id' : 'emp4', 'parent' : 'ajson4', 'text' : '김정원' },
					{ 'type': 'default',  'id' : 'emp5', 'parent' : 'ajson4', 'text' : '전태환' },
					{ 'type': 'default',  'id' : 'emp6', 'parent' : 'ajson4', 'text' : '이도혜' },
					{ 'type': 'default',  'id' : 'emp7', 'parent' : 'ajson4', 'text' : '구일승' },
					{ 'type': 'default',  'id' : 'emp8', 'parent' : 'ajson4', 'text' : '임재민' },
					{ 'type': 'department',  'id' : 'ajson5', 'parent' : 'gaguissue', 'text' : '물류팀' },
					{ 'type': 'default',  'id' : 'emp9', 'parent' : 'ajson4', 'text' : '김정원' },
					{ 'type': 'default',  'id' : 'emp10', 'parent' : 'ajson4', 'text' : '전태환' },
					{ 'type': 'default',  'id' : 'emp11', 'parent' : 'ajson4', 'text' : '이도혜' },
					{ 'type': 'default',  'id' : 'emp12', 'parent' : 'ajson4', 'text' : '구일승' },
					{ 'type': 'default',  'id' : 'emp13', 'parent' : 'ajson4', 'text' : '임재민' },
				], */
				'data' : JSON.parse('${organization}')
			},
			'types' : {
				'employee' : {
					'icon' : 'fas fa-user',
					'select_node': false // 노드 선택 불가 설정
				},
				'department' : {
					'icon' : 'fas fa-users',
					'select_node': false // 노드 선택 불가 설정
				}
			},
	      	'search': {
		        'show_only_matches': true,
		        'show_only_matches_children': true
	        }
	   	}).on('loaded.jstree', function() {
	   		$("#jstree").jstree("open_all");
		}).on('open_all.jstree', function() {
			$('#jstree').css('max-height', $('.seectionBorder').height() * 0.9 + 'px');
		}).on('select_node.jstree', function(e, data) {
			if (data.node.type == 'department') { // 선택 불가능한 타입 검사
			    data.instance.deselect_node(data.node); // 노드 선택 해제
			    return false; // 선택을 막음
			}
			selectedEmp = data.node;
		});
	    var to = false;
		$('#searchInput').keyup(function() {
			if(to) { clearTimeout(to); }
			to = setTimeout(function() {
				var v = $('#searchInput').val();
				$('#jstree').jstree(true).search(v);
			 }, 250);
		 });
		
		/* [jeong] 조직도에서 선택한 직원을 결재 라인에 추가한다 */
		function approvalAdd() {
			if (selectedEmp != 0) {
				if (approvalLine.length == 4) {
					Swal.fire('최대 결재자 지정은 4명까지 가능합니다.');
					return;
				} 
				// 결재자를 추가
				approvalLine.push(selectedEmp);
				drawApprovalTable();	
			}
		}
		
		/* [jeong] approvalLine 에 저장된 결재라인을 그려주는 함수 */
		function drawApprovalTable() {
			let content = '';
			approvalLine.forEach((approvalEmp, index) => {
				content += '<tr id="approvalEmp_' + index + '" value="'+ index +'" style="cursor: pointer;">';
				content += '<td>' + (index + 1) + '</td>';
				content += '<td>' + approvalEmp.original.name + '</td>'; // 직원의 이름
				content += '<td>' + approvalEmp.original.department + '</td>';
				content += '<td>' + approvalEmp.original.title + '</td>';
				content += '</tr>';
			});

			
			document.getElementById('approvalLineTable').innerHTML = content;
			
			/* [jeong] 결재라인에서 제외할 수 있도록 클릭 이벤트를 걸어둔다 */
 			approvalLine.forEach((approvalEmp, index) => {
				const id = 'approvalEmp_' + index;
				document.getElementById(id).addEventListener('click', function(e) {
					const trTag = e.target.closest('tr');
					removeIdx = parseInt(trTag.getAttribute('value'));
					trTag.style.background = '#AEE6FF';
				});
			}); 
		}
		
		/* [jeong] 선택한 결재자를 제외한다 */
		function approvalRemove() {
			if (removeIdx != 9999) {				
				approvalLine.splice(removeIdx, 1);
				drawApprovalTable();
				removeIdx = 9999;
			}
		}
		
		/* [jeong] 결재자 지정 모달에서 취소버튼을 누르면 결재 라인을 비운다 */
		function resetApprover() {
			approvalLine = [];
			confirmApprovalLine = [];
			drawApprovalTable();
    		document.getElementById('ApprovalStatus').classList.remove('active');
    		const confirmBtn = document.getElementById('confirmBtn');
    		console.log(confirmBtn);
    		confirmBtn.style.cssText = 'background-color: gray !important; border-color: gray !important; cursor: default;';
    		approvalStatus = false;
		}
		
		/* [jeong] 결재자 지정 모달에서 확인 버튼을 누르면 결재자 지정이 완료된다 */
    	function assignApprover() {
    		if (approvalLine.length == 0) {
    			Swal.fire('최소 한명의 결재자를 지정해야합니다.');
    			return;
    		}
    		confirmApprovalLine = [];
    		// 확정
    		for (let i = 0; i < approvalLine.length; i++) {
    		    confirmApprovalLine.push(parseInt(approvalLine[i].id));
    		}
    		document.getElementById('ApprovalStatus').classList.add('active');
    		const confirmBtn = document.getElementById('confirmBtn');
    		confirmBtn.style.backgroundColor = 'purple';
    		confirmBtn.style.borderColor = 'purple';
    		confirmBtn.style.cursor = 'pointer';
    		approvalStatus = true;
    	}
    </script>
	<script>
		/* [jeong] 서버에게 문서, 결재자 정보들을 묶어서 결재(문서)를 요청 */
	    function documentWrite() {
	    	const documentTtile = document.getElementById('documentTtile').value;
			if (approvalStatus == false) {
				Swal.fire('결재자 지정을 먼저 해야합니다.');
				return;
			} else if (documentTtile == null || documentTtile == '') {
				Swal.fire('문서의 제목을 입력 해야합니다.');
				return;
			}
			
	    	// 작성한 내용은 담은 iframe 요소를 가져온다
	        const iframe = document.getElementById('form-document');
	        
	        // iframe 의 상위 객체인 document 객체를 반환한 후 저장한다
	        const iframeDocument = iframe.contentDocument || iframe.contentWindow.document;
	        // docuemnt 객체에 접근하여 input, textarea 태그들을 찾은 후 inputs 변수에 담는다
	        const inputs = iframeDocument.querySelectorAll('input, textarea');
	        // documentData 는 Key-value 형태로 태그의 이름과 값을 key-value 로 저장할 예정이다
	        const documentData = {};
	        
	        // 문서에서 입력칸(input, textarea)들의 요소들을 반복문 돌린다
	        for (const input of inputs) {
	        	// 태그의 이름은 key, 값은 value 로 저장한다 
	        	documentData[input.name] = input.value;
	        	// textarea 태그는 value 로 저장하면 나중에 보이지 않기 때문에 textcontent 속성에 저장해야한다
	        	if (input.tagName.toLowerCase() === 'textarea') {
	            	input.textContent = input.value;	
	            }
	        	input.setAttribute('value', input.value);
	        	// 나중에 문서를 볼때 수정할 수 없게 설정한다
	            input.setAttribute('readonly', 'true');
	        }
	        documentData['idxDc'] = ${idxDc};
			
	        const htmlTag = new Blob([iframeDocument.documentElement.outerHTML], {type: 'text/html'});
	        
	        var data = new FormData();
	        
/* 	        const attachment = getBlobs(uploadFiles);
	        console.log(attachment);
	        attachment.forEach((item, index) => {
	        	console.log(item, index);
	        	data.append('attachmentFiles', item.blob, item.name);
	        }); */
	        
	        for (let i = 0; i < uploadFiles.length; i++) {
	            const file = uploadFiles[i];
	            data.append('attachmentFiles', file, file.name);
	        }
	        
	        data.append('documentFile', htmlTag, 'document.html');
	        data.append('documentData', JSON.stringify(documentData));
	        data.append('approvalLine', JSON.stringify(confirmApprovalLine));
	        data.append('documentTtile', documentTtile);
	        console.log(data);
	        
	        fetch('/document/write.do', {
	            method: 'POST',
	            body: data
	        })
	        .then(response => response.json())
	        .then(data => {
	        	if (data.success) {
	        		window.location.href = '/document/'+ data.idxApproval +'/detail.go'; 
	        	} else {
	        		// 오류 메시지 뜨게 하기
	        		Swal.fire({
	        			title:'문서 작성 중 오류가 발생하여 양식 선택 페이지로 이동합니다.'
	        		}).then((result) => {
	        			window.location.href = '/document/formSelect.go';	
	        		});
	        	}
	        })
	        .catch(error => {
	    		Swal.fire({
	    			title:'문서 작성 중 오류가 발생하여 양식 선택 페이지로 이동합니다.'
	    		}).then((result) => {
	    			window.location.href = '/document/formSelect.go';	
	    		});
	        });
	    }
		
		function getBlobs(files) {
	        // 파일들을 저장할 배열
	        let blobs = [];

	        // 파일들을 Blob으로 변환
	        for (let i = 0; i < files.length; i++) {
	            const file = files[i];
	            const reader = new FileReader();
	            
	            reader.onload = function(event) {
	                const arrayBuffer = event.target.result;
	                const blob = new Blob([arrayBuffer], { type: file.type });
	                blobs.push({'blob' :blob, 'name': file.name});
	        	};

	        	reader.readAsArrayBuffer(file);
	        }
	        console.log(blobs);
	        return blobs;
		}
	</script>
	<script>
		/* [jeong] 파일 첨부, 목록 보여주기, 삭제 기능 */
	    var sec9 = document.querySelector('#ex9');
	    var inputFile = sec9.querySelector('input[type="file"]');
	    var uploadBox = sec9.querySelector('.upload-box');
	    var uploadFiles = [];
	    var totalSize = 0;
	    
	    /* 박스 안에 Drag를 하고 있을 때 */
	    uploadBox.addEventListener('dragover', function(e) {
	        e.preventDefault();
	    });
	    
	    /* 박스 안에서 Drag를 Drop했을 때 */
	    uploadBox.addEventListener('drop', function(e) {
	    	e.preventDefault();
	    	
	        var files = e.dataTransfer.files;
	        addFiles(files);
	    });
	    
        document.getElementById('fileSelectLink').addEventListener('click', function() {
            document.getElementById('fileInput').click();
        });

        document.getElementById('fileInput').addEventListener('change', function(event) {
            const files = event.target.files;
            addFiles(files);
            this.value = '';
        });
	    
	    function addFiles(files) {
			//유효성 Check
			let uploadTotalSize = 0;
			for (const file of files) {
				uploadTotalSize += file.size;
			}
			
			for (const file of files) {
				if(!isValid(file, uploadTotalSize)) {
					return;	
				} 
			}
			// 서버에 보낼 파일들을 uploadFiles 에 담는다.
			for (const file of files) {
				uploadFiles.push(file);
				totalSize += file.size;
			}
			
			// 업로드한 파일의 목록을 사용자에게 보여준다.
			drawFileList();
	    }
	    
	    function removeFile(idx) {
	    	totalSize -= uploadFiles[idx].size;
	    	uploadFiles.splice(idx, idx+1);
	    	
	    	if (uploadFiles.length == 0) {
	    		emptyFileList();
	    	} else {
	    		drawFileList();	
	    	}	    	
	    }
	    
	    function emptyFileList() {
	    	let content = '<p style="font-size:1.5rem;margin-bottom: 0rem;">이 곳에 파일을 드래그 하세요. 또는 <a style="font-size:1.5rem;text-decoration: underline;">파일선택</a></p>';
	    	uploadBox.innerHTML = content;
	    }
	    
	    function drawFileList() {
	    	let content = '';
	    	let uploadFile_idx = 0;
	    	content += '<div class="row" style="width:95%;padding: 5px;overflow-y: auto;max-height: 130px;">';
	    	content += '<div style="display:flex;justify-content: space-between;">';
	    	content += '<p style="font-size: 20px;">첨부하신 파일의 총 크기 : ' + bytesToMB(totalSize) + 'MB</p>';
	    	content += '<a id="fileSelectLink" style="font-size:1rem;text-decoration: underline;cursor: pointer;">파일선택</a>';
	    	content += '</div>';
	    	for (uploadFile of uploadFiles) {
	    		content += '<div>';
	    		content += '<span id="uploadFile_' + uploadFile_idx + '">' + uploadFile.name + ', ' + bytesToMB(uploadFile.size) + 'MB</span>';
	    		content += '&nbsp;&nbsp;<span style="font-weight:bold;cursor:pointer;" onClick="removeFile(' + uploadFile_idx++ +')">X</span><br/>';
	    		content += '</div>';
	    	}
	    	content += '</div>';
	    	uploadBox.innerHTML = content;
	        document.getElementById('fileSelectLink').addEventListener('click', function() {
	            document.getElementById('fileInput').click();
	        });
	    }
	    
		function isValid(file, uploadTotalSize) {
			//이미지인지 유효성 검사
			
	        const allowedMimeTypes = [
	        	// pdf
	            'application/pdf',
	            // 한글
	            'application/haansoftxls',
	            'application/haansoftxlsx',
	            'application/haansofthwp',
	            'application/haansoftdoc',
	            // MS 문서
	            'application/msword', 
	            'application/vnd.ms-excel', 
	            'application/vnd.ms-powerpoint',
	            'application/vnd.openxmlformats-officedocument.presentationml.presentation',
	            'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 
	            'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
	            // 이미지
	            'image/jpeg', 
	            'image/png', 
	            'image/gif', 
	            'image/bmp', 
	            'image/webp',
	            // 텍스트
	            'text/plain'
	        ];
			
			// 첨부하려는 총 파일 크기와 이미 첨부 파일 목록의 총 파일크기가 10MB 넘지 않아야한다.
			if(totalSize + uploadTotalSize >= 1000 * 1000 * 10) {
				Swal.fire('첨부된 파일의 총 크기가 10MB를 초과할 수 없습니다.');
				return false;				
			}
			
			// 첨부 파일 형식은 한글, MS문서, 이미지, 텍스트 등이다.
			if(!allowedMimeTypes.includes(file.type)){
				Swal.fire('첨부할 수 없는 파일 형식입니다.');
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



