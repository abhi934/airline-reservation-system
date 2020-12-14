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
String phoneNo=request.getParameter("phone");
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
    <title>Welcome to AeroMexico</title>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
  <div class="container">
    <div class="text-center">
      <h1> <b>TICKET DETAILS</b> </h1>
    </div>
  </div>

  <div class="container">
    <div class="jumbotron">

          <div class="row  text-center">
      <div class="col-lg-3 col-2 px-0">

        <h4>FirstName</h4>
        
          <%
          try{
          connection = DriverManager.getConnection(connectionUrl+database, userid, password);
          statement=connection.createStatement();
      String sql1 ="select * from registration where phone='"+phoneNo+"' ";
          resultSet = statement.executeQuery(sql1);
          while(resultSet.next()){
          %>
        <h6><%=resultSet.getString("first_name") %></h6><br>
        <hr style="background:#000;">
        <%
        }
        connection.close();
        } catch (Exception e) {
        e.printStackTrace();
        }
        %>
        </div>
        <div class="col-lg-3 col-2 px-0">

          <h4>LastName</h4>
          
            <%
            try{
            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            statement=connection.createStatement();
        String sql1 ="select * from registration where phone='"+phoneNo+"' ";
            resultSet = statement.executeQuery(sql1);
            while(resultSet.next()){
            %>
          <h6><%=resultSet.getString("last_name") %></h6><br>
          <hr style="background:#000;">
          <%
          }
          connection.close();
          } catch (Exception e) {
          e.printStackTrace();
          }
          %>
          </div>
          <div class="col-lg-3 col-2 px-0">

            <h4>Phone No.</h4>
            
              <%
              try{
              connection = DriverManager.getConnection(connectionUrl+database, userid, password);
              statement=connection.createStatement();
          String sql1 ="select * from registration where phone='"+phoneNo+"' ";
              resultSet = statement.executeQuery(sql1);
              while(resultSet.next()){
              %>
            <h6><%=resultSet.getString("phone") %></h6><br>
            <hr style="background:#000;">
            <%
            }
            connection.close();
            } catch (Exception e) {
            e.printStackTrace();
            }
            %>
            </div>

            <div class="col-lg-3 col-2 px-0">

              <h4>Email</h4>
              
                <%
                try{
                connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                statement=connection.createStatement();
              String sql1 ="select * from registration where phone='"+phoneNo+"' ";
                resultSet = statement.executeQuery(sql1);
                while(resultSet.next()){
                %>
              <h6><%=resultSet.getString("email") %></h6><br>
              <hr style="background:#000;">
              <%
              }
              connection.close();
              } catch (Exception e) {
              e.printStackTrace();
              }
              %>
              </div>
      </div>

      <div class="row  text-center">
  <div class="col-lg-3 col-2 px-0">

    <h3>From</h3>
    
      <%
      try{
      connection = DriverManager.getConnection(connectionUrl+database, userid, password);
      statement=connection.createStatement();
    String sql1 ="select * from flight where em='"+email+"' ";
      resultSet = statement.executeQuery(sql1);
      while(resultSet.next()){
      %>
    <h5><%=resultSet.getString("frm") %></h5><br>
    <hr style="background:#000;">
    <%
    }
    connection.close();
    } catch (Exception e) {
    e.printStackTrace();
    }
    %>
    </div>

    <div class="col-lg-3 col-2 px-0">

      <h3>To</h3>
      
        <%
        try{
        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
        statement=connection.createStatement();
      String sql1 ="select * from flight where em='"+email+"' ";
        resultSet = statement.executeQuery(sql1);
        while(resultSet.next()){
        %>
      <h5><%=resultSet.getString("t") %></h5><br>
      <hr style="background:#000;">
      <%
      }
      connection.close();
      } catch (Exception e) {
      e.printStackTrace();
      }
      %>
      </div>

      <div class="col-lg-3 col-2 px-0">

        <h3>Departure Date</h3>
        
          <%
          try{
          connection = DriverManager.getConnection(connectionUrl+database, userid, password);
          statement=connection.createStatement();
        String sql1 ="select * from flight where em='"+email+"' ";
          resultSet = statement.executeQuery(sql1);
          while(resultSet.next()){
          %>
        <h5><%=resultSet.getString("departure_date") %></h5><br>
        <hr style="background:#000;">
        <%
        }
        connection.close();
        } catch (Exception e) {
        e.printStackTrace();
        }
        %>
        </div>

        <div class="col-lg-3 col-2 px-0">

          <h3>Departure Time</h3>
          
            <%
            try{
            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            statement=connection.createStatement();
          String sql1 ="select * from flight where em='"+email+"' ";
            resultSet = statement.executeQuery(sql1);
            while(resultSet.next()){
            %>
          <h5><%=resultSet.getString("departure_time") %></h5><br>
          <hr style="background:#000;">
          <%
          }
          connection.close();
          } catch (Exception e) {
          e.printStackTrace();
          }
          %>
          </div>
  </div>


  <div class="row  text-center">
