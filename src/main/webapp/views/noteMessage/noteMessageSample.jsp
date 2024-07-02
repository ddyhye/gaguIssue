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
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css'/>" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	<style>
    .modal-dialog {
      max-width: 85%; /* 원하는 너비를 설정합니다 */
      width: 85%; /* 모달이 설정된 너비를 사용하도록 합니다 */
      max-height: 70vh; /* 원하는 높이를 설정합니다 */
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
          <h4 class="f-w-700">쪽지</h4>
          <nav>
            <ol class="breadcrumb justify-content-sm-start align-items-center mb-0">
              <li class="breadcrumb-item"><a href="index.go"> <i data-feather="home"> </i></a></li>
              <!-- do: 경로명 변경 -->
              <li class="breadcrumb-item f-w-400">Dashboard</li>
              <li class="breadcrumb-item f-w-400 active">쪽지</li>
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
          
		<div class="container mt-3">
		  <h3>Modal Example</h3>
		  <p>Click on the button to open the modal.</p>
		  
		  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal2">
		    Open modal
		  </button>
		</div>
		
		<!-- The Modal -->
		<div class="modal" id="myModal2" data-bs-backdrop="static">
		  <div class="modal-dialog modal-xxl">
		    <div class="modal-content ">
		
		      <!-- Modal Header -->
		      <div class="modal-header">
		        <h4 class="modal-title">Modal Heading</h4>
		        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
		      </div>
		
		      <!-- Modal body -->
		      <div class="modal-body">
				<div class="page-body">
				<div class="container-fluid">
				  <div class="row g-0">
				    <div class="col-xxl-3 col-xl-4 col-md-5 box-col-5">
				      <div class="left-sidebar-wrapper card">
				        <div class="left-sidebar-chat">
				          <div class="input-group">
				            <span class="input-group-text"><i class="search-icon text-gray" data-feather="search"></i></span>
				            <input class="form-control" type="text" placeholder="Search here">
				          </div>
				        </div>
				        <div class="advance-options">
				          <ul class="nav border-tab" id="chat-options-tab" role="tablist">
				            <li class="nav-item"><a class="nav-link active" id="chats-tab" data-bs-toggle="tab" href="#chats" role="tab" aria-controls="chats" aria-selected="true">Chats</a></li>
				            <li class="nav-item"><a class="nav-link" id="contacts-tab" data-bs-toggle="tab" href="#contacts" role="tab" aria-controls="contacts" aria-selected="false">Contacts</a></li>
				          </ul>
				          <div class="tab-content" id="chat-options-tabContent">
				            <div class="tab-pane fade show active" id="chats" role="tabpanel" aria-labelledby="chats-tab">
				              <div class="common-space">
				                <p>Recent chats</p>
				                <div class="header-top"><a class="btn badge-light-primary f-w-500" href="#!"><i class="fa fa-plus"></i></a></div>
				              </div>
				              <ul class="chats-user">
				                <li class="common-space">
				                  <div class="chat-time">
				                    <div class="active-profile">
				                      <img class="img-fluid rounded-circle" src="resources/img/avatar3.png" alt="user">
				                      <div class="status bg-success"></div>
				                    </div>
				                    <div>
				                      <span>Cameron Williamson</span>
				                      <p>Hey, How are you?</p>
				                    </div>
				                  </div>
				                  <div>
				                    <p>2 min</p>
				                    <div class="badge badge-light-success">15</div>
				                  </div>
				                </li>
				              </ul>
				            </div>
				            <div class="tab-pane fade" id="contacts" role="tabpanel" aria-labelledby="contacts-tab">
				              <div class="common-space">
				                <p>Contacts</p>
				                <div class="header-top"><a class="btn badge-light-primary f-w-500" href="#!"><i class="fa fa-plus"></i></a></div>
				              </div>
				              <div class="search-contacts">
				                <input class="form-control" type="text" placeholder="Name and phone number">
				                <svg>
				                  <use href="/assets/svg/icon-sprite.svg#stroke-search"></use>
				                </svg>
				                <i class="mic-search" data-feather="mic"></i>
				              </div>
				              <div class="contact-wrapper">
				                <p>A</p>
				                <ul class="border-0">
				                  <li class="common-space">
				                    <div class="chat-time">
				                      <img class="img-fluid rounded-circle" src="resources/img/avtar3.jpg" alt="user">
				                      <div>
				                        <span>Andres Williamson</span>
				                        <p>191-900-5689</p>
				                      </div>
				                    </div>
				                    <div class="contact-edit">
				                      <svg class="dropdown-toggle" role="menu" data-bs-toggle="dropdown" aria-expanded="false">
				                        <use href="/assets/svg/icon-sprite.svg#menubar"></use>
				                      </svg>
				                      <div class="dropdown-menu dropdown-menu-end"><a class="dropdown-item" href="#!">View details</a><a class="dropdown-item" href="#!">Send messages</a><a class="dropdown-item" href="#!">Add to favorites</a></div>
				                    </div>
				                  </li>
				                </ul>
				                <p>B</p>
				                <ul class="border-0">
				                  <li class="common-space">
				                    <div class="chat-time">
				                      <img class="img-fluid rounded-circle" src="resources/img/blogcomment.jpg" alt="user">
				                      <div>
				                        <span>Britlin Weed</span>
				                        <p>698-781-5581</p>
				                      </div>
				                    </div>
				                    <div class="contact-edit">
				                      <svg class="dropdown-toggle" role="menu" data-bs-toggle="dropdown" aria-expanded="false">
				                        <use href="/assets/svg/icon-sprite.svg#menubar"></use>
				                      </svg>
				                      <div class="dropdown-menu dropdown-menu-end"><a class="dropdown-item" href="#!">View details</a><a class="dropdown-item" href="#!">Send messages</a><a class="dropdown-item" href="#!">Add to favorites</a></div>
				                    </div>
				                  </li>
				                  <li class="common-space">
				                    <div class="chat-time">
				                      <div class="custom-name bg-light-secondary">
				                        <p class="txt-secondary f-w-500">BD</p>
				                      </div>
				                      <div>
				                        <span>Brendra Dixit</span>
				                        <p>589-789-2563</p>
				                      </div>
				                    </div>
				                    <div class="contact-edit">
				                      <svg class="dropdown-toggle" role="menu" data-bs-toggle="dropdown" aria-expanded="false">
				                        <use href="/assets/svg/icon-sprite.svg#menubar"></use>
				                      </svg>
				                      <div class="dropdown-menu dropdown-menu-end"><a class="dropdown-item" href="#!">View details</a><a class="dropdown-item" href="#!">Send messages</a><a class="dropdown-item" href="#!">Add to favorites</a></div>
				                    </div>
				                  </li>
				                </ul>
				                <p>C</p>
				                <ul class="border-0">
				                  <li class="common-space">
				                    <div class="chat-time">
				                      <img class="img-fluid rounded-circle" src="resources/img/blog14.png" alt="user">
				                      <div>
				                        <span>Cody Fisher</span>
				                        <p>983-333-4545</p>
				                      </div>
				                    </div>
				                    <div class="contact-edit">
				                      <svg class="dropdown-toggle" role="menu" data-bs-toggle="dropdown" aria-expanded="false">
				                        <use href="/assets/svg/icon-sprite.svg#menubar"></use>
				                      </svg>
				                      <div class="dropdown-menu dropdown-menu-end"><a class="dropdown-item" href="#!">View details</a><a class="dropdown-item" href="#!">Send messages</a><a class="dropdown-item" href="#!">Add to favorites</a></div>
				                    </div>
				                  </li>
				                </ul>
				              </div>
				            </div>
				          </div>
				        </div>
				      </div>
				    </div>
				    <div class="col-xxl-9 col-xl-8 col-md-7 box-col-7">
				      <div class="card right-sidebar-chat">
				        <div class="right-sidebar-title">
				          <div class="common-space">
				            <div class="chat-time">
				              <div class="active-profile">
				                <img class="img-fluid rounded-circle" src="/assets/img/blogcomment.jpg" alt="user">
				                <div class="status bg-success"></div>
				              </div>
				              <div>
				                <span>Darrell Steward</span>
				                <p>Online</p>
				              </div>
				            </div>
				            <div class="d-flex gap-2">
				              <div class="contact-edit chat-alert"><i class="icon-info-alt"></i></div>
				              <div class="contact-edit chat-alert">
				                <svg class="dropdown-toggle" role="menu" data-bs-toggle="dropdown" aria-expanded="false">
				                  <use href="/assets/svg/icon-sprite.svg#menubar"></use>
				                </svg>
				                <div class="dropdown-menu dropdown-menu-end"><a class="dropdown-item" href="#!">View details</a><a class="dropdown-item" href="#!">Send messages</a><a class="dropdown-item" href="#!">Add to favorites</a></div>
				              </div>
				            </div>
				          </div>
				        </div>
				        <div class="right-sidebar-Chats">
				          <div class="msger">
				            <div class="msger-chat">
				              <div class="msg left-msg">
				                <div class="msg-img"></div>
				                <div class="msg-bubble">
				                  <div class="msg-info">
				                    <div class="msg-info-name">Theresa Webb</div>
				                    <div class="msg-info-time">01:14 PM</div>
				                  </div>
				                  <div class="msg-text">Hey, I'm looking to redesign my website. Can you help me? &#x1F604;</div>
				                </div>
				              </div>
				              <div class="msg right-msg">
				                <div class="msg-img"></div>
				                <div class="msg-bubble">
				                  <div class="msg-info">
				                    <div class="msg-info-name">Darrell Steward</div>
				                    <div class="msg-info-time">12:14 PM</div>
				                  </div>
				                  <div class="msg-text">Absolutely! I'd be happy to assist you.</div>
				                </div>
				              </div>
				              <div class="msg right-msg">
				                <div class="msg-img"></div>
				                <div class="msg-bubble">
				                  <div class="msg-info">
				                    <div class="msg-info-name">Darrell Steward</div>
				                    <div class="msg-info-time">12:14 PM</div>
				                  </div>
				                  <div class="msg-text">What kind of design aesthetic are you aiming for?</div>
				                </div>
				              </div>
				              <div class="msg left-msg">
				                <div class="msg-img"></div>
				                <div class="msg-bubble">
				                  <div class="msg-info">
				                    <div class="msg-info-name">Theresa Webb</div>
				                    <div class="msg-info-time">01:14 PM</div>
				                  </div>
				                  <div class="msg-text">I want a clean and modern look with a focus on user experience.</div>
				                </div>
				              </div>
				              <div class="msg right-msg">
				                <div class="msg-img"></div>
				                <div class="msg-bubble">
				                  <div class="msg-info">
				                    <div class="msg-info-name">Darrell Steward</div>
				                    <div class="msg-info-time">12:14 PM</div>
				                  </div>
				                  
				                  <div class="msg-text">Great! Do you have any specific color schemes in mind?</div>
				                </div>
				              </div>
				              <div class="msg left-msg">
				                <div class="msg-img"></div>
				                <div class="msg-bubble">
				                  <div class="msg-info">
				                    <div class="msg-info-name">Theresa Webb</div>
				                    <div class="msg-info-time">01:14 PM</div>
				                  </div>
				                  <div class="msg-text">I'm thinking of using a combination of blues and grays.</div>
				                </div>
				              </div>
				              <div class="msg right-msg">
				                <div class="msg-img"></div>
				                <div class="msg-bubble">
				                  <div class="msg-info">
				                    <div class="msg-info-name">Darrell Steward</div>
				                    <div class="msg-info-time">12:14 PM</div>
				                  </div>
				                  <div class="msg-text">Excellent choice! Those colors can definitely create a professional.</div>
				                </div>
				              </div>
				            </div>
				            <form class="msger-inputarea">
				              <div class="dropdown-form dropdown-toggle" role="main" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-plus"></i>
				                <div class="chat-icon dropdown-menu dropdown-menu-start">
				                  <div class="dropdown-item mb-2">
				                    <svg>
				                      <use href="/assets/svg/icon-sprite.svg#camera"></use>
				                    </svg>
				                  </div>
				                  <div class="dropdown-item">
				                    <svg>
				                      <use href="/assets/svg/icon-sprite.svg#attchment"></use>
				                    </svg>
				                  </div>
				                </div>
				              </div>
				              <input class="msger-input two uk-textarea" type="text" placeholder="Type Message here">
				              <div class="open-emoji">
				                <div class="second-btn uk-button"></div>
				              </div>
				              <button class="msger-send-btn" type="submit"><i class="fa fa-location-arrow"></i></button>
				            </form>
				          </div>
				        </div>
				      </div>
				    </div>
				  </div>
				</div>
		      </div>
		
		      	<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal">나가기</button>
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
</html>