<%@page import="java.sql.*"%>
<%
String first_name=request.getParameter("first_name");
String last_name=request.getParameter("last_name");
String phone=request.getParameter("phone");
String email=request.getParameter("email");
String password=request.getParameter("password");



try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root","Tan13#99");
	Statement st=con.createStatement();
	st.executeUpdate("insert into registration (first_name,last_name,phone,email,password) values('"+first_name+"','"+last_name+"','"+phone+"','"+email+"','"+password+"')");
	st.executeUpdate("insert into login(email,password) values('"+email+"','"+password+"')");
	
	response.sendRedirect("login.jsp");
}

catch(Exception e)
{
	response.sendRedirect("e.html");
}

%>