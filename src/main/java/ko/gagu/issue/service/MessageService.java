package ko.gagu.issue.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ko.gagu.issue.dao.MessageDAO;

@Service
public class MessageService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired MessageDAO messageDAO;
	
	
}
