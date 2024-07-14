<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>	
	<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> -->
	<link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/doToast.css'/>">
</head> 
		<!-- 토스트 알람 -->
	    <!-- <div class="toast-container position-fixed bottom-0 right-0 p-3" style="z-index: 11;">
	        <div id="liveToast" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
	            <div class="toast-header">
	                <strong class="mr-auto">Notification</strong>
	                <small>Just now</small>
	                <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
	                    <span aria-hidden="true">&times;</span>
	                </button>
	            </div>
	            <div class="toast-body">
	                This is a toast notification.
	            </div>
	        </div>
	    </div> -->

		<!-- 상단바 시작 -->
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
              	<li class="d-flex align-items-center" style="height: 45px;">
              		<p style="margin-bottom: 0;" id="sessionCurrentTime">--:--</p><span style="text-decoration: underline; font-size: 12px;cursor: pointer;" onClick="extendSessionTime()">연장</span>
              	</li>
                <!-- <li>                         
                	<span class="header-search">
                    <svg>
                      <use href="/assets/svg/icon-sprite.svg#search"></use>
                    </svg></span></li> -->
                <li class="fullscreen-body">                       <span>
                    <svg id="maximize-screen">
                      <use href="/assets/svg/icon-sprite.svg#full-screen"></use>
                    </svg></span></li>
                    
                
                <!-- do: 야간모드 -->
                <li>
                  <div class="mode active">
                    <svg>
                      <use href="/assets/svg/icon-sprite.svg#moon"></use>
                    </svg>
                  </div>
                </li>
                
                
                <!-- do: 알림 -->
                <li class="onhover-dropdown">
                  <div class="notification-box" id="do-alarmIcon">
                    <svg>
                      <use href="/assets/svg/icon-sprite.svg#notification"></use>
                    </svg><span class="badge rounded-pill badge-primary" id="do-alarmCnt">4 </span>
                  </div>
                  <div class="onhover-show-div notification-dropdown do-overflow">
                    <h5 class="f-18 f-w-600 mb-0 dropdown-title">Notifications</h5>
                    <ul class="notification-box do-alarm" id="do-alarm">
                      <li class="toast default-show-toast align-items-center border-0 fade show" aria-live="assertive" aria-atomic="true" data-bs-autohide="false">
                        <div class="d-flex justify-content-between">
                          <div class="toast-body d-flex p-0">
                            <!-- <div class="flex-shrink-0 bg-light-primary"><img class="w-auto" src="/assets/images/dashboard/icon/wallet.png" alt="Wallet"></div> -->
                            <div class="flex-grow-1"> 
<!--                             	<a href="private-chat.go"> -->
                                	<h6 class="m-0">Daily offer added</h6>
<!--                                 </a> -->
                              <p class="m-0">User-only offer added</p>
                            </div>
                          </div>
                          <button class="btn-close btn-close-white shadow-none" type="button" data-bs-dismiss="toast" aria-label="Close"></button>
                        </div>
                      </li>
                  </div>
                </li>
                
                
                <!-- do: 쪽지 -->
                <li class="onhover-dropdown">
                  <a class="messageBox" href="#" id="messageButton">
                    <div class="notification-box">
                      <svg>
                        <use href="/assets/svg/icon-sprite.svg#header-message"></use>
                      </svg>
                      <span id="unreadBadge" class="badge rounded-pill badge-info" style="display: none;"></span>
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
                    <li><a href="<c:url value='/employee/profile.go'/>"><i data-feather="user"></i><span>My Profile </span></a></li>
                    <li><a href="<c:url value='/employee/group.go'/>"><i data-feather="users"></i><span>조직도</span></a></li>
                    <li><a href="<c:url value='/employee/attendance.go'/>"><i data-feather="check-circle"></i><span>나의 근태</span></a></li>
                    <li><a href="<c:url value='/employee/calendar.go'/>"><i data-feather="calendar"></i><span>Calendar</span></a></li>
                    <li><a href="<c:url value='/todo.go'/>"><i data-feather="edit-3"> </i><span>To Do !</span></a></li>
                    <li><a href="<c:url value='/logout.go'/>"><i data-feather="log-in"> </i><span>Log out</span></a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <!-- 상단바 끝 -->
        
        
        <!-- 토스트 -->
        <!-- <div id="do-toast" class="toast">This is a toast notification.</div> -->
	    <%-- <%@ include file="common_bottom.jsp" %> --%>
        
        
        
