package ko.gagu.issue.util;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.messaging.simp.stomp.StompHeaderAccessor;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.messaging.SessionConnectedEvent;

import ko.gagu.issue.controller.WebSocketController;
import ko.gagu.issue.dto.EmployeeDTO;

@Component
public class WebSocketEventListener implements ApplicationListener<SessionConnectedEvent> {

    @Autowired
    private WebSocketController webSocketController;

    @Autowired
    private HttpSession httpSession;

    @Override
    public void onApplicationEvent(SessionConnectedEvent event) {
        StompHeaderAccessor headerAccessor = StompHeaderAccessor.wrap(event.getMessage());
        String sessionId = headerAccessor.getSessionId();

        EmployeeDTO dto = (EmployeeDTO) httpSession.getAttribute("loginInfo");
        if (dto != null) {
            int empId = dto.getIdx_employee();
            webSocketController.registerUserSession(empId, sessionId);
        }
    }
}
