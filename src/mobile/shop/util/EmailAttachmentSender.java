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
		String subject = "Mobile Innovation電子郵件驗證";
		String message = "歡迎造訪您的帳戶。 請登入以使用我們的線上服務。 請按一下以下連結確認您的電子郵件地址。 您必須先驗證完成，才能使用我們的線上服務，並確保您的帳戶安全。<a href=\"http://localhost:8080/Shop/from/user_save!usersave?username=" + username + "\">確認電子郵件地址</a>"; 
		String[] attachFiles = null;
		
		try {
			sendEmailWithAttachments(host, port, mailFrom, password, mailTo, subject, message, attachFiles);  
			System.out.println("郵件發送成功。");
		}
		catch (Exception ex) {
			System.out.println("郵件發送失敗！");
			ex.printStackTrace();
		}
	}
}