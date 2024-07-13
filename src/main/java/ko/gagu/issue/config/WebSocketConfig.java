package ko.gagu.issue.config;

import java.security.Principal;
import java.util.Map;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;
import org.springframework.web.socket.config.annotation.WebSocketMessageBrokerConfigurer;
import org.springframework.web.socket.server.HandshakeInterceptor;
import org.springframework.web.socket.server.support.DefaultHandshakeHandler;
import org.springframework.web.socket.server.support.HttpSessionHandshakeInterceptor;

import ko.gagu.issue.controller.WebSocketController;
import ko.gagu.issue.dto.EmployeeDTO;

@Configuration
@EnableWebSocketMessageBroker
public class WebSocketConfig implements WebSocketMessageBrokerConfigurer {
	private static final Logger logger = LoggerFactory.getLogger(WebSocketController.class);

    @Override
    public void configureMessageBroker(MessageBrokerRegistry config) {
        config.enableSimpleBroker("/topic", "/queue");
        config.setApplicationDestinationPrefixes("/app");
        config.setUserDestinationPrefix("/user");
    }

    /*  .....이건 그냥 웹 session 이용.. 클라이언트랑 연결이 안됨..
    @Override
    public void registerStompEndpoints(StompEndpointRegistry registry) {
        registry.addEndpoint("/ws").withSockJS()
            .setInterceptors(new HandshakeInterceptor() {
                @Override
                public boolean beforeHandshake(org.springframework.http.server.ServerHttpRequest request,
                                               org.springframework.http.server.ServerHttpResponse response,
                                               org.springframework.web.socket.WebSocketHandler wsHandler,
                                               Map<String, Object> attributes) throws Exception {
                    HttpSession session = getSession(request);
                    if (session != null) {
                        EmployeeDTO dto = (EmployeeDTO) session.getAttribute("loginInfo");
                        if (dto != null) {
                        	logger.info("로그인 직원 idx >> "+dto.getIdx_employee());
                            attributes.put("EMPLOYEE_ID", String.valueOf(dto.getIdx_employee())); // **변경: EmployeeDTO에서 idx_employee 추출하여 전달**
                            logger.info("세션에 저장된 로그인 직원 idx >> "+attributes.get("EMPLOYEE_ID"));
                        }
                    }
                    return true;
                }

                @Override
                public void afterHandshake(org.springframework.http.server.ServerHttpRequest request,
                                           org.springframework.http.server.ServerHttpResponse response,
                                           org.springframework.web.socket.WebSocketHandler wsHandler, Exception ex) {
                    // No-op
                }

                private HttpSession getSession(org.springframework.http.server.ServerHttpRequest request) {
                    if (request instanceof org.springframework.http.server.ServletServerHttpRequest) {
                        return ((org.springframework.http.server.ServletServerHttpRequest) request)
                                .getServletRequest().getSession(false);
                    }
                    return null;
                }
            });
    }
    */
    /* pricipal 과 웹 session 같이 사용 */
    @Override
    public void registerStompEndpoints(StompEndpointRegistry registry) {
        registry.addEndpoint("/ws").setHandshakeHandler(new DefaultHandshakeHandler() {
            @Override
            protected Principal determineUser(
                    org.springframework.http.server.ServerHttpRequest request,
                    org.springframework.web.socket.WebSocketHandler wsHandler,
                    Map<String, Object> attributes) {

                HttpSession session = getSession(request);
                if (session != null) {
                    EmployeeDTO dto = (EmployeeDTO) session.getAttribute("loginInfo");
                    if (dto != null) {
                        logger.info("로그인 직원 idx >> " + dto.getIdx_employee());
                        return new Principal() {
                            @Override
                            public String getName() {
                                return String.valueOf(dto.getIdx_employee());
                            }
                        };
                    }
                }
                return null;
            }

            private HttpSession getSession(org.springframework.http.server.ServerHttpRequest request) {
                if (request instanceof org.springframework.http.server.ServletServerHttpRequest) {
                    return ((org.springframework.http.server.ServletServerHttpRequest) request)
                            .getServletRequest().getSession(false);
                }
                return null;
            }
        }).withSockJS()
        .setInterceptors(new HandshakeInterceptor() {
            @Override
            public boolean beforeHandshake(org.springframework.http.server.ServerHttpRequest request,
                                           org.springframework.http.server.ServerHttpResponse response,
                                           org.springframework.web.socket.WebSocketHandler wsHandler,
                                           Map<String, Object> attributes) throws Exception {
                HttpSession session = getSession(request);
                if (session != null) {
                    EmployeeDTO dto = (EmployeeDTO) session.getAttribute("loginInfo");
                    if (dto != null) {
                        logger.info("로그인 직원 idx >> " + dto.getIdx_employee());
                        attributes.put("EMPLOYEE_ID", dto.getIdx_employee());
                        logger.info("세션에 저장된 로그인 직원 idx >> " + attributes.get("EMPLOYEE_ID"));
                    }
                } else {
                    logger.warn("HTTP 세션이 null입니다.");
                }
                return true;
            }

            @Override
            public void afterHandshake(org.springframework.http.server.ServerHttpRequest request,
                                       org.springframework.http.server.ServerHttpResponse response,
                                       org.springframework.web.socket.WebSocketHandler wsHandler, Exception ex) {
                // No-op
            }

            private HttpSession getSession(org.springframework.http.server.ServerHttpRequest request) {
                if (request instanceof org.springframework.http.server.ServletServerHttpRequest) {
                    return ((org.springframework.http.server.ServletServerHttpRequest) request)
                            .getServletRequest().getSession(false);
                }
                return null;
            }
        });
    }
    
}