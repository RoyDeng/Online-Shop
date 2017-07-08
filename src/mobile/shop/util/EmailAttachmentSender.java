package mobile.shop.util;

import java.io.IOException;   
import java.util.Date;   
import java.util.Properties;   
    
import javax.mail.Authenticator;   
import javax.mail.Message;   
import javax.mail.MessagingException;   
import javax.mail.Multipart;   
import javax.mail.PasswordAuthentication;   
import javax.mail.Session;   
import javax.mail.Transport;   
import javax.mail.internet.AddressException;   
import javax.mail.internet.InternetAddress;   
import javax.mail.internet.MimeBodyPart;   
import javax.mail.internet.MimeMessage;   
import javax.mail.internet.MimeMultipart;   

public class EmailAttachmentSender {
	public static void sendEmailWithAttachments(String host, String port, final String userName, final String password, String toAddress,  String subject, String message, String[] attachFiles) throws AddressException, MessagingException {  
		Properties properties = new Properties();
		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port", port);
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.user", userName);
		properties.put("mail.password", password);
		
		Authenticator auth = new Authenticator() {
			public PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(userName, password);
			}
		};
		
		Session session = Session.getInstance(properties, auth);
		Message msg = new MimeMessage(session);
		msg.setFrom(new InternetAddress(userName));
		InternetAddress[] toAddresses = { new InternetAddress(toAddress) };
		msg.setRecipients(Message.RecipientType.TO, toAddresses);
		msg.setSubject(subject);
		msg.setSentDate(new Date());
		MimeBodyPart messageBodyPart = new MimeBodyPart();
		messageBodyPart.setContent(message, "text/html;charset=UTF-8");
		Multipart multipart = new MimeMultipart();
		multipart.addBodyPart(messageBodyPart);
		
		if (attachFiles != null && attachFiles.length > 0) {
			for (String filePath : attachFiles) {
				MimeBodyPart attachPart = new MimeBodyPart();
				
				try {
					attachPart.attachFile(filePath);
				}
				catch (IOException ex) {
					ex.printStackTrace();
				}
				
				multipart.addBodyPart(attachPart);
			}
		}
		
		msg.setContent(multipart);
		Transport.send(msg);
	}
	public void send(String toMail , String username) {
		String host = "localhost";
		String port = "25";
		String mailFrom = "s10344140@cucu.edu.tw";
		String password = "";
		String mailTo = toMail;
		String subject = "Mobile Innovation�q�l�l������";
		String message = "�w��y�X�z���b��C �еn�J�H�ϥΧڭ̪��u�W�A�ȡC �Ы��@�U�H�U�s���T�{�z���q�l�l��a�}�C �z���������ҧ����A�~��ϥΧڭ̪��u�W�A�ȡA�ýT�O�z���b��w���C<a href=\"http://localhost:8080/Shop/from/user_save!usersave?username=" + username + "\">�T�{�q�l�l��a�}</a>"; 
		String[] attachFiles = null;
		
		try {
			sendEmailWithAttachments(host, port, mailFrom, password, mailTo, subject, message, attachFiles);  
			System.out.println("�l��o�e���\�C");
		}
		catch (Exception ex) {
			System.out.println("�l��o�e���ѡI");
			ex.printStackTrace();
		}
	}
}