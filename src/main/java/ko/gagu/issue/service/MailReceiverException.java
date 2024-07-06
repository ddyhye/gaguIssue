package ko.gagu.issue.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
public class MailReceiverException {
	private static final Logger logger= LoggerFactory.getLogger(MailReceiverException.class);
	
	public void handleMailReceiverException(Exception e) {
		logger.info("메일 받는 것에서 에러가 났습니다ㅠㅠ : {}",e.getMessage());
	}
	
}