<div class="col-lg-3 col-2 px-0">

<h3>Number Of Seats</h3>

  <%
  try{
  connection = DriverManager.getConnection(connectionUrl+database, userid, password);
  statement=connection.createStatement();
String sql1 ="select * from flight where em='"+email+"' ";
  resultSet = statement.executeQuery(sql1);
  while(resultSet.next()){
  %>
<h5><%=resultSet.getString("no_of_seats") %></h5><br>
<hr style="background:#000;">
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</div>

<div class="col-lg-3 col-2 px-0">

  <h3>Type Of Airline</h3>
  
    <%
    try{
    connection = DriverManager.getConnection(connectionUrl+database, userid, password);
    statement=connection.createStatement();
  String sql1 ="select * from flight where em='"+email+"' ";
    resultSet = statement.executeQuery(sql1);
    while(resultSet.next()){
    %>
  <h5><%=resultSet.getString("type_of_airline") %></h5><br>
  <hr style="background:#000;">
  <%
  }
  connection.close();
  } catch (Exception e) {
  e.printStackTrace();
  }
  %>
  </div>

  <div class="col-lg-3 col-2 px-0">

    <h3>Type Of Seat</h3>
    
      <%
      try{
      connection = DriverManager.getConnection(connectionUrl+database, userid, password);
      statement=connection.createStatement();
    String sql1 ="select * from flight where em='"+email+"' ";
      resultSet = statement.executeQuery(sql1);
      while(resultSet.next()){
      %>
    <h5><%=resultSet.getString("type_of_seat") %></h5><br>
    <hr style="background:#000;">
    <%
    }
    connection.close();
    } catch (Exception e) {
    e.printStackTrace();
    }
    %>
    </div>

    <div class="col-lg-3 col-2 px-0">

      <h3>Message</h3>
      
        <%
        try{
        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
        statement=connection.createStatement();
      String sql1 ="select * from flight where em='"+email+"' ";
        resultSet = statement.executeQuery(sql1);
        while(resultSet.next()){
        %>
      <h5><%=resultSet.getString("message") %></h5><br>
      <hr style="background:#000;">
      <%
      }
      connection.close();
      } catch (Exception e) {
      e.printStackTrace();
      }
      %>
      </div>
</div>



            <div class="row  text-center">
            <div class="col-lg-6 col-2 px-0">

            <h3>Fare Per Seat</h3>
           
            <%
            try{
            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            statement=connection.createStatement();
            String sql1 ="select * from fare where em='"+email+"' ";
            resultSet = statement.executeQuery(sql1);
            while(resultSet.next()){
            %>
            <h5><%=resultSet.getString("amount_per_seat") %></h5><br>
             <hr style="background:#000;">
            <%
            }
            connection.close();
            } catch (Exception e) {
            e.printStackTrace();
            }
            %>
            </div>
            <div class="col-lg-6 col-2 px-0">

            <h3>Total Fare</h3>
            
            <%
            try{
            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            statement=connection.createStatement();
            String sql1 ="select * from fare where em='"+email+"' ";
            resultSet = statement.executeQuery(sql1);
            while(resultSet.next()){
            %>
            <h5><%=resultSet.getString("tot_amt") %></h5><br>
            <hr style="background:#000;">
            <%
            }
            connection.close();
            } catch (Exception e) {
            e.printStackTrace();
            }
            %>
            </div>
            </div>


            <div class="row  text-center">
            <div class="col-lg-12 col-2 px-0">


            <hr style="background:#000;">
            <%
            try{
            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            statement=connection.createStatement();
            String sql1 ="select * from flight where em='"+email+"' ";
            resultSet = statement.executeQuery(sql1);
            while(resultSet.next()){
            %>
            <div class="container">
              <div class="text-center">
              <form>
				<input class="btn btn-warning" type="button" value="Print your Ticket" onClick="window.print()">
				</form>
                <h1><a href="delete.jsp?em=<%=resultSet.getString("em") %>"><button type="button" class="btn btn-danger delete">Cancel Your Ticket</button></a></h1>
              </div>
            </div>
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




</body>
</html>