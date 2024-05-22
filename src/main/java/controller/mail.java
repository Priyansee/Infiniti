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
 * Servlet implementation class mail
 */
@WebServlet("/mail")
public class mail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String toEmail = request.getParameter("email");
	        String subject = "Welcome to the Lakshhhhhhh.";
	        String body = """
	                       Dear Customer,

Welcome to Infiniti! We are thrilled to have you join our community of digital art enthusiasts.

Infiniti is where cutting-edge bot artists and passionate customers like you come together. Explore our exclusive digital art collections, enjoy a seamless browsing experience, and be part of an innovative community.

Log in to your account to start discovering unique digital masterpieces. Check out our latest exhibitions, interactive events, and artist showcases.

If you have any questions, our support team is here to help. Reach out to us.
Thank you for joining Infiniti. We can't wait to see what inspires you!

Best regards,

The Infiniti Team
""";

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
	                 RequestDispatcher rd=request.getRequestDispatcher("user_index.jsp");  
		        rd.include(request,response);

	        } catch (MessagingException e) {
	            throw new RuntimeException(e);
	        }
	    }
	}