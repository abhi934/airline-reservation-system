<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="ISO-8859-1">
    <title>LOGIN</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  </head>
  <body>

 

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <a class="navbar-brand" href="#">Welcome</a>
    <button class="navbar-toggler" data-toggler="collapse" data-target="#navbar1" type="button" name="button">
      <span class="button-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbar1">
      
    </div>
    </nav>

 

    <div class="container">
      <div class="jumbotron text-center">
        <h1 class="display-4"><b>LOGIN</b></h1>

 

      </div>
    </div>

 

    <div class="container">
        <form action="<%=request.getContextPath()%>/login" method="post">
      <div class="form-group">
        <label for="InputEmail">Email Address</label>
        <input class="form-control" type="text" id="InputEmail" name="email" placeholder="Email" required>
      </div>
      <div class="form-group">
        <label for="InputPassword">Password</label>
        <input type="password" class="form-control" id="InputPassword" name="password" placeholder="Password" required>
      </div>
      <p></p>
      <div>

 

            <input type="submit" name="" class="btn btn-secondary"value="Submit">

		
      </div>
      </form>
      
      <p></p>
      <form class="" action="Register.html" method="post">
			<input type="submit" name="" class="btn btn-primary" value="Register"><br>
      </form>
 
      
    </div>
    
   

 

  </body>
</html>