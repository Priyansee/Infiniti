<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<%
String uid=request.getParameter("uid");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "abc123");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM reg WHERE uid="+uid);
out.println("Data Deleted Successfully!");
response.sendRedirect("User_login.jsp");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>