package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Daofile;

/**
 * Servlet implementation class user_login
 */
@WebServlet("/user_login")
public class user_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
	          
	    String n=request.getParameter("email");  
	    String p=request.getParameter("password");
	    String q=request.getParameter("name");
	    
	    if(Daofile.validate(n, p)){ 
	    	
	    	HttpSession session = request.getSession();
 	        session.setAttribute("User_mail",n);
	 	    session.setAttribute("Uname",q);
	    	
	    	  
	    	 RequestDispatcher reqd = request.getRequestDispatcher("user_index.jsp");
	         
	        
	         reqd.forward(request, response); 
	    	
	    	 
	        
	        
	    }  
	    else{  
	        out.print("Sorry username or password error");  
	        RequestDispatcher rd=request.getRequestDispatcher("register.html");  
	        rd.include(request,response);  
	    }  
	          
	    out.close();  
	    }  
	}  
