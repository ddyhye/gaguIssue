<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	
	<style>
	    .modal-dialog {
	      max-width: 85%; /* 원하는 너비를 설정합니다 */
	      width: 85%; /* 모달이 설정된 너비를 사용하도록 합니다 */
	      max-height: 70vh; /* 원하는 높이를 설정합니다 */
    	}
	</style>
	
	
</head>

		<div class="header-wrapper col m-0">
          <div class="row">
            <form class="form-inline search-full col" action="#" method="get">
              <div class="form-group w-100">
                <div class="Typeahead Typeahead--twitterUsers">
                  <div class="u-posRelative">
                    <input class="demo-input Typeahead-input form-control-plaintext w-100" type="text" placeholder="Search Mofi .." name="q" title="" autofocus>
                    <div class="spinner-border Typeahead-spinner" role="status"><span class="sr-only">Loading...</span></div><i class="close-search" data-feather="x"></i>
                  </div>
                  <div class="Typeahead-menu"></div>
                </div>
              </div>
            </form>
            <div class="header-logo-wrapper col-auto p-0">
              <div class="logo-wrapper"><a href="index.go"><img class="img-fluid" src="../assets/images/logo/logo.png" alt=""></a></div>
              <div class="toggle-sidebar">
                <svg class="stroke-icon sidebar-toggle status_toggle middle">
                  <use href="../assets/svg/icon-sprite.svg#toggle-icon"></use>
                </svg>
              </div>
            </div>
            <div class="nav-right col-xxl-8 col-xl-6 col-md-7 col-8 pull-right right-header p-0 ms-auto">
              <ul class="nav-menus">
              
                <!-- do: 전체화면 -->
                <li>                         <span class="header-search">
                    <svg>
                      <use href="../assets/svg/icon-sprite.svg#search"></use>
                    </svg></span></li>
                <li class="fullscreen-body">                       <span>
                    <svg id="maximize-screen">
                      <use href="../assets/svg/icon-sprite.svg#full-screen"></use>
                    </svg></span></li>
                    
                
                <!-- do: 야간모드 -->
                <li>
                  <div class="mode">
                    <svg>
                      <use href="../assets/svg/icon-sprite.svg#moon"></use>
                    </svg>
                  </div>
                </li>
                
                
                <!-- do: 알림 -->
                <li class="onhover-dropdown">
                  <div class="notification-box">
                    <svg>
                      <use href="../assets/svg/icon-sprite.svg#notification"></use>
                    </svg><span class="badge rounded-pill badge-primary">4 </span>
                  </div>
                  <div class="onhover-show-div notification-dropdown">
                    <h5 class="f-18 f-w-600 mb-0 dropdown-title">Notifications                               </h5>
                    <ul class="notification-box">
                      <li class="toast default-show-toast align-items-center border-0 fade show" aria-live="assertive" aria-atomic="true" data-bs-autohide="false">
                        <div class="d-flex justify-content-between">
                          <div class="toast-body d-flex p-0">
                            <div class="flex-shrink-0 bg-light-primary"><img class="w-auto" src="../assets/images/dashboard/icon/wallet.png" alt="Wallet"></div>
                            <div class="flex-grow-1"> <a href="private-chat.go">
                                <h6 class="m-0">Daily offer added</h6></a>
                              <p class="m-0">User-only offer added</p>
                            </div>
                          </div>
                          <button class="btn-close btn-close-white shadow-none" type="button" data-bs-dismiss="toast" aria-label="Close"></button>
                        </div>
                      </li>
                      <li class="toast default-show-toast align-items-center border-0 fade show" aria-live="assertive" aria-atomic="true" data-bs-autohide="false"> 
                        <div class="d-flex justify-content-between">
                          <div class="toast-body d-flex p-0">
                            <div class="flex-shrink-0 bg-light-info"><img class="w-auto" src="../assets/images/dashboard/icon/shield-dne.png" alt="Shield-dne"></div>
                            <div class="flex-grow-1"> <a href="private-chat.go">
                                <h6 class="m-0">Product Review</h6></a>
                              <p class="m-0">Changed to a workflow</p>
                            </div>
                          </div>
                          <button class="btn-close btn-close-white shadow-none" type="button" data-bs-dismiss="toast" aria-label="Close"></button>
                        </div>
                      </li>
                      <li class="toast default-show-toast align-items-center border-0 fade show" aria-live="assertive" aria-atomic="true" data-bs-autohide="false">  
                        <div class="d-flex justify-content-between">
                          <div class="toast-body d-flex p-0">
                            <div class="flex-shrink-0 bg-light-warning"><img class="w-auto" src="../assets/images/dashboard/icon/graph.png" alt="Graph"></div>
                            <div class="flex-grow-1"> <a href="private-chat.go">
                                <h6 class="m-0">Return Products</h6></a>
                              <p class="m-0">52 items were returned</p>
                            </div>
                          </div>
                          <button class="btn-close btn-close-white shadow-none" type="button" data-bs-dismiss="toast" aria-label="Close"></button>
                        </div>
                      </li>
                      <li class="toast default-show-toast align-items-center border-0 fade show" aria-live="assertive" aria-atomic="true" data-bs-autohide="false"> 
                        <div class="d-flex justify-content-between"> 
                          <div class="toast-body d-flex p-0">
                            <div class="flex-shrink-0 bg-light-tertiary"><img class="w-auto" src="../assets/images/dashboard/icon/ticket-star.png" alt="Ticket-star"></div>
                            <div class="flex-grow-1"> <a href="private-chat.go">
                                <h6 class="m-0">Recently Paid</h6></a>
                              <p class="m-0">Card payment of $343   </p>
                            </div>
                          </div>
                          <button class="btn-close btn-close-white shadow-none" type="button" data-bs-dismiss="toast" aria-label="Close"></button>
                        </div>
                      </li>
                    </ul>
                  </div>
                </li>
                
                
                <!-- do: 쪽지 -->
                <li class="onhover-dropdown">
                  <a class="messageBox" href="#" id="messageButton">
                    <div class="notification-box">
                      <svg>
                        <use href="../assets/svg/icon-sprite.svg#header-message"></use>
                      </svg><span class="badge rounded-pill badge-info">3 </span>
                    </div>
                  </a>
                </li>
                <!-- 
                <li class="onhover-dropdown">
			    	<button type="button" class="btn btn-link" data-bs-toggle="modal"
			    	 data-bs-target="#myModal" onclick="openMessageForm()">
				      <div class="notification-box">
				        <svg>
				          <use href="../assets/svg/icon-sprite.svg#header-message"></use>
				        </svg><span class="badge rounded-pill badge-info">3</span>
				      </div>
				    </button>
