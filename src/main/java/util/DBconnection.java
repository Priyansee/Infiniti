package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

// This class can be used to initialize the database connection

public class DBconnection {
public static Connection con;
public static Connection initializeDatabase()
throws SQLException, ClassNotFoundException

{
// Initialize all the information regarding
// Database Connection
String dbDriver = "com.mysql.cj.jdbc.Driver";
String dbURL = "jdbc:mysql://localhost:3306/";
// Database name to access
String dbName = "demo";
String dbUsername = "root";
String dbPassword = "abc123";

Class.forName(dbDriver);
con = DriverManager.getConnection(dbURL + dbName,
dbUsername,
dbPassword);
return con;
}
public static int insertUpdateFromSqlQuery(String SqlQueryString) {
        int i = 2;
        try {
       
            //Checking whether the connection is null or null
            if (con == null) {
            initializeDatabase();
            }
            //Querying the query
            i = con.createStatement().executeUpdate(SqlQueryString);

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return i;
    }
public static ResultSet getResultFromSqlQuery(String SqlQueryString) {
ResultSet rs = null;
       try {
           //Checking whether the connection is null or null
           if (con== null) {
            initializeDatabase();
           }
           //Querying the query
           rs = con.createStatement().executeQuery(SqlQueryString);
       } catch (Exception ex) {
           ex.printStackTrace();
       }
       return rs;
}
}