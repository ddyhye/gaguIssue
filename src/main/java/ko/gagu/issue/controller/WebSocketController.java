package ko.gagu.issue.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
    
    private Map<Integer, String> userSessions = new HashMap<>();
    
    // 특정 직원에게 메시지 전송 메소드
    public void sendNotificationToUser(int empId, String message) {
        String sessionId = userSessions.get(empId);
        if (sessionId != null) {
            template.convertAndSendToUser(sessionId, "/queue/notifications", message);
        }
    }
    
    // 알림 전송 메소드,,
    public void sendNotification(String message) {
        template.convertAndSend("/topic/notifications", message);
    }

    // 직원의 세션 등록 메소드,,
    public void registerUserSession(int empId, String sessionId) {
        userSessions.put(empId, sessionId);
    }
    
}