//				     The Modal
			<div class="modal" id="myModal" data-bs-backdrop="static">
			  <div class="modal-dialog">
			    <div class="modal-content">
//			     [임재민] 외부 jsp 파일이 들어올 부분 
			    </div>
			  </div>
			</div>
			    </li>
                 -->
				    
			    
			    
                
                
                <!-- do: 직원서비스 -->
                <li class="profile-nav onhover-dropdown px-0 py-0">
                  <div class="d-flex profile-media align-items-center"><img class="img-30" src="../assets/images/dashboard/profile.png" alt="">
                    <div class="flex-grow-1"><span>${emp_name}</span>
                      <p class="mb-0 font-outfit">${de_name}<i class="fa fa-angle-down"></i></p>
                    </div>
                  </div>
                  <ul class="profile-dropdown onhover-show-div">
                    <li><a href="user-profile.go"><i data-feather="user"></i><span>My Profile </span></a></li>
                    <li><a href="letter-box.go"><i data-feather="users"></i><span>조직도</span></a></li>
                    <li><a href="task.go"><i data-feather="check-circle"></i><span>나의 근태</span></a></li>
                    <li><a href="edit-profile.go"><i data-feather="calendar"></i><span>Calendar</span></a></li>
                    <li><a href="login.go"><i data-feather="edit-3"> </i><span>To Do !</span></a></li>
                    <li><a href="login.go"><i data-feather="log-in"> </i><span>Log out</span></a></li>
                  </ul>
                </li>
                
                
                
              </ul>
            </div>
            <script class="result-template" type="text/x-handlebars-template">
              <div class="ProfileCard u-cf">                        
              <div class="ProfileCard-avatar"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-airplay m-0"><path d="M5 17H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-1"></path><polygon points="12 15 17 21 7 21 12 15"></polygon></svg></div>
              <div class="ProfileCard-details">
              <div class="ProfileCard-realName">{{name}}</div>
              </div>
              </div>
            </script>
            <script class="empty-template" type="text/x-handlebars-template"><div class="EmptyMessage">Your search turned up 0 results. This most likely means the backend is down, yikes!</div></script>
            <!-- 
            <script>
            	function openMessageForm() {
            		$('.modal-content').load("../noteMessage/noteMessage2.go");
            	}            
            </script>
             -->
             
             <script>
             $(document).ready(function() {
            	    $('#messageButton').click(function(e) {
            	        e.preventDefault();
            	        $.ajax({
            	            url: '/noteMessage2',
            	            method: 'GET',
            	            success: function(response) {
            	                // 기존 모달 제거 (중복 방지)
            	                $('#myModal').remove();
            	                // 모달 내용을 body에 추가
            	                $('body').append(response);
            	                // 모달 표시
            	                $('#myModal').modal('show');
            	                
            	                // 대화방 목록을 불러오는 함수 호출
            	                loadChatRooms(idx);
            	            },
            	            error: function() {
            	                alert('쪽지함을 불러오는데 실패했습니다.');
            	            }
            	        });
            	    });
            	});
             
             
             function loadChatRooms(idx) {
                 $.ajax({
                     url: '/getChatRooms',
                     method: 'GET',
                     data: {
                    	'idx':idx 
                     },
                     dataType:'JSON',
                     success: function(chatRooms) {
                         // 대화방 목록을 화면에 표시하는 로직
                         var chatRoomList = $('#chats-user');
                         chatRoomList.empty();
                         chatRooms.forEach(function(room) {
                             chatRoomList.append('<li class="common-space"' + room.id + '">' + room.name + '</li>');
                         });

                         // 첫 번째 대화방의 대화 내용을 불러옴
                         if (chatRooms.length > 0) {
                             loadChatMessages(chatRooms[0].id);
                         }
                     },
                     error: function() {
                         alert('대화방 목록을 불러오는데 실패했습니다.');
                     }
                 });
             }
			</script>
          </div>
          
        </div>