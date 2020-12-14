<%@page import="java.sql.*"%>
<%
String frm=request.getParameter("frm");
String t=request.getParameter("t");
String departure_date =request.getParameter("departure_date");
String departure_time =request.getParameter("departure_time");
int no_of_seats =Integer.parseInt(request.getParameter("no_of_seats"));
String type_of_airline =request.getParameter("type_of_airline");
String type_of_seat=request.getParameter("type_of_seat");
String message =request.getParameter("message");
String em=request.getParameter("em");



try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root","Tan13#99");
	Statement st=con.createStatement();
	st.executeUpdate("insert into flight (frm,t,departure_date,departure_time,no_of_seats,type_of_airline,type_of_seat,message,em) values('"+frm+"','"+t+"','"+departure_date+"','"+departure_time+"','"+no_of_seats+"','"+type_of_airline+"','"+type_of_seat+"','"+message+"','"+em+"')");	
	
	
	if(type_of_seat.equals("Economy Class") && type_of_airline.equals("IndoGo"))
	{
		int amount_per_seat=5000;
		int tot_amt=amount_per_seat*no_of_seats;
		st.executeUpdate("insert into fare(em,no_of_seats,type_of_seat,type_of_airline,amount_per_seat,tot_amt) values('"+em+"','"+no_of_seats+"','"+type_of_seat+"','"+type_of_airline+"','"+amount_per_seat+"','"+tot_amt+"')");
		
	}
	
	else if(type_of_seat.equals("Economy Class") && type_of_airline.equals("AirIndia"))
	{
		int amount_per_seat=10000;
		int tot_amt=amount_per_seat*no_of_seats;
		st.executeUpdate("insert into fare(em,no_of_seats,type_of_seat,type_of_airline,amount_per_seat,tot_amt) values('"+em+"','"+no_of_seats+"','"+type_of_seat+"','"+type_of_airline+"','"+amount_per_seat+"','"+tot_amt+"')");
	}
	
	else if(type_of_seat.equals("Economy Class") && type_of_airline.equals("SpaceJet"))
	{
		int amount_per_seat=7000;
		int tot_amt=amount_per_seat*no_of_seats;
		st.executeUpdate("insert into fare(em,no_of_seats,type_of_seat,type_of_airline,amount_per_seat,tot_amt) values('"+em+"','"+no_of_seats+"','"+type_of_seat+"','"+type_of_airline+"','"+amount_per_seat+"','"+tot_amt+"')");
	}
	
	else if(type_of_seat.equals("Business Class") && type_of_airline.equals("IndoGo"))
	{
		int amount_per_seat=6000;
		int tot_amt=amount_per_seat*no_of_seats;
		st.executeUpdate("insert into fare(em,no_of_seats,type_of_seat,type_of_airline,amount_per_seat,tot_amt) values('"+em+"','"+no_of_seats+"','"+type_of_seat+"','"+type_of_airline+"','"+amount_per_seat+"','"+tot_amt+"')");
	}
	
	else if(type_of_seat.equals("Business Class") && type_of_airline.equals("AirIndia"))
	{
		int amount_per_seat=11000;
		int tot_amt=amount_per_seat*no_of_seats;
		st.executeUpdate("insert into fare(em,no_of_seats,type_of_seat,type_of_airline,amount_per_seat,tot_amt) values('"+em+"','"+no_of_seats+"','"+type_of_seat+"','"+type_of_airline+"','"+amount_per_seat+"','"+tot_amt+"')");
	}
	
	else if(type_of_seat.equals("Business Class") && type_of_airline.equals("SpaceJet"))
	{
		int amount_per_seat=8000;
		int tot_amt=amount_per_seat*no_of_seats;
		st.executeUpdate("insert into fare(em,no_of_seats,type_of_seat,type_of_airline,amount_per_seat,tot_amt) values('"+em+"','"+no_of_seats+"','"+type_of_seat+"','"+type_of_airline+"','"+amount_per_seat+"','"+tot_amt+"')");
	}
	
	else if(type_of_seat.equals("First Class") && type_of_airline.equals("IndoGo"))
	{
		int amount_per_seat=8000;
		int tot_amt=amount_per_seat*no_of_seats;
		st.executeUpdate("insert into fare(em,no_of_seats,type_of_seat,type_of_airline,amount_per_seat,tot_amt) values('"+em+"','"+no_of_seats+"','"+type_of_seat+"','"+type_of_airline+"','"+amount_per_seat+"','"+tot_amt+"')");
	}
	
	else if(type_of_seat.equals("First Class") && type_of_airline.equals("AirIndia"))
	{
		int amount_per_seat=13000;
		int tot_amt=amount_per_seat*no_of_seats;
		st.executeUpdate("insert into fare(em,no_of_seats,type_of_seat,type_of_airline,amount_per_seat,tot_amt) values('"+em+"','"+no_of_seats+"','"+type_of_seat+"','"+type_of_airline+"','"+amount_per_seat+"','"+tot_amt+"')");
	}
	
	else if(type_of_seat.equals("First Class") && type_of_airline.equals("SpaceJet"))
	{
		int amount_per_seat=9000;
		int tot_amt=amount_per_seat*no_of_seats;
		st.executeUpdate("insert into fare(em,no_of_seats,type_of_seat,type_of_airline,amount_per_seat,tot_amt) values('"+em+"','"+no_of_seats+"','"+type_of_seat+"','"+type_of_airline+"','"+amount_per_seat+"','"+tot_amt+"')");
	}
	
	response.sendRedirect("index.html");
}

catch(Exception e)
{
	response.sendRedirect("e.html");
}

%>