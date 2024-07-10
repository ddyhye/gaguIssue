//package ko.gagu.issue.service;
//
//import java.io.IOException;
//import java.util.ArrayList;
//import java.util.List;
//import java.util.Properties;
//
//import javax.mail.BodyPart;
//import javax.mail.Folder;
//import javax.mail.Message;
//import javax.mail.MessagingException;
//import javax.mail.NoSuchProviderException;
//import javax.mail.Session;
//import javax.mail.Store;
//import javax.mail.internet.MimeMultipart;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.stereotype.Component;
//
//import ko.gagu.issue.dto.MailDTO;
//
//@Component
//public class MailReceiver {
//	
//	private static final Logger logger = LoggerFactory.getLogger(MailReceiver.class);
//
//    public List<MailDTO> receiveEmails(String host, String username, String password) {
//        List<MailDTO> mailList = new ArrayList<>();
//        Properties properties = new Properties();
//        properties.put("mail.store.protocol", "imaps");
//        properties.put("mail.imaps.host", host);
//        properties.put("mail.imaps.port", "993");
//        properties.put("mail.imaps.ssl.enable", "true");
//
//        Session emailSession = null;
//        Store store = null;
//        Folder emailFolder = null;
//
//        try {
//            emailSession = Session.getDefaultInstance(properties);
//            store = emailSession.getStore("imaps");
//            store.connect(host, username, password);
//
//            emailFolder = store.getFolder("INBOX");
//            emailFolder.open(Folder.READ_ONLY);
//
//            Message[] messages = emailFolder.getMessages();
//            for (Message message : messages) {
//                MailDTO mailDto = new MailDTO();
////                mailDto.setSe_title(message.getSubject());
////                mailDto.setSe_recipient(message.getFrom()[0].toString());
////                mailDto.setSe_description(getTextFromMessage(message));
//                mailList.add(mailDto);
//            }
//        } catch (MessagingException | IOException e) {
//            logger.error("Error receiving emails", e);
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
//
//    private String getTextFromMessage(Message message) throws IOException, MessagingException {
//        String result = "";
//        if (message.isMimeType("text/plain")) {
//            result = message.getContent().toString();
//        } else if (message.isMimeType("multipart/*")) {
//            MimeMultipart mimeMultipart = (MimeMultipart) message.getContent();
//            result = getTextFromMimeMultipart(mimeMultipart);
//        }
//        return result;
//    }
//
//    private String getTextFromMimeMultipart(MimeMultipart mimeMultipart) throws IOException, MessagingException {
//        StringBuilder result = new StringBuilder();
//        int count = mimeMultipart.getCount();
//        for (int i = 0; i < count; i++) {
//            BodyPart bodyPart = mimeMultipart.getBodyPart(i);
//            if (bodyPart.isMimeType("text/plain")) {
//                result.append(bodyPart.getContent().toString());
//            } else if (bodyPart.isMimeType("text/html")) {
//                String html = (String) bodyPart.getContent();
//                result.append(org.jsoup.Jsoup.parse(html).text());
//            } else if (bodyPart.getContent() instanceof MimeMultipart) {
//                result.append(getTextFromMimeMultipart((MimeMultipart) bodyPart.getContent()));
//            }
//        }
//        return result.toString();
//    }
//	
//
//}
