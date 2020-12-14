<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.cj.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/ad";%>
<%!String user = "root";%>
<%!String psw = "Tan13#99";%>
<%

String first_name=request.getParameter("first_name");
String last_name=request.getParameter("last_name");
String phone=request.getParameter("phone");
String email = request.getParameter("email");
String password=request.getParameter("password");
if(email != null)
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update registration set first_name=?,last_name=?,phone=?,email=?,password=? where email='"+email+"'";


ps = con.prepareStatement(sql);

ps.setString(1, first_name);
ps.setString(2, last_name);
ps.setString(3, phone);
ps.setString(4, email);
ps.setString(5, password);



int i = ps.executeUpdate();
if(i > 0)
{
response.sendRedirect("loginsuccess.jsp");
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