package ko.gagu.issue.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.messaging.simp.stomp.StompHeaderAccessor;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.messaging.SessionConnectedEvent;

import ko.gagu.issue.controller.DocumentController;
import ko.gagu.issue.controller.WebSocketController;
import ko.gagu.issue.dto.EmployeeDTO;

import javax.servlet.http.HttpSession;

import java.security.Principal;
import java.util.Map;

@Component
public class WebSocketEventListener implements ApplicationListener<SessionConnectedEvent> {
	private static final Logger logger = LoggerFactory.getLogger(WebSocketController.class);
	
    @Autowired
    private WebSocketController webSocketController;

    @Override
    public void onApplicationEvent(SessionConnectedEvent event) {
    	/*
        StompHeaderAccessor headerAccessor = StompHeaderAccessor.wrap(event.getMessage());
        String sessionId = headerAccessor.getSessionId();
        
        // 디버깅: StompHeaderAccessor 상태 출력
        System.out.println("StompHeaderAccessor 하 스트링형태로는 뜬다. : " + headerAccessor.toString());
        System.out.println("가져올 다른 방법은 없을까?1  : " + headerAccessor.getHeader("simpSessionAttributes"));
        System.out.println("가져올 다른 방법은 없을까?2  : " + headerAccessor.getHeader("headers"));
        System.out.println("가져올 다른 방법은 없을까?3  : " + headerAccessor.getHeader("simpHeartbeat"));
        
        // 하..문자열로 잘라보자.
        String test1 = headerAccessor.toString().split("simpSessionAttributes=\\{")[1];
        String test2 = test1.split("}")[0];
        System.out.println("이젠 나오나요.."+test2);
        String employee_id = test2.split("=")[1];
        
        int empId = Integer.parseInt(employee_id);
        
        webSocketController.registerUserSession(empId, sessionId);
        */
        
        
        // **변경: EMPLOYEE_ID 사용**
        // 세션 속성 가져오기
//        Map<String, Object> sessionAttributes = (Map<String, Object>) headerAccessor.getHeader("simpSessionAttributes");
//        if (sessionAttributes != null) {
//        	logger.info("Session Attributes,,,,,,,: " + sessionAttributes);
//            String empIdStr = (String) sessionAttributes.get("EMPLOYEE_ID");
//            if (empIdStr != null) {
//                try {
//                    int empId = Integer.parseInt(empIdStr); // String을 Integer로 변환
//                    logger.info("empID는 얼마 ?? >> "+empId);
//                    webSocketController.registerUserSession(empId, sessionId);
//                } catch (NumberFormatException e) {
//                    System.err.println("EMPLOYEE_ID is not a valid integer: " + empIdStr);
//                }
//            } else {
//                System.err.println("EMPLOYEE_ID attribute is null");
//            }
//        } else {
//            System.err.println("Session attributes are null");
//        }
        
        StompHeaderAccessor headerAccessor = StompHeaderAccessor.wrap(event.getMessage());
        String sessionId = headerAccessor.getSessionId();
        Principal principal = headerAccessor.getUser();
        
        if (principal != null) {
            String empId = principal.getName();
            logger.info("Session connected, empId: " + empId);
            webSocketController.registerUserSession(Integer.parseInt(empId), sessionId);
        }
    }
}