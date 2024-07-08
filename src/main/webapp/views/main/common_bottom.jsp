<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="do-toast" class="do-toast">This is a toast notification.</div>

<!-- Include SockJS and STOMP.js libraries -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>

<script>
	//[do] 토스트
	console.log('토스트 jsp 파일,,,');
	
	
	// WebSocket 설정
	document.addEventListener('DOMContentLoaded', function() {
	    function showToast(message) {
	    	console.log('토스트 출력 부분..');
	        var toast = document.getElementById("do-toast");
	        if (toast) {
	        	console.log('토스트 영역은 있는데..')
	            toast.className = "do-toast show";
	            toast.innerText = message;
	            setTimeout(function(){ 
	            	toast.className = toast.className.replace("show", "");
	            }, 2800);
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
	            console.log('이거 토스트 안되는거맞냐?');
	            showToast(notification.body);
	        });
	    });
	});
</script>