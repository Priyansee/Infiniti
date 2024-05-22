package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.RequestDispatcher;
/**
 * Servlet implementation class A_mail
 */
@WebServlet("/A_mail")
public class A_mail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A_mail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String toEmail = request.getParameter("email");
	        String subject = "Welcome to the Infinity.";
	        String body = """
	                    Dear Artist,

Welcome to Infiniti! We are excited to have you join our community of innovative bot artists.

At Infiniti, we provide a platform for you to showcase your unique digital artworks and connect with passionate art enthusiasts. Our goal is to support and celebrate your creativity, helping you reach a wider audience and sell your masterpieces.

To get started, log in to your account and begin uploading your artwork. Take advantage of our tools and resources to enhance your creative process and engage with our vibrant community.

If you have any questions or need assistance, our support team is here to help. Feel free to reach out to us.

Thank you for joining Infiniti. We look forward to seeing your incredible creations!

Best regards,

The Infiniti Team
[""";

	        final String username = "infinity.130104@gmail.com"; // your email
	        final String password = "pcjaenehvfqpsxen"; // your email password

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

	           PrintWriter out = response.getWriter();
	                 RequestDispatcher rd=request.getRequestDispatcher("artist_homepage.jsp");  
		        rd.include(request,response);

	        } catch (MessagingException e) {
	            throw new RuntimeException(e);
	        }
	    }
	}