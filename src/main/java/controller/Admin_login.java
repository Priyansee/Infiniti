package controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.DBconnection;

/**
 * Servlet implementation class Admin_login
 */
@WebServlet("/Admin_login")
public class Admin_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			//Getting all data from user/customer
	        String username= request.getParameter("username");
	        String password = request.getParameter("Password");
	        //Creating Session
	        HttpSession hs = request.getSession();
	        try {
	            //Creating Resultset
	            ResultSet resultset = null;
	            //Query to check Login Details
	            resultset = DBconnection.getResultFromSqlQuery("select * from admin where username='" + username + "' AND password='" + password+ "'");
	            //Checking whether the details of user are null or not
	         
	                if (resultset.next()) {
	                    //Storing the login details in session
	                    //hs.setAttribute("id", resultset.getInt("id"));
	                    hs.setAttribute("uname", resultset.getString("username"));
	                    //Redirecting response to the index.jsp
	                    response.sendRedirect("Admin_homepage.jsp");
	                } else {
	                    //If wrong credentials are entered
	                    String message = "You have enter wrong credentials";
	                    hs.setAttribute("credential", message);
	                    //Redirecting response to the customer-login.jsp
	                    response.sendRedirect("admin_login.jsp");
	                }
	           

	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }

		

	}
