<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
<!-- 
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.15.4/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.15.4/dist/js/bootstrap.bundle.min.js"></script>
 -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	
	<style>
	    
    	
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
              <div class="logo-wrapper"><a href="index.go"><img class="img-fluid" src="/assets/images/logo/logo.png" alt=""></a></div>
              <div class="toggle-sidebar">
                <svg class="stroke-icon sidebar-toggle status_toggle middle">
                  <use href="/assets/svg/icon-sprite.svg#toggle-icon"></use>
                </svg>
              </div>
            </div>
            <div class="nav-right col-xxl-8 col-xl-6 col-md-7 col-8 pull-right right-header p-0 ms-auto">
              <ul class="nav-menus">
              
                <!-- do: 전체화면 -->
                <li>                         <span class="header-search">
                    <svg>
                      <use href="/assets/svg/icon-sprite.svg#search"></use>
                    </svg></span></li>
                <li class="fullscreen-body">                       <span>
                    <svg id="maximize-screen">
                      <use href="/assets/svg/icon-sprite.svg#full-screen"></use>
                    </svg></span></li>
                    
                
                <!-- do: 야간모드 -->
                <li>
                  <div class="mode">
                    <svg>
                      <use href="/assets/svg/icon-sprite.svg#moon"></use>
                    </svg>
                  </div>
                </li>
                
                
                <!-- do: 알림 -->
                <li class="onhover-dropdown">
                  <div class="notification-box">
                    <svg>
                      <use href="/assets/svg/icon-sprite.svg#notification"></use>
                    </svg><span class="badge rounded-pill badge-primary">4 </span>
                  </div>
                  <div class="onhover-show-div notification-dropdown">
                    <h5 class="f-18 f-w-600 mb-0 dropdown-title">Notifications</h5>
                    <ul class="notification-box">
                      <li class="toast default-show-toast align-items-center border-0 fade show" aria-live="assertive" aria-atomic="true" data-bs-autohide="false">
                        <div class="d-flex justify-content-between">
                          <div class="toast-body d-flex p-0">
                            <div class="flex-shrink-0 bg-light-primary"><img class="w-auto" src="/assets/images/dashboard/icon/wallet.png" alt="Wallet"></div>
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
                            <div class="flex-shrink-0 bg-light-info"><img class="w-auto" src="/assets/images/dashboard/icon/shield-dne.png" alt="Shield-dne"></div>
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
                            <div class="flex-shrink-0 bg-light-warning"><img class="w-auto" src="/assets/images/dashboard/icon/graph.png" alt="Graph"></div>
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
                            <div class="flex-shrink-0 bg-light-tertiary"><img class="w-auto" src="/assets/images/dashboard/icon/ticket-star.png" alt="Ticket-star"></div>
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
                        <use href="/assets/svg/icon-sprite.svg#header-message"></use>
                      </svg><span class="badge rounded-pill badge-info">3 </span>
                    </div>
                  </a>
                </li>
                
				    
			    
                <!-- do: 직원서비스 -->
                <li class="profile-nav onhover-dropdown px-0 py-0">
                  <div class="d-flex profile-media align-items-center"><img class="img-30" src="/assets/images/dashboard/profile.png" alt="">
                    <div class="flex-grow-1"><span>${emp_name}</span>
                      <p class="mb-0 font-outfit">${de_name}<i class="fa fa-angle-down"></i></p>
                    </div>
                  </div>
                  <ul class="profile-dropdown onhover-show-div">
                    <li><a href="user-profile.go"><i data-feather="user"></i><span>My Profile </span></a></li>
                    <li><a href="letter-box.go"><i data-feather="users"></i><span>조직도</span></a></li>
                    <li><a href="task.go"><i data-feather="check-circle"></i><span>나의 근태</span></a></li>
                    <li><a href="edit-profile.go"><i data-feather="calendar"></i><span>Calendar</span></a></li>
                    <li><a href="todo.go"><i data-feather="edit-3"> </i><span>To Do !</span></a></li>
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
            	                loadChatRooms();
            	            },
            	            error: function() {
            	                alert('쪽지함을 불러오는데 실패했습니다.');
            	            }
            	        });
            	    });
            	});
             
             
             function loadChatRooms() {
                 $.ajax({
                     url: '/getChatRooms',
                     method: 'POST',
                     dataType:'JSON',
                     success: function(data) {
                    	 console.log(data);
                         //  대화방 목록을 화면에 표시하는 로직
                         drawRoomList(data);
                     },
                     error: function(error) {
                    	 console.log(error);
                         alert('대화방 목록을 불러오는데 실패했습니다.');
                     }
                 });
             }
             
              
              
             
             function drawRoomList(data) {
            	 console.log(data);
         		$('.chats-user').empty();
         		var content = '';
         		if (!data.roomList || data.roomList.length === 0) {
         			content += '<p> 주고받은 쪽지가 없습니다. </p>';
         		}
         		
         		for (item of data.roomList) {
         			content +=	'<li class="common-space" onclick="viewRoomContent(\'' + item.idx_messageroom + '\', \'' + item.other_emp + '\')">'; 
         			content +=		'<div class="chat-time">';
         			content +=		'<div class="active-profile">';
         			content +=			'<img class="img-fluid rounded-circle" src="/img/'+item.new_picname+'" alt="user">';
//         			content +=			'<div class="status bg-success"></div>';
         			content +=		'</div>';
         			content +=		'<div>';
         			content +=		'<span>'+item.name+'</span>';
         			content +=		'<p>'+item.content+'</p>';
         			content +=		'</div>';
         			content +=		'</div>';
         			content +=		'<div>';
         			content +=		'<p>'+DateToString(item.reg_date)+'</p>';
         			content +=      '<div class="badge badge-light-success">'+15+'</div>';
         			content +=		'</div>';
         			content +=		'</li>';
         			if (item.no_read > 0) {
         				content +=		'<div class="no-read"></div>';				
         			}
         			content +=	'</div>';	
         		}
         		
         		$('.chats-user').append(content);
         		
         	  
         	}
         	
             function viewRoomContent(idx, other_emp){
         		// subjectCall(idx);
         		var emp_id = 1;
         		messageCall(idx, emp_id , other_emp);
         		chat_idx = idx;
         		chat_user = other_emp;
         	}
             
             
         	// 특정 방 message 출력
         	function messageCall(idx, emp, otherEmp) {
         		$.ajax({
         			type: 'POST',
         			url: './messageCall.ajax',
         			data: {
         				'idx': idx,
         				'emp': emp,
         				'otherEmp': otherEmp
         			},
         			dataType: 'JSON',
         			success: function(data) {
         				drawMessage(data);
         			}, error: function(error) {
         				console.log(error);
         			}
         		});
         		
         	}
             
            
         	
         	
         	var checkDate;
         	/* 대화 내용 출력 */
         	function drawMessage(data) {
        		var emp = 1;  // [jae]: 임의로 1 넣어둠 ${loginInfo.emp}
        		var checkHours = 0;
        		var checkMinutes = 0;
        		
        		$('.msger-chat').empty();
	
        		var content = '';

        		if (!data.messageList || data.messageList.length === 0) {
        			content += '<i class="fa-solid fa-square-envelope"></i><p class="no-message">Select Message...</p>';	/* <p class="no-message">아무것도 없따... <i class="fa-solid fa-message"></i></p> */
        		}
        		for (item of data.messageList) {
        			var date = new Date(item.send_datetime);
        			var dateStr = date.toLocaleDateString("ko-KR");
        			var hours = date.getHours();
        			var minutes = date.getMinutes();
        			
        			//console.log(item.new_picname);
        			
        			
        			
        			if(emp === item.receiver) {
        				content +=	'<div class="msg left-msg">';
        				content +=		'<div class="msg-img"></div>';
        				content +=		'<div class="msg-bubble">';
        				content +=		'<div class="msg-info">';
        				content +=		'<div class="msg-info-name">재민</div>'; // 이름은 나중에 세션으로 가져오기
        				content +=		'<div class="msg-info-time">';
        				content +=			'<p>'+hours + ':' + (minutes < 10 ? '0' : '') + minutes+'</p>';
        				content +=		'</div>';
        				content +=		'<div class="msg-text">'+item.content+'</div>';
        				content +=		'</div>';
        			}
        			
        			else if (emp === item.sender) {
        				content +=	'<div class="msg right-msg">';
        				content +=		'<div class="msg-img"></div>';
        				content +=		'<div class="msg-bubble">';
        				content +=		'<div class="msg-info">';
        				content +=		'<div class="msg-info-name">재민</div>'; // 이름은 나중에 세션으로 가져오기
        				content +=		'<div class="msg-info-time">';
        				content +=			'<p>'+hours + ':' + (minutes < 10 ? '0' : '') + minutes+'</p>';
        				content +=		'</div>';
        				content +=		'<div class="msg-text">'+item.content+'</div>';
        				content +=		'</div>';
        				content +=		'</div>';
        				content +=		'</div>';
        				
        			}
        			
        			/* 
        				if(checkHours != hours || checkMinutes != minutes){
        					content +=			'<img class="circle-img" src="/photo/'+data.profileImg+'" alt="상대방 프로필 사진">';
        					content +=			'<div class="message-info">';
        					content +=				'<p class="name">'+재민+'</p>'; 
        					if (item.new_picname != null) content +=	'<img class="photo" src="/photo/'+item.new_picname+'" alt="'+item.message_idx+'번 쪽지 사진">';
        					content +=				'<p class="content">'+item.content+'</p>';
        					content +=			'</div>';
        					checkHours = hours;
        					checkMinutes = minutes;
        				} else {
        					content +=			'<div class="term"><p></p></div>';
        					content +=			'<div class="message-info">';
        					if (item.new_picname != null) content +=	'<img class="photo" src="/photo/'+item.new_picname+'" alt="'+item.message_idx+'번 쪽지 사진">';
        					content +=				'<p class="content">'+item.content+'</p>';
        					content +=			'</div>';
        				}
        				content +=		'</div>';
        				content +=	'</div>';
        			} else if (email === item.sender_email) {
        				content +=	'<div class="send-msg-info" data-value="'+item.message_idx+'">';
        				content +=		'<div class="size-cut">';
        				content +=			'<div class="sendTime">';
        				content +=				'<p>'+hours + ':' + (minutes < 10 ? '0' : '') + minutes+'</p>';
        				content +=			'</div>';
        				content +=			'<div class="message-info">';
        				if (item.new_picname != null) content +=	'<img class="photo" src="/photo/'+item.new_picname+'" alt="'+item.message_idx+'번 쪽지 사진">';
        				content +=				'<p class="content">'+item.content+'</p>';
        				content +=			'</div>';
        				content +=		'</div>';
        				content +=	'</div>';
        			}
        			*/
        			
        		}
        		
        		$('.msger-chat').append(content);
         	}
         	
         	
         	
         	
         	
         	
             
             
            
         	function DateToString(timesteamp){
        		var date = new Date(timesteamp);
        		var dateStr = date.toLocaleDateString("ko-KR");
        		return dateStr;
        	}
            
             
             
             
			</script>
          </div>
          
        </div>