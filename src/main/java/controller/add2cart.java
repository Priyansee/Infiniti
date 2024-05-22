package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.DBconnection;

/**
 * Servlet implementation class add2cart
 */
@WebServlet("/add2cart")
public class add2cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public add2cart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				 int id = 0;

			        //Getting all the parameters from the user
			        int productId = Integer.parseInt(request.getParameter("productId"));
			        String art_name = request.getParameter("art_name");
			        String mrp_price = request.getParameter("price");
			        
			        
			        HttpSession hs = request.getSession();
			       // String customerId = (String) hs.getAttribute("Uname");
			        try {
			            //If user session is null user have to re-login
			            if ((String) hs.getAttribute("User_mail") == null) {//session of user mail
			                response.sendRedirect("User_login.jsp");
			                //Inserting cart details to the database
			            } else {
			                String customerId = (String) hs.getAttribute("User_mail");
			                //Querying to the database.
			                int addToCart = DBconnection.insertUpdateFromSqlQuery("insert into cart values('" + id + "','" + art_name + "',1,'" + mrp_price  + "','" + customerId + "','" + productId + "','" + mrp_price + "')");
			                if (addToCart > 0) {
			                    response.sendRedirect("Portfolio.jsp");
			                }
			            }

			        } catch (Exception e) {
			            e.printStackTrace();
			        
			    }
			}


			

		}
