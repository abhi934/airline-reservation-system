<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="net.javaguides.login.database.*"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
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

    <style media="screen">
    .logo{
    height: 50px;
    }
#button1{
border-radius: 10px;
}
    .fa {
      padding: 20px;
      font-size: 30px;
      width: 50px;
      text-align: center;
      text-decoration: none;
      margin: 5px 2px;
    }

    .fa:hover {
        opacity: 0.7;
    }

    .fa-facebook {
      background: #3B5998;
      color: white;
    }

    .fa-twitter {
      background: #55ACEE;
      color: white;
    }

    .fa-linkedin {
      background: #007bb5;
      color: white;
    }

    .fa-instagram {
      background: #125688;
      color: white;
    }
    #laptop{
      height: 450px;
      width: 100%;
    }

    .footer hr{
      border:none;
      background: #b5b5b5;
      height: 1px;
      margin:20px 0;
    }
    .footer{
      background: #000;
      color: #8a8a8a;
      font-size: 14px;
      padding: 60px 0 20px;
    }
    .footer p{
      color: #8a8a8a;
    }
    .footer h3{
      color: #fff;
      margin-bottom: 20px;
    }
    .footer-col-1, .footer-col-2, .footer-col-3, .footer-col-4{
      min-width: 250px;
      margin-bottom: 20px;

    }
    .footer-col-1{
      flex-basis: 30%;
    }
    .footer-col-2{
      flex:1;
      text-align: center;
    }
    .footer-col-2 img{
      width: 180px;
      margin-bottom: 20px;
    }
    .footer-col-3,.footer-col-4{
      flex-basis: 12%;
      text-align: center;
    }
    ul{
      list-style-type: none;
    }
    .app-logo{
      margin-top: 20px;

    }
    .app-logo img{
      width: 140px;
    }
    .footer hr{
      border:none;
      background: #b5b5b5;
      height: 1px;
      margin:20px 0;
    }
    .copyright{
      text-align: center;
    }
    body{
    font-family: 'Roboto Slab', serif;
    }
    p{
      color: #555;
    }
    *{
      margin:0;
      padding:0;
      box-sizing:border-box;;
    }
    #img{
      height: 400px;;
      width: 100%;
    }
    #gif1{
      width: 130%;
    }
    #gif2{
      width: 130%;
    }

    </style>
  </head>
  <body>
    <div class="container">

    </div>
    <nav class="navbar navbar-expand-md navbar-light sticky-top bg-light">
      <div class="container-fluid">
        <a href="#" class="navbar-brand"><img class="logo" src="https://www.webdesignerdepot.com/cdn-origin/uploads/2009/03/aeromexico.gif" alt=""></a>
        <button type="button" class="navbar-toggler" data-toggle="collapse" name="button" data-target="#navbarResponsive"><span class="navbar-toggler-icon"></span></button>
        <div class="navbar-nav">
        <form class="" action="adminconfirm.html" method="post">
			<input id="button1" type="submit" name="" class="btn btn-primary" value="Admin Login">
      </form>
      </div>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto" >
           <form class="" action="login.jsp" method="post">
            <input id="button1" type="submit" name="" class="btn btn-secondary" value="LOGIN">
           </form>     
              
           <form class="" action="Register.html" method="post">
            <input id="button1" type="submit" name="" class="btn btn-success" value="REGISTER">
           </form>      
            
                                 
          </ul>
        </div>
      </div>
    </nav>


    <div id="slides" class="carousel slide" data-ride="carousel">
      <ul class="carousel-indicators">
        <li data-target="#slides" data-slide-to="0" class="active"></li>
        <li data-target="#slides" data-slide-to="1"></li>
        <li data-target="#slides" data-slide-to="2"></li>
      </ul>
      <div class="carousel-inner">
        <div class="carousel-item active" >
          <div class="container">
            <img id="img"src="https://images.unsplash.com/photo-1484320775925-2609d111d8b3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80" alt="">
            <div class="carousel-caption">
              <h1 class="display-2"id="title"style="color:#fff;font-size:50px;text-align:center;"><b><b>WELCOME TO AEROMEXICO</b></b></h1>
			   
              </div>
          </div>

        </div>
        <div class="carousel-item">
          <div class="container">
            <img id="img"src="https://images.unsplash.com/photo-1483375801503-374c5f660610?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80" alt="">
          </div>


        </div>
        <div class="carousel-item">
          <div class="container">
              <img id="img"src="https://images.unsplash.com/photo-1464037866556-6812c9d1c72e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80" alt="">
          </div>

        </div>
      </div>
    </div>


    <div class="container-fluid padding">
      <div class="row padding">
        <div class="col-md-12 col-lg-6"style="margin-top:30px;margin-bottom:30px;">
          <h3 style="font-size:25px" class="display-3"><b><b>Airlines -An Overview on Air Travel and Air Lines</b></b></h3>
          <p style="font-size:20px">Air travel is indeed the fastest way to cover long distances. In recent times it has become a lot cheaper and offers travelers a wide choice. In the airline industry there are two types of travelers: the business traveler and the leisure traveler. Business travelers are usually flexible on the price of the tickets, but not on the dates. Leisure travelers on the other hand are not flexible on the price, but are on the dates. Most airlines try to strike a balance between these two types of travellers and offer different types of schemes targeting one or the other.</p>
          <figure>
            <div class="fixed-wrap">
                <div id="fixed" class="">
                  <button type="button" class="btn btn-primary fun" data-toggle="collapse" data-target="#emoji" name="button">Learn More</button>
                  <div class="collapse" id="emoji">
                    <div class="container-fluid padding">
                      <div class="row">
                        <p>Most international flights usually offer three classes: First Class, Business Class and Economy Class.
                          First Class is the most expensive and offers maximum comfort. Business class also has almost the same amenities, with small variations of seat dimensions, food options and personalized service.
                         Both the classes offer lounge access, delicious meals and drinks, extra space to work. First class may have flat beds and private pods.
                           The Economy Class offers basic facilities and often food too needs to be purchased. Some airlines also offer the Premium Economy class which is a good choice for travelers who need to work or catch up on some sleep.
                           A premium economy seat costs more than the regular economy.</p>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
          </figure>
        </div>
        <div  class="col-md-12 col-lg-6 padding" style="margin-top:30px;margin-bottom:30px;">
          <img id="laptop" class="img-fluid padding" src="https://images.unsplash.com/photo-1512100356356-de1b84283e18?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=709&q=80" alt="">


        </div>
      </div>
    </div>



    <div class="footer">
        <div class="container">
          <div class="row">
            <div class="footer-col-1">
              <h3>Download Our App</h3>
              <p>Download App for Android and ios mobile phone.</p>
              <div class="app-logo">
                <img src="images/play-store.png" alt="">
                <img src="images/app-store.png" alt="">
              </div>
            </div>
            <div class="footer-col-2">
              <img src="https://www.webdesignerdepot.com/cdn-origin/uploads/2009/03/aeromexico.gif" alt="">
              <p>Our Purpose Is To Sustainably Make the Pleasure and Benifits of Sports Accessible to the Many.</p>
            </div>
            <div class="footer-col-3">
              <h3>Useful Links</h3>
              <ul>
                <li>Coupons</li>
                <li>Blog Post</li>
                <li>Return Policy</li>
                <li>Join Affliliate</li>
              </ul>
            </div>
            <div class="footer-col-4">
              <h3>Follow Us</h3>
              <ul>
                <a href="https://www.facebook.com/AeromexicoMX" class="fa fa-facebook"></a>
                <a href="https://twitter.com/aeromexico" class="fa fa-twitter"></a>
                <a href="https://www.linkedin.com/company/18870/" class="fa fa-linkedin"></a>
                <a href="https://instagram.com/aeromexico/" class="fa fa-instagram"></a>
              </ul>
            </div>
          </div>
          <hr>
          <p class="copyright">Copyright 2020 - SV|store</p>
        </div>
      </div>

  </body>
</html>