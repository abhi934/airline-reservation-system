<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String em=request.getParameter("em");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ad", "root", "Tan13#99");
Statement st=conn.createStatement();
st.executeUpdate("DELETE FROM fare WHERE em='"+em+"'");
st.executeUpdate("DELETE FROM flight WHERE em='"+em+"'");
out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>