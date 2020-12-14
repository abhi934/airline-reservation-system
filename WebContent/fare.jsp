<%@page import="java.sql.*"%>
<%
String email=request.getParameter("email");
int no_of_seats=Integer.parseInt(request.getParameter("no_of_seats"));
String type_of_seat =request.getParameter("type_of_seat");
String type_of_airline =request.getParameter("type_of_airline");
int amount_per_seat =Integer.parseInt(request.getParameter("amount_per_seat"));
int tot_amt=Integer.parseInt(request.getParameter("tot_amt"));



try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root","Tan13#99");
	Statement st=con.createStatement();
	st.executeUpdate("insert into fare(email,no_of_seats,type_of_seat,type_of_airline) values('"+email+"','"+no_of_seats+"','"+type_of_seat+"','"+type_of_airline+"')");	
	//response.sendRedirect("s.html");
	
	if(type_of_seat=="Economy Class" && type_of_airline=="IndoGo")
	{
		amount_per_seat=5000;
		tot_amt=amount_per_seat*no_of_seats;
		st.executeUpdate("insert into fare(amount_per_seat,tot_amt) values('"+amount_per_seat+"','"+tot_amt+"')");
	}
	
	if(type_of_seat=="Economy Class" && type_of_airline=="AirIndia")
	{
		amount_per_seat=10000;
		tot_amt=amount_per_seat*no_of_seats;
		st.executeUpdate("insert into fare(amount_per_seat,tot_amt) values('"+amount_per_seat+"','"+tot_amt+"')");
	}
	
	if(type_of_seat=="Economy Class" && type_of_airline=="SpaceJet")
	{
		amount_per_seat=7000;
		tot_amt=amount_per_seat*no_of_seats;
		st.executeUpdate("insert into fare(amount_per_seat,tot_amt) values('"+amount_per_seat+"','"+tot_amt+"')");
	}
	
	if(type_of_seat=="Business Class" && type_of_airline=="IndoGo")
	{
		amount_per_seat=6000;
		tot_amt=amount_per_seat*no_of_seats;
		st.executeUpdate("insert into fare(amount_per_seat,tot_amt) values('"+amount_per_seat+"','"+tot_amt+"')");
	}
	
	if(type_of_seat=="Business Class" && type_of_airline=="AirIndia")
	{
		amount_per_seat=11000;
		tot_amt=amount_per_seat*no_of_seats;
		st.executeUpdate("insert into fare(amount_per_seat,tot_amt) values('"+amount_per_seat+"','"+tot_amt+"')");
	}
	
	if(type_of_seat=="Business Class" && type_of_airline=="SpaceJet")
	{
		amount_per_seat=8000;
		tot_amt=amount_per_seat*no_of_seats;
		st.executeUpdate("insert into fare(amount_per_seat,tot_amt) values('"+amount_per_seat+"','"+tot_amt+"')");
	}
	
	if(type_of_seat=="First Class" && type_of_airline=="IndoGo")
	{
		amount_per_seat=8000;
		tot_amt=amount_per_seat*no_of_seats;
		st.executeUpdate("insert into fare(amount_per_seat,tot_amt) values('"+amount_per_seat+"','"+tot_amt+"')");
	}
	
	if(type_of_seat=="First Class" && type_of_airline=="AirIndia")
	{
		amount_per_seat=13000;
		tot_amt=amount_per_seat*no_of_seats;
		st.executeUpdate("insert into fare(amount_per_seat,tot_amt) values('"+amount_per_seat+"','"+tot_amt+"')");
	}
	
	if(type_of_seat=="First Class" && type_of_airline=="SpaceJet")
	{
		amount_per_seat=9000;
		tot_amt=amount_per_seat*no_of_seats;
		st.executeUpdate("insert into fare(amount_per_seat,tot_amt) values('"+amount_per_seat+"','"+tot_amt+"')");
	}
}

catch(Exception e)
{
	response.sendRedirect("e.html");
}

%>