<script class="result-template" type="text/x-handlebars-template">
              <div class="ProfileCard u-cf">                        
              <div class="ProfileCard-avatar"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-airplay m-0"><path d="M5 17H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-1"></path><polygon points="12 15 17 21 7 21 12 15"></polygon></svg></div>
              <div class="ProfileCard-details">
              <div class="ProfileCard-realName">{{name}}</div>
              </div>
              </div>
            </script>
<script class="empty-template" type="text/x-handlebars-template"><div class="EmptyMessage">Your search turned up 0 results. This most likely means the backend is down, yikes!</div></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
    <script>
    	var countDownDate;
		// [jeong] 세션 남은 시간 표시
	        function startTimer(sessionDeadTime) {
	        	countDownDate = new Date(sessionDeadTime).getTime();
	            var x = setInterval(function () {
	                var now = new Date().getTime();
	                var distance = countDownDate - now;
	                
	                if (distance < 0) {
	                    clearInterval(x);
	                    document.getElementById("sessionCurrentTime").innerHTML = "00:00";
	                    alert('세션 끝남');
	                 	// window.location.href='/logout.go';
	                 	return;
	                }
	
	                var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
	                var seconds = Math.floor((distance % (1000 * 60)) / 1000);
	                document.getElementById("sessionCurrentTime").innerHTML = 
	                    (minutes < 10 ? "0" : "") + minutes + ":" + (seconds < 10 ? "0" : "") + seconds;
	            }, 500);
	        }
	
            var sessionDeadTime = get_cookie('sessionDeadtime');
            console.log(sessionDeadTime);
            startTimer(sessionDeadTime);
	        
	    	function extendSessionTime() {
	    		const nowTime = new Date().getTime();
	    		countDownDate = nowTime + 3600 * 1000;
	    		set_cookie('sessionDeadtime', countDownDate.toString(), 30 * 60 * 1000);
	    		console.log(new Date(countDownDate));
	    	}
	        
	    	//쿠키 저장하는 함수
	    	function set_cookie(name, value, unixTime) {
	    		var date = new Date();
	    		date.setTime(date.getTime() + unixTime);
	    		console.log(encodeURIComponent(name) + '=' + encodeURIComponent(value) 
	    				+ ';expires=' + date.toUTCString() + ';path=/');
	    		document.cookie = encodeURIComponent(name) + '=' + encodeURIComponent(value) 
	    			+ ';expires=' + date.toUTCString() + ';path=/';
	    	}
	    	
	    	//쿠키 값 가져오는 함수
	    	function get_cookie(name) {
	    		var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
	    		return value? parseInt(value[2]) : null;
	    	}
	    	
	    	//쿠키 삭제하는 함수
	    	function delete_cookie(name) {
	    		document.cookie = encodeURIComponent(name) + '=; expires=Thu, 01 JAN 1999 00:00:10 GMT';
	    	}	        
    </script>          
