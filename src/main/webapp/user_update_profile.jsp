<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.cj.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/demo";%>
<%!String user = "root";%>
<%!String psw = "abc123";%>
<%
String uid = request.getParameter("uid");
String name=request.getParameter("name");
String email=request.getParameter("email");
String password=request.getParameter("password");
String number=request.getParameter("num");
String address=request.getParameter("address");
String date=request.getParameter("added_date");
String gender=request.getParameter("gender");
String pin_code=request.getParameter("pin_code");
if(uid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(uid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update reg set uid=?,name=?,email=?,password=?,num=? where uid="+uid;
ps = con.prepareStatement(sql);
ps.setString(1,uid);
ps.setString(2,name);
ps.setString(3,email);
ps.setString(4,password);
ps.setString(5,number);
ps.setString(6,address);
ps.setString(7,date);
ps.setString(8,gender);
ps.setString(9,pin_code);
int i = ps.executeUpdate();
if(i > 0)
{
	response.sendRedirect("Profile.jsp");  
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

