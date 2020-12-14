<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "ad";
String userid = "root";
String password = "Tan13#99";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>



<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Bootstrap_Project</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Acme&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Acme&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@400;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
<body>
<div class="container">
  <div class="text-center">
    <h1>Who Registered in your System</h1>
  </div>
</div>


<div class="container">
  <div class="jumbotron">

        <div class="row  text-center">
    <div class="col-lg-3 col-2 px-0">

      <h2>FirstName</h2><br>
      <hr style="background:#000;"><br>
        <%
        try{
        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
        statement=connection.createStatement();
        String sql ="select * from registration";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
        %>
      <h4><%=resultSet.getString("first_name") %></h4><br>
      <%
      }
      connection.close();
      } catch (Exception e) {
      e.printStackTrace();
      }
      %>

    </div>
    <div class="col-lg-3 col-2 px-0">

      <h2>LastName</h2><br>
        <hr style="background:#000;"><br>
        <%
        try{
        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
        statement=connection.createStatement();
        String sql ="select * from registration";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
        %>
      <h4><%=resultSet.getString("last_name") %></h4><br>
      <%
      }
      connection.close();
      } catch (Exception e) {
      e.printStackTrace();
      }
      %>


    </div>
    <div class="col-lg-3 col-2 px-0">

        <h2>Phone</h2><br>
        <hr style="background:#000;"><br>
        <%
        try{
        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
        statement=connection.createStatement();
        String sql ="select * from registration";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
        %>
          <h4>  <td><%=resultSet.getString("phone") %></td></h4><br>
      <%
      }
      connection.close();
      } catch (Exception e) {
      e.printStackTrace();
      }
      %>


    </div>
    <div class="col-lg-3 col-2 px-0">

      <h2>Email</h2><br>
        <hr style="background:#000;"><br>
        <%
        try{
        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
        statement=connection.createStatement();
        String sql ="select * from registration";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
        %>
        <h4> <%=resultSet.getString("email") %></h4><br>
      <%
      }
      connection.close();
      } catch (Exception e) {
      e.printStackTrace();
      }
      %>


    </div>




      </div>

      </div>
</div>



<div class="container">
  <div class="text-center">
    <h1>People who booked flights</h1>
  </div>
</div>


<div class="container">
  <div class="jumbotron">

        <div class="row  text-center">
    <div class="col-lg-1 col-2 px-0">

      <h2>From</h2><br>
      <hr style="background:#000;"><br>
        <%
        try{
        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
        statement=connection.createStatement();
        String sql ="select * from flight";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
        %>
      <h4><%=resultSet.getString("frm") %></h4><br>
      <%
      }
      connection.close();
      } catch (Exception e) {
      e.printStackTrace();
      }
      %>

    </div>
    <div class="col-lg-1 col-2 px-0">

      <h2>To</h2><br>
        <hr style="background:#000;"><br>
        <%
        try{
        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
        statement=connection.createStatement();
          String sql ="select * from flight";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
        %>
      <h4><%=resultSet.getString("t") %></h4><br>
      <%
      }
      connection.close();
      } catch (Exception e) {
      e.printStackTrace();
      }
      %>


    </div>
    <div class="col-lg-3 col-2 px-0">

        <h2>Departure Date</h2><br>
        <hr style="background:#000;"><br>
        <%
        try{
        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
        statement=connection.createStatement();
          String sql ="select * from flight";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
        %>
          <h4><%=resultSet.getString("departure_date") %> </h4><br>
      <%
      }
      connection.close();
      } catch (Exception e) {
      e.printStackTrace();
      }
      %>


    </div>
    <div class="col-lg-3 col-2 px-0">

      <h2>Departure Time</h2><br>
        <hr style="background:#000;"><br>
        <%
        try{
        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
        statement=connection.createStatement();
          String sql ="select * from flight";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
        %>
        <h4> <%=resultSet.getString("departure_time") %></h4><br>
      <%
      }
      connection.close();
      } catch (Exception e) {
      e.printStackTrace();
      }
      %>


    </div>
    <div class="col-lg-1 col-2 px-0">

      <h2>Airline</h2><br>
        <hr style="background:#000;"><br>
        <%
        try{
        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
        statement=connection.createStatement();
          String sql ="select * from flight";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
        %>
        <h4> <%=resultSet.getString("type_of_airline") %></h4><br>
      <%
      }
      connection.close();
      } catch (Exception e) {
      e.printStackTrace();
      }
      %>


    </div>
    <div class="col-lg-1 col-2 px-0">

      <h2>Seats</h2><br>
        <hr style="background:#000;"><br>
        <%
        try{
        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
        statement=connection.createStatement();
          String sql ="select * from flight";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
        %>
        <h4> <%=resultSet.getString("no_of_seats") %></h4><br>
      <%
      }
      connection.close();
      } catch (Exception e) {
      e.printStackTrace();
      }
      %>


    </div>
    <div class="col-lg-2 col-2 px-0">

      <h2>Type</h2><br>
        <hr style="background:#000;"><br>
        <%
        try{
        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
        statement=connection.createStatement();
          String sql ="select * from flight";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
        %>
        <h4> <%=resultSet.getString("type_of_seat") %></h4><br>
      <%
      }
      connection.close();
      } catch (Exception e) {
      e.printStackTrace();
      }
      %>


    </div>

	<form>
				<input class="btn btn-warning" type="button" value="Print your Ticket" onClick="window.print()">
	</form>


      </div>

      </div>
</div>





<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>