<script>


	 // [jae]     
     $(document).ready(function() {
    	    $('#messageButton').click(function(e) {
    	    	var emp_id = "${sessionScope.emp_id}";
    	    	console.log("세션ID: ", emp_id);
    	        e.preventDefault();
    	        $.ajax({
    	            url: '/noteMessage2',
    	            method: 'GET',
    	            success: function(response) {
    	                // 기존 모달 제거 (중복 방지)
    	               // $('#myModal').remove();
    	                // 모달 내용을 body에 추가
    	                $('body').append(response);
    	                // 모달 표시
    	                $('#myModal').modal('show');
    	               
    	                
    	                // 대화방 목록을 불러오는 함수 호출
    	                loadChatRooms(emp_id);
    	            },
    	            error: function() {
    	                alert('쪽지함을 불러오는데 실패했습니다.');
    	            }
    	        });
    	    });
    	});
             
	 
     $(document).ready(function() {
    	    // 서버에서 읽지 않은 메시지 수를 가져오는 함수
    	    function fetchUnreadMessageCount() {
    	    	let emp_id = "${sessionScope.emp_id}";
    	        $.ajax({
    	            url: '/unreadMessageCount', // 실제 API 엔드포인트로 변경
    	            type: 'GET',
    	            data: {
    	            	'emp_id': emp_id
    	            },
    	            success: function(response) {
    	                var unreadCount = response.unreadCount; // 서버에서 반환한 읽지 않은 메시지 수
    	                
    	                
    	                if (unreadCount > 0) {
    	                    $('#unreadBadge').text(unreadCount).show(); // 배지에 숫자를 설정하고 표시
    	                } else {
    	                    $('#unreadBadge').hide(); // 배지를 숨김
    	                }
    	            },
    	            error: function(error) {
    	                console.error('에러 메시지:', error);
    	                // 오류 처리
    	            }
    	        });
    	    }

    	    // 페이지 로드 시 읽지 않은 메시지 수를 가져옴
    	    fetchUnreadMessageCount();

    	    // 필요에 따라 주기적으로 읽지 않은 메시지 수를 업데이트 (선택사항)
    	    setInterval(fetchUnreadMessageCount, 6000); // 1분마다 업데이트
    	});
	 
     function loadContact(search){
    	 console.log("연락처 불러오기 아작스 요청");
    	 var emp_id = "${sessionScope.emp_id}";
    	 $.ajax({
             url: '/getContact.ajax',
             method: 'POST',
             dataType:'JSON',
             data: {
            	 'contactSearch': search,
            	 'emp_id':emp_id
             },
             success: function(data) {
            	 // console.log(data);
            	 drawContactList(data);
             },
             error: function(error) {
            	 console.log(error);
                 alert('연락처를 불러오는데 실패하였습니다.');
             }
         });
     }
             
     function drawContactList(data){
    	 // console.log(data);
    	 $('.contact-wrapper').empty();
    	 var content = '';
    	 
    	 for (item of data.ContackList) {
  			content +=	'<ul class="border-0">'; 
  			content +=		'<li class="common-space">';
  			content +=		'<div class="chat-time">';
  			if(item.file_name != null){
          content += '<img class="img-fluid rounded-circle" alt="user" src="/file/profile_picture/'+item.file_name+'">';			                	
         }else{
         	content += '<img class="img-fluid rounded-circle" alt="user" src="/img/user_icon.png">';    	
         }
  			content +=		'<div>';
  			content +=		'<span>'+item.emp_name+'</span>';
  			content +=		'<p>사원 번호: '+item.emp_id+'</p>';
  			content +=		'</div>';
  			content +=		'</div>';
  			content +=		'<div class="contact-edit">';
  			content +=		'<svg class="dropdown-toggle" role="menu" data-bs-toggle="dropdown" aria-expanded="false">';
  			content +=		'<use href="/assets/svg/icon-sprite.svg#menubar"></use>';
  			content +=		'</svg>';
  			content +=		'<div class="dropdown-menu dropdown-menu-end">';
  			content +=		'<button id="openSecondModal2" type="button" onclick="secModal(\'' + item.emp_name + '\', \'' + item.idx_employee + '\')" class="btn dropdown-item" data-bs-toggle="modal" data-bs-target="#Modal3">쪽지 보내기</button>';
  			content +=		'<button id="openSecondModal" onclick="secModal2(\'' + item.idx_employee + '\')" type="button" class="btn dropdown-item" data-bs-toggle="modal" data-bs-target="#myModal2">회원 상세보기</button>';
  			content +=		'</div>';
  			content +=		'</li>';
  			content +=		'</ul>';
  		}
    	 $('.contact-wrapper').append(content);
     }
             
     		
             
      function loadChatRooms(emp_id, search) {
     	 console.log("대화방 불러오기 아작스 요청");
     //	 console.log(search);
     //	 console.log(emp_id);
          $.ajax({
              url: '/getChatRooms',
              method: 'POST',
              dataType:'JSON',
              data: {
             	 'messageSearch': search,
             	 'emp_id': emp_id
              },
              success: function(data) {
             	 // console.log(data);
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
            	// console.log(data);
            	var emp_id = "${sessionScope.emp_id}";
            	// console.log(emp_id);
            	console.log(data.messageSearch);
            	console.log("원래 사진 이름: ",data.roomList.origin_name);
         		$('.chats-user').empty();
         		var content = '';
         		if (!data.roomList || data.roomList.length === 0) {
         			content += '<p> 주고받은 쪽지가 없습니다. </p>';
         		}
         		
         		for (item of data.roomList) {
         			content +=	'<li class="common-space" onclick="viewRoomContent(\'' + item.idx_messageroom + '\', \'' + item.other_emp + '\',\'' + "${sessionScope.emp_id}" + '\', \'' + data.messageSearch + '\'); selectChatRoom(this);">'; 
         			content +=		'<div class="chat-time">';
         			content +=		'<div class="active-profile">';
         			if(item.file_name != null){
		                content += '<img class="img-fluid rounded-circle" alt="" src="/file/profile_picture/'+item.file_name+'">';			                	
	                }else{
	                	content += '<img class="img-fluid rounded-circle" alt="" src="/img/user_icon.png">';    	
	                }
//         			content +=			'<div class="status bg-success"></div>';
         			content +=		'</div>';
         			content +=		'<div>';
         			content +=		'<span>'+item.name+'</span>';
         			if(item.origin_name){
         			content +=		'<p>(사진)</p>';
         			}else{
         			content +=		'<p>'+item.msg_content+'</p>';         				
         			}
         			content +=		'</div>';
         			content +=		'</div>';
         			content +=		'<div>';
         			content +=		'<p>'+DateToString(item.reg_date)+'</p>';
         			if(item.no_read > 0){
         			content +=      '<div class="badge badge-light-success">'+item.no_read+'</div>';         				
         			}
         			content +=		'</div>';
         			content +=		'</li>';
         			if (item.no_read > 0) {
         				content +=		'<div class="no-read"></div>';				
         			}
         			content +=	'</div>';	
         		}
         		
         		
         		
         		$('.chats-user').prepend(content);

         		
         	  
         	}
         	
             var chatIntervalId; // interval ID를 저장할 전역 변수

             
             function viewRoomContent(idx, other_emp, emp_id, search){
            	
            	// 기존 interval이 있으면 취소
           	    if (chatIntervalId) {
           	        clearInterval(chatIntervalId);
           	    }
            	
            	//console.log("방번호 : ", idx);
            	//console.log("상대방 idx : ", other_emp);
            	//console.log("자신 id 서버에서 idx로 바꿔야함 : ", emp_id);
         		messageCall(idx, emp_id , other_emp);
         		subjectCall(other_emp);
         		
         		chat_idx = idx;
         		chat_user = other_emp;
         		
         		
         		// 5초마다 새 메시지 로드
         	    chatIntervalId = setInterval(function() {
         	    	messageCall(idx, emp_id , other_emp);
         	    	loadChatRooms(emp_id, search);
         	    }, 5000);
         	}
             
             
            
             function subjectCall(other_emp) {
            	 // console.log(other_emp);
         		$.ajax({
         			type: 'POST',
         			url: '/subjectCall.ajax',
         			data: {
         				'other_emp': other_emp
         			},
         			dataType: 'JSON',
         			success: function(data) {
         				
         				drawSubject(data);
         				
         			}, error: function(error) {
         				console.log(error);
         			}
         		});
         	}
             
             
             
            function drawSubject(data){
            	$('.right-sidebar-title').empty();
            	var content = '';
            	 
            	
            	for (item of data.subjectCall) {	
            		content += '<div class="common-space">';
            		content += '<div class="chat-time">';
	    			content += '<div class="active-profile">';
	    			if(item.file_name != null){
		                content += '<img class="img-fluid rounded-circle" alt="" src="/file/profile_picture/'+item.file_name+'">';			                	
	                }else{
	                	content += '<img class="img-fluid rounded-circle" alt="" src="/img/user_icon.png">';    	
	                }
	    			content +=		'</div>';
	    			content +=		'<div>';
	    			content +=		'<span>'+item.other_name+'</span>';
	    			content +=		'<p>'+item.de_name+'</p>';
	    			content +=		'</div>';
	    			content +=		'</div>';
	    			content +=		'<div class="d-flex gap-2">';
	    			content +=		'<div class="contact-edit chat-alert">';
	    			content +=		'<svg class="dropdown-toggle" role="menu" data-bs-toggle="dropdown" aria-expanded="false">';
	    			content +=		'<use href="/assets/svg/icon-sprite.svg#menubar"></use>';
	    			content +=		'</svg>';
	    			content +=		'<div class="dropdown-menu dropdown-menu-end"><a class="dropdown-item" href="#!">나가기</a></div>';
	    			content +=		'</div>';
	    			content +=		'</div>';
	    			content +=		'</div>';
            	}

        		$('.right-sidebar-title').append(content);
            }
             
             
         	// 특정 방 message 출력
         	function messageCall(idx, emp_id, otherEmp) {
         		$.ajax({
         			type: 'POST',
         			url: '/messageCall.ajax',
         			data: {
         				'idx': idx,
         				'emp_id': emp_id,
         				'otherEmp': otherEmp
         			},
         			dataType: 'JSON',
         			success: function(data) {
         				drawMessage(data);
         				//loadChatRooms("${sessionScope.emp_id}");
         			}, error: function(error) {
         				console.log(error);
         			}
         		});
         		
         	}
            
            
         	
         	
         	var checkDate;
         	/* 대화 내용 출력 */
         	function drawMessage(data) {
         	    var idx_emp = data.idx_emp;
         	    console.log("idx_emp : ", idx_emp);
         	    var checkHours = 0;
         	    var checkMinutes = 0;
         	    
         	    var chatContainer = $('.msger-chat');
         	    var wasScrolledToBottom = chatContainer.scrollTop() + chatContainer.innerHeight() >= chatContainer[0].scrollHeight;
         	    var previousScrollHeight = chatContainer[0].scrollHeight;
         	    
         	    chatContainer.empty();
         	    
         	    var content = '';

         	    if (!data.messageList || data.messageList.length === 0) {
         	        content += '<i class="fa-solid fa-square-envelope"></i><p class="no-message">Select Message...</p>';
         	    }

         	    for (item of data.messageList) {
         	        var date = new Date(item.send_datetime);
         	        var dateStr = date.toLocaleDateString("ko-KR");
         	        var hours = date.getHours();
         	        var minutes = date.getMinutes();
         	        
         	        if (idx_emp === item.receiver) {
         	            content += '<div class="msg left-msg">';
         	            if (item.file_name != null) {
         	                content += '<img class="msg-img" alt="" src="/file/profile_picture/' + item.file_name + '">';                   
         	            } else {
         	                content += '<img class="msg-img" alt="" src="/img/user_icon.png">';        
         	            }
         	            content += '<div class="msg-bubble">';
         	            content += '<div class="msg-info">';
         	            content += '<div class="msg-info-name">' + item.other_name + '</div>';
         	            content += '<div class="msg-info-time">' + hours + ':' + (minutes < 10 ? '0' : '') + minutes + '</div>';
         	            content += '</div>';
         	            if (item.new_picname != null) {
         	                content += '<img class="photo" src="/file/message_picture/' + item.new_picname + '" alt="' + item.new_picname + '번 쪽지 사진">';
         	                content += '<div class="msg-text hide-text">' + item.origin_name + '</div>';
         	            } else {
         	                content += '<div class="msg-text">' + item.msg_content + '</div>';
         	            }
         	            content += '</div>';
         	        } else if (idx_emp === item.sender) {
         	            if (item.sender_del == 0) {
         	                content += '<div class="msg right-msg">';
         	                content += '<img class="img-20" id="delete_btn" alt="" src="/img/trash_icon.png" onclick="deleteMessage(' + item.idx_message + ');">';
         	                
         	                content += '<div class="msg-bubble">';
         	                content += '<div class="msg-info">';
         	                content += '<div class="msg-info-name">나</div>';                
         	                content += '<div class="msg-info-time">' + hours + ':' + (minutes < 10 ? '0' : '') + minutes + '</div>';
         	                content += '</div>';
         	                if (item.new_picname != null) {
         	                    content += '<img class="photo" src="/file/message_picture/' + item.new_picname + '" alt="' + item.new_picname + '번 쪽지 사진">';
         	                    content += '<div class="msg-text hide-text">' + item.origin_name + '</div>';
         	                } else {
         	                    content += '<div class="msg-text">' + item.msg_content + '</div>';
         	                }
         	                content += '</div>';
         	            }
         	        }
         	        content += '</div>';
         	        content += '</div>';
         	    }

         	    console.log('Before appending new content:', chatContainer.scrollTop(), chatContainer[0].scrollHeight);
         	    chatContainer.append(content);
         	    console.log('After appending new content:', chatContainer.scrollTop(), chatContainer[0].scrollHeight);
         	    
         	    var newScrollHeight = chatContainer[0].scrollHeight;
         	    
         	    // 새로운 메시지가 있을 때만 스크롤을 아래로 내림
         	    if (wasScrolledToBottom || data.isNewMessage) {
         	        chatContainer.scrollTop(newScrollHeight);
         	    } else {
         	        // 이전 스크롤 위치를 유지
         	        var scrollDifference = newScrollHeight - previousScrollHeight;
         	        chatContainer.scrollTop(chatContainer.scrollTop() + scrollDifference);
         	    }
         	}

         	
         	function deleteMessage(msg_idx){
         		var confirmDelete = confirm("쪽지를 삭제하시겠습니까?");
         		if(confirmDelete){
	         		$.ajax({
	        			type:'POST',
	        			url:'/msgDelete.ajax',
	        			data:{
	                        'msg_idx':msg_idx
	                    },
	        			success:function(data){
	        				if (parseInt(data)>0) {
	        					alert("삭제 성공했습니다.");
	        					//location.reload(true);
	        				} else {
	        					alert("삭제 실패했습니다.");
	        				}
	        				// $('#deleteForm').toggle();
	        			}, 
	        			error:function(error){
	        				console.log(error);
	        			} 
	        		});         			
         		}
         	}	
         	
         	
         	
             
             
            
         	function DateToString(timesteamp){
        		var date = new Date(timesteamp);
        		var dateStr = date.toLocaleDateString("ko-KR");
        		return dateStr;
        	}
            
             
             
             
         	
         	
         	
         	
         	
         	
         	
         	
         	
        	// [do] 알림
        	// 알림 갯수는 스케쥴러를 사용할 것인지, 아님 페이지 이동시마다 비동기로 할 것인지? ==> 비동기
        	// do-alarmCnt 이것의 값을 바꿔줘야함.
        	alarmCnt();
        	// 알람의 개수를 가져오는 함수
        	function alarmCnt() {
        		fetch('/alarmCnt.ajax', {
        			method: 'POST',
        			headers: {
        				'Content-Type': 'application/json'
        			},
        			body: JSON.stringify({})
        		})
        		.then(response => response.json())
        		.then(data => {
        			if (data.alarmCnt > 0) {
					document.getElementById('do-alarmCnt').innerText = data.alarmCnt;
				} else {
					const alarmIcon = document.getElementById('do-alarmIcon');
					
				    // 모든 자식 요소 제거
				    while (alarmIcon.firstChild) {
				        alarmIcon.removeChild(alarmIcon.firstChild);
				    }
	        		
	        		var content = '';
	        		
        			content += '<svg>';
        			content += '<use href="/assets/svg/icon-sprite.svg#notification"></use>';
        			content += '</svg>';
        			content += '</div>';
	        		
        			// 새로운 내용 추가
        			const fragment = document.createRange().createContextualFragment(content);
        		    alarmIcon.appendChild(fragment);
				}
        		})
        		.catch(error => {consoleerror('Fetch error:', error);})
        	}
        	
        	document.getElementById('do-alarmIcon').addEventListener('mouseover', () => {
        		fetch('/alarmList.ajax', {
        			method: 'POST',
        			headers: {
        				'Content-Type': 'application/json'
        			},
        			body: JSON.stringify({})
        		})
        		.then(response => response.json())
        		.then(data => {
        			drawAlarmList(data);
        		})
        		.catch(error => {console.error('Fetch error:', error);})
        	});
        	
        	function drawAlarmList(data){
        		$('.do-alarm').empty();
       		
       		var content = '';

       		if (!data.list || data.list.length === 0) {
       			content += '<p>새로운 알림이 없습니다...</p>';
       		}
       		for (item of data.list) {
       			content += '<li class="toast default-show-toast align-items-center border-0 fade show" aria-live="assertive" aria-atomic="true" data-bs-autohide="false">';
       			content += '<div class="d-flex justify-content-between">';
       			content += '<div class="toast-body d-flex p-0 do-alarm-path">';
       			content += '<div class="flex-grow-1">';
       			//content += '<div class="flex-grow-1"> <a href="private-chat.go">';
       			content += '<input type="hidden" class="do-alarm-idx" value="'+item.idx_alarm+'"/>';
       			content += '<input type="hidden" class="do-alarm-empIdx" value="'+item.idx_employee+'"/>';
       			content += '<input type="hidden" class="do-alarm-path" value="'+item.al_path+'"/>';
       			content += '<h6 class="m-0">';
       			content += item.al_content;
       			content += '</h6>';
       			//content += '</h6></a>';
       			content += '<p class="m-0">';
       			var dateOnly = item.create_datetime.split('T')[0];
       			content += dateOnly;
       			content += '</p>';
       			content += '</div>';
       			content += '</div>';
       			content += '<button class="btn-close btn-close-white shadow-none do-alarm-delete" type="button" data-bs-dismiss="toast" aria-label="Close"></button>';
       			content += '</div>';
       			content += '</li>';
       		}
       		
       		$('.do-alarm').append(content);
       		
       		
       		// 모든 알림에 경로가 있는지 확인하고, 경로가 있다면 링크 이동
		    document.querySelectorAll('.do-alarm-path').forEach(element => {
		        element.addEventListener('click', function (e) {
		            if (e.target.classList.contains('do-alarm-delete') || e.target.closest('.do-alarm-delete')) {
		                return;
		            }
		
		            const alarmPath = element.querySelector('input.do-alarm-path').value;
		            console.log(alarmPath);
		            if (alarmPath) {
		                window.location.href = '<c:url value="'+alarmPath+'"/>';
		            }
		        });
		        
		        // 삭제 버튼에 이벤트 리스너 추가
	            const deleteButton = element.closest('li').querySelector('.do-alarm-delete');
	            if (deleteButton) {
	                deleteButton.addEventListener('click', function (e) {
	                    e.stopPropagation();
	                    
	                    const idxAlarm = this.closest('li').querySelector('.do-alarm-idx').value;
	                    const idxEmployee = this.closest('li').querySelector('.do-alarm-empIdx').value;
	                    readRequest(idxAlarm, idxEmployee);
	                    
	                    // 알림 삭제했으면 개수도 수정하자!
	                    alarmCnt();
	                });
	            }
		    });
        	}
        	// 알람 삭제 (읽음) ajax
        	function readRequest(idxAlarm, idxEmployee) {
        	    fetch('/alarmRead.ajax', {
        	        method: 'POST',
        	        headers: {
        	            'Content-Type': 'application/json',
        	        },
        	        body: JSON.stringify({ 
        	        	idx_alarm: idxAlarm, 
        	        	idx_employee: idxEmployee 
        	        }),
        	    })
        	    .then(response => response.json())
        	    .then(data => {
        	    })
        	    .catch((error) => { console.error('Error:', error); });
        	}
        	
        	
        /*
        // [do] 토스트
		// WebSocket 설정
        document.addEventListener('DOMContentLoaded', function() {
            function showToast(message) {
                var toast = document.getElementById("do-toast");
                if (toast) {
                    toast.className = "toast show";
                    toast.innerText = message;
                    setTimeout(function(){ 
                    	toast.className = toast.className.replace("show", "");
                    }, 3000);
                } else {
                    console.error("Toast element not found");
                }
            }

            // WebSocket 설정
            const socket = new SockJS('/ws');
            const stompClient = Stomp.over(socket);

            stompClient.connect({}, function (frame) {
                console.log('Connected: ' + frame);
                stompClient.subscribe('/topic/notifications', function (notification) {
                    console.log('토스트 테스트 >> ' + notification.body);
                    showToast(notification.body);
                });
            });
        });
        */
</script>