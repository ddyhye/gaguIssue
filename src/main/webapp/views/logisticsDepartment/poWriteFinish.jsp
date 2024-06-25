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
		width: 100%;
		display: flex;
		height: 750px;
		justify-content: center;
		align-items: center;
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
		border: 1px solid black;
	}
	
	
	
	/* [do] */
	.row {
		width: 100%;
	}
	.do-rowChild {
		display: flex;
		flex-direction: row;
	}
	.do-poSide {
		position:relative;
		width: 20%;
	}
	.do-poMain {
		position: relative;
		width: 80%;
	}
	.do-poForm {
		margin-top: 60px;
		margin-bottom: 20px;
	}
	.do-poSubmit {
		display: flex;
		justify-content: flex-end;
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
          <h4 class="f-w-700">PO write</h4>
          <nav>
            <ol class="breadcrumb justify-content-sm-start align-items-center mb-0">
              <li class="breadcrumb-item"><a href="index.go"> <i data-feather="home"> </i></a></li>
              <!-- do: 경로명 변경 -->
              <li class="breadcrumb-item f-w-400">logisticsDept</li>
              <li class="breadcrumb-item f-w-400 active">PO write</li>
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
			          <h4>발주 서류 작성</h4>
			        </div>
			        
                    
                    <div class='row h-100 w-100 do-rowChild'>
                      <!-- [do] 사이드바 -->
						<div class='col-2 sidebar-left-wrapper do-poSide' style='padding-right: 24px;'>
							<ul class='sidebar-left-icons nav nav-pills' id='add-product-pills-tab' role='tablist'>
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
											<h5>발주 완료</h5>
										</div>
								</a></li>
							</ul>
						</div>

						<!-- [do] 메인 -->
						<div class='col-10 h-100 do-poMain'>
							<div class='row'>
								<div class='col-1'></div>
								<div class='col-10'>
									<div class='row'>
										<div class="do-poSubmit"> 
											발주 완료
					                    </div>
									</div>
								</div>
								<div class='col-1'></div>
							</div>
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
  </body>
  
  
<script>
	// 자동 채우기 모달창
	document.getElementById('do-warning').addEventListener('click', () => {
		document.getElementsByClassName('do-lackList')[0].classList.add('active');
		
        fetch('/lackProduct.ajax', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ key: 'value' }) 
        })
        .then(response => response.json())
        .then(data => {
        	clientList(data.clientList);
        	lackProductAjax(data.clientList[0]);
        })
        .catch(error => { console.error('Fetch error:', error); });
	});
	document.getElementById('cancelBtn').addEventListener('click', () => {
		document.getElementsByClassName('do-lackList')[0].classList.remove('active');
	})
	
	
	// 자동 채우기 - 부족 재고 리스트 ajax 출력
	document.getElementById('clientList').addEventListener('change', () => {
		var client = document.getElementById('clientList').value;
		
		lackProductAjax(client);
	});
	
	function lackProductAjax(data) {
		console.log(data);
		
		fetch('/lackProductByClient.ajax', {
			method: 'POST',
			headers: {
				'Content-Type': 'application/json'
			},
			body: JSON.stringify({ client: data})
		})
		.then(response => response.json())
		.then(data=> {
			drawProduct(data);
		})
		.catch(error => { console.error('Fetch error:', error); });
	}



	// 자동 채우기 - 발주처 리스트
    function clientList(clientList) {
        const selectElement = document.getElementById('clientList');
        selectElement.innerHTML = ''; 

        clientList.forEach(client => {
            const option = document.createElement('option');
            option.value = client;
            option.textContent = client;
            selectElement.appendChild(option);
        });
    }
 	// drawProduct 함수 : 재고 부족 제품 그리기
	function drawProduct(data) {
		$('.do-inventory').empty();
		
		var content = '';

		if (!data.list || data.list.length === 0) {
			content += '<tr><td colspan="4">Error...</td></tr>';
		}
		for (item of data.list) {
			content += '<tr>';
			content += '<td class="do-table-td11">';
			content += '<input type="hidden" value="'+item.idx_product+'"/>';
			content += item.client_name;
			content += '</td>';
			content += '<td class="do-table-td22">';
			content += item.product_name;
			content += '</td>';
			content += '<td class="do-table-td33">';
			content += item.current_stock;
			content += '</td>';
			content += '<td class="do-table-td44">';
			content += '<input type="checkbox" name="select"/>';
			content += '</td>';
			content += '</tr>';
		}
		
		$('.do-inventory').append(content);
	}
    
    
    
    
    // IFRAME 자동 채우기
    // 재고 부족 전체 선텍
    document.getElementById('selectAll').addEventListener('click', function() {
        var checkboxes = document.querySelectorAll('input[name="select"]');
        for (var checkbox of checkboxes) {
            checkbox.checked = this.checked;
        }
    });
    document.getElementById('lackBtn').addEventListener('click', () => {
		document.getElementsByClassName('do-lackList')[0].classList.remove('active');
		
		selectProduct();
	})
    // 발주할 재고 번호 배열 서버로 전송
    function selectProduct() {
    	// 클라이언트 명
    	var client = document.getElementById('clientList').value;
    	
    	// 발주할 제품들
        var selectedArr = [];
        var checkboxes = document.querySelectorAll('input[name="select"]:checked');
        
        for (var checkbox of checkboxes) {
        	var row = checkbox.closest('tr');
        	var idx_product = row.querySelector('input[type="hidden"]').value;
        	selectedArr.push(idx_product);
        }

        // AJAX
        fetch('/autoWriteIframe.ajax', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ selectedArr: selectedArr,
            						client: client}) 
        })
        .then(response => response.json())
        .then(data => {
        	// ifreame 다시 그리기
        	console.log(data);
        	frameTableWrite(data);
        })
        .catch(error => { console.error('Fetch error:', error); });
    }
    
 	// iFrame 내의 테이블에 데이터를 삽입하는 함수
    function frameTableWrite(data) {
        var iframe = document.getElementById('form-document');
        var iframeDocument = iframe.contentDocument || iframe.contentWindow.document;

 		// 발주처 정보
 		iframeDocument.getElementById('client_name').innerHTML = data.client.client_name;
 		iframeDocument.getElementById('ceo_name').innerHTML = data.client.ceo_name;
 		iframeDocument.getElementById('address').innerHTML = data.client.address;
 		iframeDocument.getElementById('client_type').innerHTML = data.client.client_type;
 		
 		
 		// 발주할 제품
        var tableBody = iframeDocument.getElementById('do-serverInput');
        tableBody.innerHTML = '';

        // 데이터를 테이블에 추가
        data.list.forEach((item, index) => {
            var row = document.createElement('tr');

            /* input type="text"
            var cell1 = document.createElement('td');
            var input1 = document.createElement('input');
            input1.type = 'text';
            input1.value = item.idx_product; // No
            cell1.appendChild(input1);
            row.appendChild(cell1); */
            
            // 제품 번호
            var cell1 = document.createElement('td');
            cell1.innerHTML = item.idx_product;
            row.appendChild(cell1);

            // 제품명
            var cell2 = document.createElement('td');
            cell2.innerHTML = item.product_name;
            row.appendChild(cell2);

            // 수량
            var cell3 = document.createElement('td');
            cell3.innerHTML = item.minimum_stock;
            row.appendChild(cell3);

            // 단가
            var cell4 = document.createElement('td');
            cell4.innerHTML = item.unit_price;
            row.appendChild(cell4);

            // 금액
            var cell5 = document.createElement('td');
            cell5.innerHTML = item.minimum_stock*item.unit_price;
            row.appendChild(cell5);

            tableBody.appendChild(row);
        });
    }
 	
 	
 	
 	// 파일로 저장, 파일의 데이터들(발주번호, 직원번호, 거래처번호, 제품번호(들))은 디비에 저장
 	// iFrame 내용을 HTML 파일로 저장하는 함수
    function savePO() {
        var iframe = document.getElementById('form-document');
        var iframeDocument = iframe.contentDocument || iframe.contentWindow.document;
        var htmlContent = iframeDocument.documentElement.outerHTML;

        var blob = new Blob([htmlContent], { type: 'text/html' });
        
        fetch('/savePO.ajax', {
			method: 'POST',
			headers: {
				'Content-Type': 'application/json'
			},
			body: JSON.stringify({ file: blob})
		})
		.then(response => response.json())
		.then(data=> {
			drawProduct(data);
			// 저장 성공 시 페이지 이동하자. window.location.href="";
		})
		.catch(error => { console.error('Fetch error:', error); });
    }
</script>


</html>