package ko.gagu.issue.util;

import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
public class SessionUtil {
	private final Logger logger = LoggerFactory.getLogger(SessionUtil.class);
	
	private final long inactiveInterval = 3600 * 1000L;
	
    public boolean isSessionExpired(HttpServletRequest request) {
    	if (request.getSession() == null || request.getCookies() == null) {
    		return true;
    	}
    	long expirationTimeMillis = 0;
    	
        // 세션의 생성 시간 (밀리초 단위)
    	Cookie[] cookies = request.getCookies();
    	for (Cookie cookie : cookies) {
    		if (cookie.getName().equals("sessionDeadTime")) {
    			expirationTimeMillis = Long.valueOf(cookie.getValue());
    		}
    	}
    	
        LocalDateTime expirationTime = LocalDateTime.ofInstant(Instant.ofEpochMilli(expirationTimeMillis), ZoneId.systemDefault());

        // 현재 시간
        LocalDateTime now = LocalDateTime.now(ZoneId.systemDefault());
        logger.info("세션 뒤짐? : {}", now.isAfter(expirationTime));
        // 현재 시간이 세션 만료 시간을 지났는지 확인
        return now.isAfter(expirationTime);
    }
    
    public long getExpirationTime(HttpSession session) {
    	long creationTime = session.getCreationTime();
		return creationTime + inactiveInterval;	
    }
}
