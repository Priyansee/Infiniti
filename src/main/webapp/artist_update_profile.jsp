<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.cj.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/demo";%>
<%!String user = "root";%>
<%!String psw = "abc123";%>
<%
String id = request.getParameter("id");
String name=request.getParameter("name");
String email=request.getParameter("email");
String password=request.getParameter("password");
String number=request.getParameter("number");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update artist_reg set id=?,name=?,email=?,password=?,number=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2,name);
ps.setString(3,email);
ps.setString(4,password);
ps.setString(5,number);
int i = ps.executeUpdate();
if(i > 0)
{
	response.sendRedirect("artist_profile.jsp");  
	out.print("changes saved successfully");
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
