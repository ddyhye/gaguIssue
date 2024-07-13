package ko.gagu.issue.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import ko.gagu.issue.dto.EmployeeDTO;

@RestController
public class WebSocketController {

    @Autowired
    private SimpMessagingTemplate template;

    private static final Logger logger = LoggerFactory.getLogger(WebSocketController.class);

    private Map<Integer, String> userSessions = new HashMap<>();

    // 로그인 직원 세션에 등록
    public void registerUserSession(int empId, String sessionId) {
        userSessions.put(empId, sessionId);
        logger.info("로그인한 유저 등록됨: " + userSessions);  // **로깅 추가**
    }

    // 토스트 전송
    public void sendNotification(String message) {
        template.convertAndSend("/topic/notifications", message);
    }

    // 원하는 직원에게 토스트 전송
    public void sendNotificationToUser(int empId, String message) {
    	logger.info("알람이 전송되어야 할 사원 idx >> " + empId);
        logger.info("알람 메시지 >> " + message);

        try {
            template.convertAndSendToUser(String.valueOf(empId), "/queue/notifications", message);
            logger.info("메시지 전송 성공");
        } catch (Exception e) {
            logger.error("메시지 전송 실패", e);
        }
    }

    public void sendNotificationToAll(String message) {
        template.convertAndSend("/topic/notifications", message);
    }
}