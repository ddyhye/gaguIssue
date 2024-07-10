package ko.gagu.issue.service;

import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

import javax.mail.BodyPart;
import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Store;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeUtility;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.InputStreamSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import ko.gagu.issue.config.MailConfig;
import ko.gagu.issue.dao.MailDAO;
import ko.gagu.issue.dto.MailDTO;
import ko.gagu.issue.util.MailUtil;

@Service
public class MailService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	private final MailDAO mailDao;
	private final JavaMailSender emailSender;
	private final MailConfig mailConfig;
	private final MailUtil mailUtil;
	
	@Autowired
	public MailService(MailDAO mailDao, JavaMailSender emailSender, MailConfig mailConfig,MailUtil mailUtil) {
	    this.mailDao = mailDao;
	    this.emailSender = emailSender;
	    this.mailConfig=mailConfig;
	    this.mailUtil = mailUtil;
	}

	public void sendMail(MailDTO mailDto, MultipartFile[] files) throws MessagingException {
	    MimeMessage message = emailSender.createMimeMessage();
	    MimeMessageHelper helper = new MimeMessageHelper(message, true);

	    // 메일 제목 설정
	    helper.setSubject(mailDto.getTitle());

	    // 참조자 설정
	    helper.setCc(mailDto.getCcAddress());
	    helper.setText(mailDto.getContent(), false);
	    helper.setFrom(mailDto.getFrom());

	    // 첨부파일 설정
	    for (MultipartFile file : files) {
	        if (!file.isEmpty()) {
	            String fileName = StringUtils.cleanPath(file.getOriginalFilename());
	            try {
	                String encodedFileName = MimeUtility.encodeText(fileName, "UTF-8", "B");
	                InputStreamSource attachmentSource = new ByteArrayResource(file.getInputStream().readAllBytes());
	                helper.addAttachment(encodedFileName, attachmentSource);
	            } catch (MessagingException | IOException e) {
	                // 에러 처리
	                e.printStackTrace();
	            }
	        }
	    }

	    // 수신자 한번에 전송
	    helper.setTo(mailDto.getAddress());
	    emailSender.send(message);
	}
	public void saveMail(MailDTO mailDto, MultipartFile[] files, int idx_employee) {
		
		
		mailDao.saveMail(mailDto,idx_employee);
//		// 첨부 파일 저장
//	    for (MultipartFile file : files) {
//	        if (!file.isEmpty()) {
//	            String fileName = StringUtils.cleanPath(file.getOriginalFilename());
//	            try {
//	                mailDao.saveAttachment(mailId, fileName);
//	            } catch (Exception e) {
//	                e.printStackTrace();
//	            }
//	        }
//	    }
	}
	
//	public List<MailDTO> receiveMails() {
//        List<MailDTO> mailList = new ArrayList<>();
//
//        if (mailConfig == null) {
//            logger.error("MailConfig is null. Check the configuration.");
//            return mailList;  
//        }
//
//        Properties properties = new Properties();
//        properties.put("mail.store.protocol", mailConfig.getStoreProtocol());
//        properties.put("mail.imap.host", mailConfig.getHost());
//        properties.put("mail.imap.port", mailConfig.getPort());
//        properties.put("mail.imap.auth", mailConfig.isAuth());
//        properties.put("mail.imap.starttls.enable", mailConfig.isStarttlsEnable());
//        properties.put("mail.imap.ssl.enable", mailConfig.isSslEnable());
//
//        Session emailSession = null;
//        Store store = null;
//        Folder emailFolder = null;
//
//        try {
//            emailSession = Session.getDefaultInstance(properties);
//            store = emailSession.getStore(mailConfig.getStoreProtocol());
//            store.connect(mailConfig.getHost(), mailConfig.getUsername(), mailConfig.getPassword());
//
//            emailFolder = store.getFolder("INBOX");
//            emailFolder.open(Folder.READ_ONLY);
//
//            Message[] messages = emailFolder.getMessages();
//            logger.info("message size1 : {}", messages.length);
//            
//            int start = Math.max(0, messages.length - 100); // [il] 최근 100개로 제한
//            for (int i = start; i < messages.length; i++) {
//                Message message = messages[i];
//                MailDTO mailDto = new MailDTO();
//                mailDto.setSe_title(message.getSubject());
//                mailDto.set (message.getFrom()[0].toString());
//                
//                // [il] 0702 바뀐부분 
//                Object content = message.getContent();
//                if (content instanceof String) {
//                    mailDto.setSe_description(content.toString());
//                } else if (content instanceof Multipart) {
//                    mailDto.setSe_description(mailUtil.getTextFromMimeMultipart((Multipart) message.getContent()));
//                }
//                
//                mailList.add(mailDto);
//            }
//            
//            logger.info("Mail Receive Complete, mailList Size : {}", mailList.size());
//        } catch (MessagingException | IOException e) {
//            logger.error("Error receiving emails", e);
//            
//            throw new RuntimeException("Failed to receive emails", e);
//        } finally {
//            try {
//                if (emailFolder != null) {
//                    emailFolder.close(true);
//                }
//                if (store != null) {
//                    store.close();
//                }
//            } catch (MessagingException e) {
//                logger.error("Error closing email resources", e);
//            }
//        }
//
//        return mailList;
//    }

	
	

}
