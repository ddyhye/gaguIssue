package ko.gagu.issue.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;
import org.springframework.web.socket.config.annotation.WebSocketMessageBrokerConfigurer;

@Configuration
@EnableWebSocketMessageBroker
public class WebSocketConfig implements WebSocketMessageBrokerConfigurer {

    @Override
    public void configureMessageBroker(MessageBrokerRegistry config) {
    	// 클라이언트가 메세지 구독 (수신)
        config.enableSimpleBroker("/topic", "/queue");
        // 클라이언트가 메세지 보낼때
        config.setApplicationDestinationPrefixes("/app");
        // 특정 사용자에게 메시지를 전송할 때 사용
        config.setUserDestinationPrefix("/user");
    }

    @Override
    public void registerStompEndpoints(StompEndpointRegistry registry) {
    	// WebSocket 엔드포인트 설정 
        registry.addEndpoint("/ws").withSockJS();
    }
}
