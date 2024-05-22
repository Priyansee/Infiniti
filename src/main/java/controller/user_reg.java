package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.DBconnection;

/**
 * Servlet implementation class user_reg
 */
@WebServlet("/user_reg")
public class user_reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public user_reg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {

			// TODO Auto-generated method stub

			// Initialize the database
			Connection con = DBconnection.initializeDatabase();
			
			 

			// Create a SQL query to insert data into demo table
			// demo table consists of two columns, so two '?' is used
			PreparedStatement st = con.prepareStatement("insert into reg values(?,?,?,?,?,?,?,?,?)");

			// For the first parameter,
			// get the data using request object
			// sets the data to st pointer

			// Same for second parameter
			int uid = 0;
			st.setInt(1,uid);
			//st.setString(2, request.getParameter("id"));
			st.setString(2, request.getParameter("name"));
			st.setString(3, request.getParameter("email"));
			st.setString(4, request.getParameter("num"));
			st.setString(5, request.getParameter("address"));
			st.setString(6, request.getParameter("password"));
			st.setString(7, request.getParameter("added_date"));
			st.setString(8, request.getParameter("gender"));
			st.setString(9, request.getParameter("pin_code"));
			
			

			//st.setString(8, request.getParameter("password")); // Execute the insert command using executeUpdate()
			// to make changes in database
			st.executeUpdate();

			// Close all the connections
			st.close();
			con.close();



			// Get a writer pointer
			// to display the successful result
			PrintWriter out = response.getWriter();
			RequestDispatcher rd=request.getRequestDispatcher("mail");  
			rd.forward(request, response);
			}
			catch (Exception e) {
			e.printStackTrace();
			}
			
		}
	}

