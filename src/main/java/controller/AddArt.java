package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.DBconnection;

import java.io.File;

import java.util.List;
import java.util.Random;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
/**
 * Servlet implementation class AddArt
 */
@WebServlet("/AddArt")
public class AddArt extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String UPLOAD_DIRECTORY = "C:\\Users\\priya\\eclipse-workspace\\project\\src\\main\\webapp\\upload";

    public AddArt() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// Creating session
		HttpSession session = request.getSession();
		if (ServletFileUpload.isMultipartContent(request)) {
			try {
				// Taking all image requests
				List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
				String art_name = null;
				String productName = null;
				String productQuantity = null;
				String productPrice = null;
				String descrip = null;
				String mrpPrice = null;
				String status = null;
				String category = null;
				String aname = null;
				// SALTCHARS to generate unique code for product
				String SALTCHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
				StringBuilder salt = new StringBuilder();
				Random rnd = new Random();
				while (salt.length() < 3) { // length of the random string.
					int index = (int) (rnd.nextFloat() * SALTCHARS.length());
					salt.append(SALTCHARS.charAt(index));
				}
				String code = salt.toString();

				for (FileItem item : multiparts) {
					if (!item.isFormField()) {
						// Getting image name
						art_name = new File(item.getName()).getName();
						// Storing in the specified directory
						item.write(new File(UPLOAD_DIRECTORY + File.separator + art_name));

						// Retriving all information from frontend
						FileItem pName = (FileItem) multiparts.get(0);
						productName = pName.getString();

						FileItem price = (FileItem) multiparts.get(1);
						productPrice = price.getString();

						FileItem description = (FileItem) multiparts.get(2);
						descrip = description.getString();

						FileItem mprice = (FileItem) multiparts.get(3);
						mrpPrice = mprice.getString();

						FileItem fstatus = (FileItem) multiparts.get(4);
						status = fstatus.getString();

						FileItem pcategory = (FileItem) multiparts.get(5);
						category = pcategory.getString();

						FileItem aaname = (FileItem) multiparts.get(6);
						aname = aaname.getString();

					}
				}
				try {
					int id = 0;
					String imagePath = UPLOAD_DIRECTORY + art_name;
					// Querying to insert product in the table
					int i = DBconnection.insertUpdateFromSqlQuery(
							"insert into tblproduct(id,active,code,description,image,art_name,artist_name,price,mrp_price,art_category,aname) values('"
									+ id + "','" + aname + "','" + code + "','" +  status+ "','" + imagePath + "','"
									+ productName+ "','" + productPrice + "','" + descrip + "','" + mrpPrice + "','"
									+ category + "','" + art_name  + "')");
					// If product inserted sucessfully in the database
					if (i > 0) {
						String success = "Art added successfully.";
						// Adding method in session.
						session.setAttribute("message", success);
						// Response send to the admin-add-product.jsp
						response.sendRedirect("artist_homepage.jsp");
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			} catch (Exception ex) {
				// If any occur occured
				request.setAttribute("message", "File Upload Failed due to " + ex);
			}
		} else {
			request.setAttribute("message", "Sorry this Servlet only handles file upload request");
		}
	}
}