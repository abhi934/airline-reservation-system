<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "ad";
String userid = "root";
String password = "Tan13#99";
String email=request.getParameter("em");
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
    <meta charset="ISO-8859-1">
    <title>SATS AIRLINES</title>
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

<style media="screen">
    .logo{
    height: 50px;
    }
   </style>

<nav class="navbar navbar-expand-md navbar-light sticky-top bg-light">
      <div class="container-fluid">
        <a href="loginsuccess.jsp" class="navbar-brand"><img class="logo" src="https://www.webdesignerdepot.com/cdn-origin/uploads/2009/03/aeromexico.gif" alt=""></a>
        <button type="button" class="navbar-toggler" data-toggle="collapse" name="button" data-target="#navbarResponsive"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto" >
            
            
          </ul>
        </div>
      </div>
    </nav>
<div class="container text-center">

<h1>Fare Details</h1>
<table border="1">
<tr>
<td>Email</td>
<td>Number of seats</td>
<td>Type of seat</td>
<td>Type of airline</td>
<td>Amount per seat</td>
<td>Total amount</td>
</tr>

</div>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from fare where em='"+email+"' ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<div class="container text-center" >
<tr>
<td><%=resultSet.getString("em") %></td>
<td><%=resultSet.getString("no_of_seats") %></td>
<td><%=resultSet.getString("type_of_seat") %></td>
<td><%=resultSet.getString("type_of_airline") %></td>
<td><%=resultSet.getString("amount_per_seat") %></td>
<td><%=resultSet.getString("tot_amt") %></td>
</tr>

</div>

	
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<p></p>
<p></p>
<a href="loginsuccess.jsp">
<button class="btn btn-primary">
Back To Home
</button>

</a>
</body>
</html>