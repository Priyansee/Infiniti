package controller;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class mailutility {
	 public static void sendEmail(String toEmail, String subject, String body) {
	        final String username = "infinity.130104@gmail.com"; // your email
	        final String password = "pcjaenehvfqpsxen"
	        		+ ""; // your email password

	        Properties props = new Properties();
	        props.put("mail.smtp.auth", "true");
	        props.put("mail.smtp.starttls.enable", "true");
	        props.put("mail.smtp.host", "smtp.gmail.com"); // or your SMTP server host
	        props.put("mail.smtp.port", "587"); // or your SMTP server port

	        Session session = Session.getInstance(props,
	                new javax.mail.Authenticator() {
	                    @Override
	                    protected PasswordAuthentication getPasswordAuthentication() {
	                        return new PasswordAuthentication(username, password);
	                    }
	                });

	        try {
	            Message message = new MimeMessage(session);
	            message.setFrom(new InternetAddress(username));
	            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
	            message.setSubject(subject);
	            message.setText(body);

	            Transport.send(message);

	            System.out.println("Email sent successfully");

	        } catch (MessagingException e) {
	            throw new RuntimeException(e);
	        }
	    }


	    
	}
	    

