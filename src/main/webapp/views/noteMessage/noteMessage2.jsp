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
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css'/>" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	<style>
    .modal-dialog {
	     max-width: 85%; /* 원하는 너비를 설정합니다 */
	     width: 85%; /* 모달이 설정된 너비를 사용하도록 합니다 */
	     max-height: 70vh; /* 원하는 높이를 설정합니다 */
    }
    
    .badge {
	    padding: 0.25em 1.5em;
	    font-family: "Outfit", sans-serif, sans-serif;
	    font-weight: 500;
	}
	.search-contacts {
		margin-top: 10px;
	}
	
	.flex-grow-1 {
		margin-left	: 10px;
		margin-top : 10px;
	}
	.custom-text1, .custom-text2, .custom-text3 {
		color: black;
		background-color: lightgray; /* 유지하고 싶은 백그라운드 컬러 */
		padding: 0.5rem; /* 필요에 따라 패딩 조정 */
		border-radius: 0.25rem; /* 필요에 따라 둥근 모서리 조정 */
	}
	.custom-modal {
	  	max-width: 800px; /* 원하는 너비로 조정 */
	}
	.detailmodal{
		margin-left: 232px;
	}
	
	.chats-user .common-space.selected-chat {
	    background-color: yellow; /* 원하는 색상으로 변경 */
	}
	</style>
  </head>
  <body> 
   
          
	          <div class="modal" id="myModal" data-bs-backdrop="static" data-bs-keyboard="false"> 	
				  <div class="modal-dialog">
				    <div class="modal-content">          
          
		      <!-- Modal Header -->
		      <div class="modal-header">
		        <h4 class="modal-title">사내 쪽지함</h4>
		        <button type="button" class="btn-close" id="closeModal" onclick="closeModal()" data-bs-dismiss="modal"></button>
		      </div>
		
		      <!-- Modal body -->
		      <div class="modal-body">

				<div class="container-fluid">
				  <div class="row g-0">
				    <div class="col-xxl-3 col-xl-4 col-md-5 box-col-5">
				      <div class="left-sidebar-wrapper card">
				    	<!-- <h5>쪽지함 목록</h5> -->
				        <div class="left-sidebar-chat">
				          <div class="input-group">
				            <span class="input-group-text"><i class="search-icon text-gray" data-feather="search"></i></span>
				            <input class="form-control" type="text" name="messageSearch" id="messageSearch" placeholder="이름으로 검색">
				          </div>
				        </div>
				        <div class="advance-options">
				          <ul class="nav border-tab" id="chat-options-tab" role="tablist">
				            <li class="nav-item"><a class="nav-link active" id="chats-tab" data-bs-toggle="tab" href="#chats" role="tab" aria-controls="chats" aria-selected="true">쪽지목록</a></li>
				            <li class="nav-item"><a class="nav-link" id="contacts-tab" data-bs-toggle="tab" href="#contacts" role="tab" aria-controls="contacts" aria-selected="false">연락처</a></li>
				          </ul>
				          <div class="tab-content" id="chat-options-tabContent">
				            <div class="tab-pane fade show active" id="chats" role="tabpanel" aria-labelledby="chats-tab">
				              
				              <ul class="chats-user">
				               
				              </ul>
				              
				            </div>
				            <div class="tab-pane fade" id="contacts" role="tabpanel" aria-labelledby="contacts-tab">
				              
				              <div class="search-contacts">
				                <input class="form-control" name="contactSearch" id="contactSearch" type="text" placeholder="이름 또는 전화번호 검색 ">
				                <svg>
				                  <use href="/assets/svg/icon-sprite.svg#stroke-search"></use>
				                </svg>
				              </div>
				              <div class="contact-wrapper">
				                <p>A</p>
				                <ul class="border-0">
				                  <li class="common-space">
				                    <div class="chat-time">
				                      <img class="img-fluid rounded-circle" src="/img/ahruru.png" alt="user">
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
				                      <img class="img-fluid rounded-circle" src="/img/ahruru.png" alt="user">
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
				                      <img class="img-fluid rounded-circle" src="/img/ahruru.png" alt="user">
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
				                <img class="img-fluid rounded-circle" src="/img/ahruru.png" alt="user">
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
				            </div>
				            <form class="msger-inputarea">
				              <div class="dropdown-form dropdown-toggle" role="main" data-bs-toggle="dropdown" aria-expanded="false"><i class="icon-plus"></i>
				                <div class="chat-icon dropdown-menu dropdown-menu-start">
				                  <div class="dropdown-item mb-2">
				                  <!-- [JAE] SVG 요소의 viewBox 속성을 사용하여 SVG의 보이는 영역과 실제 클릭 가능한 영역을 조정 -->
				                    <svg id="attachment-btn" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
									  <use href="/assets/svg/icon-sprite.svg#attchment"></use>
									</svg>
				                  </div>
				                  
				                </div>
				              </div>
				              <input class="msger-input two uk-textarea" type="text" id="sendText" placeholder="보내실 쪽지를 입력해주세요.">
				              <div class="open-emoji">
				                <div class="second-btn uk-button"></div>
				              </div>
				              <button class="msger-send-btn" id="send_btn" type="submit"><i class="fa fa-location-arrow"></i></button>
				              
				              <!-- 숨겨진 파일 입력 요소 -->
  							<input type="file" id="file-upload" style="display: none;">
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
					<button type="button" id="closeModal2" class="btn btn-danger"
						data-bs-dismiss="modal" onclick="closeModal()">나가기</button>
				</div>
			</div>
		</div>
	</div>
		
		
		
	<!-- 회원 상세 모달 -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered custom-modal" role="document">
	    <div class="modal-content">
	
	      <!-- Modal Header -->
	      <div class="modal-header">
	        <h4 class="modal-title">프로필 정보</h4>
	        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
	      </div>
	
	      <!-- Modal body -->
	      <div class="modal-body">
               <div class="col-xl-4 detailmodal">
                  <div class="card">
                    
                    <div class="card-body">
                        <div class="row mb-2">
                          <div class="profile-title">
                            <div class="d-flex">                        
                            <img class="img-70 rounded-circle" alt="" src="/img/ahruru.png">
                              <div class="flex-grow-1">
                                <h4 class="mb-1"></h4>
                                <p class="title">직위</p>
                              </div>
                            </div>
                          </div>
                        </div>
                        
                        <div class="mb-3">
                          <label class="form-label">부서</label>
                          <p class="form-control-plaintext custom-text1">물류관리부서</p>
                        </div>
                        <div class="mb-3">
                          <label class="form-label">사원번호</label>
                          <p class="form-control-plaintext custom-text2">240611B02</p>
                        </div>
                        <div class="mb-3">
                          <label class="form-label">이메일</label>
                          <p class="form-control-plaintext custom-text3">your-email@domain.com</p>
                        </div>
                    </div>
                  </div>
                </div>
	      </div>
	
	      <!-- Modal footer -->
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>	
		
	
	<!-- 쪽지 보내기 모달 -->
	<div class="modal fade" id="Modal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
	        
	      </div>
	      <div class="modal-body">
	        <form>
	          <div class="form-group">
	            <label for="recipient-name" class="col-form-label">받는이:</label>
	            <input type="text" class="form-control" value="" id="recipient-name" readonly>
	            <input type="text" id="other_idx" style="display: none;">
	          </div>
	          <div class="form-group">
	            <label for="message-text" class="col-form-label">메시지:</label>
	            <textarea class="form-control" id="message-text"></textarea>
	          </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-bs-dismiss="modal" >취소</button>
		        <button type="button" class="btn btn-primary" id="CreatAndsend_btn">보내기</button>
		      </div>
	        </form>
	      </div>
	    </div>
	  </div>
	</div>
		
		
	
		
		
	<script>
	
	$(document).ready(function() {
	    $('#contacts-tab').on('click', function() {
	        loadContact();
	    });
	});
	
	var messageSearch = document.getElementById('messageSearch').value;
	
    document.getElementById('messageSearch').addEventListener('keydown', function(event) {
	console.log(messageSearch);
        if (event.key === "Enter") {
            event.preventDefault();
            messageSearch = document.getElementById('messageSearch').value;
            var emp_id = "${sessionScope.emp_id}";
           //	 console.log("------",emp_id);
            loadChatRooms(emp_id, messageSearch);
        }
    });
	
  	
	var messageSearch = document.getElementById('contactSearch').value;
	
    document.getElementById('contactSearch').addEventListener('keydown', function(event) {
	console.log(messageSearch);
        if (event.key === "Enter") {
            event.preventDefault();
            contactSearch = document.getElementById('contactSearch').value;
            loadContact(contactSearch);
        }
    });
    
    function closeModal(){
    	 document.getElementById('myModal').style.display = 'none';
    }
    
    /* function closeModal2(){
   	 document.getElementById('Modal3').style.display = 'none';
   } */
    
    function secModal(emp_name, idx_emp){
   	 console.log("메시지 보내기 모달 오픈");
   	 $('#recipient-name').val(emp_name);
   	 $('#other_idx').val(idx_emp);
   	 document.getElementById('myModal').style.display = 'block';
    }
    
    
    function secModal2(idx_emp){
      	 console.log("회원 상세보기 모달 오픈");
      	 document.getElementById('myModal').style.display = 'block';
      	 employeeDetail(idx_emp);
       }
    
    
    function employeeDetail(idx_emp){
    	 console.log("회원 상세 정보");
    	 console.log(idx_emp);
         $.ajax({
             url: '/getempDetail',
             method: 'POST',
             data: {
            	 'idx_emp': idx_emp,                    	 
             },
             success: function(data) {
            	 console.log(data);
            	 $('h4.mb-1').text(data.emp_name);
            	 $('p.title').text(data.title_name);
            	 $('p.custom-text1').text(data.de_name);
            	 $('p.custom-text2').text(data.idx_title);
            	 $('p.custom-text3').text(data.emp_email);
             },
             error: function(error) {
            	 console.log("error",error);
                 alert('회원 상세를 불러오는데 실패했습니다.');
             }
         });
    	
    }
    
    
    $('#send_btn').click(function(event) {
    	event.preventDefault();
    	console.log("보내기 click");
    	var emp_id = "${sessionScope.emp_id}"; // 나중에 세션으로 대체
	    sendMessage(chat_idx, chat_user);
	    setTimeout(function() {
			messageCall(chat_idx, emp_id, chat_user);
			loadChatRooms(emd_id); // '${loginInfo.email}' 나중에 세션으로 대체
		}, 100);
	    $('#sendText').val('');
	});

    
    // 메시시 보내기
	function sendMessage(idx, other_emp) {
		console.log("메시지 보내기");
		
		var emp_id = "${sessionScope.emp_id}";
		var content = $('#sendText').val();
		if(content == '') return alert("빈 내용은 전송할 수 없습니다.");
		if(idx === 0 || other_emp === '') return alert("시스템 에러");
		$.ajax({
			type: 'POST',
			url: '/messageSend.ajax',
			data: {
				'idx': idx,
				'emp_id': emp_id,
				'other_emp' : other_emp,
				'content': content
			},
			dataType: 'JSON',
			success: function(data) {
				console.log(data.result);
			}, error: function(error) {
				console.log(error);
			}
		});
	}


	  var attachmentBtn = document.getElementById('attachment-btn');
	  var fileUpload = document.getElementById('file-upload');

	  attachmentBtn.addEventListener('click', function () {
		  console.log("탐색기 열기ㅣㅣㅣ");
		  event.preventDefault();  // 기본 동작 방지
	      fileUpload.click(); // 파일 탐색기 열기
	  });

	  fileUpload.addEventListener('change', function (event) {
	    var files = event.target.files;
	    if (files.length > 0) {
	      // 파일이 선택된 경우 처리 로직 추가
	      console.log('Selected file:', files[0]);
	    }
	  });
	  
	  
      function selectChatRoom(element) {
   		  console.log("클릭한 대화방 색 변경");
   		  console.log("element",element);
   	      // 모든 채팅방 리스트에서 선택된 클래스 제거
   	      var chatRooms = document.querySelectorAll('.chats-user .common-space');
   	      chatRooms.forEach(function(chatRoom) {
   	          chatRoom.classList.remove('selected-chat');
   	      });

   	      // 클릭된 채팅방에 선택된 클래스 추가
   	      element.classList.add('selected-chat');
   	   	  console.log(element.classList); 
   	  }
      
      // 메시지 보내기 & 방 만들기
      $('#CreatAndsend_btn').click(function(event) {
	      	event.preventDefault();
	      	console.log("방 만들기 & 쪽지 보내기");
	      	var emp_id = "${sessionScope.emp_id}"; // 나중에 세션으로 대체
	      	var other_idx = $('#other_idx').val();
	      	var content = $('#message-text').val();
	      	//console.log("content :::", content);
	      	//console.log("상대방 : ", other_idx);
	  	    sendAndCreate(emp_id, other_idx, content);
	  	    setTimeout(function() {
	  			//messageCall(chat_idx, emp_id, chat_user);
	  			loadChatRooms(emp_id); // 
	  		}, 100);
	  	    // $('#sendText').val('');
	  	});
      
      function sendAndCreate(emp_id, other_idx, content) {
  		console.log("메시지 보내기");
  		var emp_idx = "${sessionScope.emp_id}";
  		console.log("#####", emp_idx, other_idx);
  		if(content == '') return alert("빈 내용은 전송할 수 없습니다.");
  		//if(idx === 0 || other_emp === '') return alert("시스템 에러");
  		$.ajax({
  			type: 'POST',
  			url: '/sendAndCreate.ajax',
  			data: {
  				//'idx': idx,
  				'emp_id': emp_id,
  				'other_emp' : other_idx,
  				'content': content
  			},
  			dataType: 'JSON',
  			success: function(data) {
  				console.log(data.result);
  				$('#Modal3').modal('hide');
         		$('#message-text').val('');
  				loadChatRooms(emp_id);
  				messageCall(data.room_idx, emp_idx , other_idx);
  				console.log("room_idx:::::",data.room_idx);
         		subjectCall(other_idx);
  			}, error: function(error) {
  				console.log(error);
  			}
  		});
  	}
      
 /*    
	  document.addEventListener('DOMContentLoaded', function() {
		  console.log("00000002번쨰 모달0000000");
	    document.getElementById('openSecondModal').addEventListener('click', function(event) {
	      event.preventDefault();
	      var secondModal = new bootstrap.Modal(document.getElementById('myModal2'));
	      secondModal.show();
	    });
	  });
    
	  document.addEventListener('DOMContentLoaded', function() {
		  console.log("00000003번쨰 모달0000000");
	    document.getElementById('openSecondModal2').addEventListener('click', function(event) {
	      event.preventDefault();
	      var secondModal = new bootstrap.Modal(document.getElementById('myModal2'));
	      secondModal.show();
	    });
	  });  
	  */
	  
	  

	  
		
	  
	  
	</script>
	
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
    <script src="/assets/js/script1.js"></script>
    <script src="/assets/js/theme-customizer/customizer.js"></script>
    <!-- Plugin used-->
    <script>new WOW().init();</script>
  </body>
</html>