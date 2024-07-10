package ko.gagu.issue.util;

import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
public class SessionUtil {
	private final Logger logger = LoggerFactory.getLogger(SessionUtil.class);
	
    public boolean isSessionExpired(HttpSession session) {
    	if (session == null) {
    		return true;
    	}
        // 세션의 생성 시간 (밀리초 단위)
        long creationTimeMillis = session.getCreationTime();
        LocalDateTime creationTime = LocalDateTime.ofInstant(Instant.ofEpochMilli(creationTimeMillis), ZoneId.systemDefault());

        // 세션의 최대 비활성화 간격 (초 단위)
        int maxInactiveIntervalSeconds = session.getMaxInactiveInterval();

        // 세션 만료 시간 계산
        LocalDateTime expirationTime = creationTime.plusSeconds(maxInactiveIntervalSeconds);

        // 현재 시간
        LocalDateTime now = LocalDateTime.now(ZoneId.systemDefault());
        logger.info("now.isAfter(expirationTime) : {}", now.isAfter(expirationTime));
        // 현재 시간이 세션 만료 시간을 지났는지 확인
        return now.isAfter(expirationTime);
    }
}
