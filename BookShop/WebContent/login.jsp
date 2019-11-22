<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" content="device-width, initial-scale=1">
<link rel="stylesheet" href="style.css">
<title>Book-Shala | Login</title>
</head>
<header>
<img src="bslogo.png" alt="Logo">

</header>

<body>
<div class="navbar">
  <a href="home.jsp">Home</a>
   
  <div class="dropdown">
    <button class="dropbtn">Categories 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">Education</a>
      <a href="#">Biography</a>
      <a href="#">History & Politics</a>
    </div>
  </div> 
 
  <a href="#news">Offers</a>
  <a href="#news">Contact</a>

  <a href="#news">Register</a>
  <a href="#news">Login</a>

</div>


    <div class="container">
           <form action="LoginDao.jsp" method="post">
         
          <input type="text" name="uname" placeholder="Username"required>
         
          <input type="text" name="pwd" placeholder="Password"required>
          
          <input type="Submit" value="Login">
             
    </div>
           </form>
    </div>
    
    <div class="bottom-container">
  <div class="row">
    <div class="col">
      <a href="register.jsp" style="color:white" class="btn">Sign up</a>
    </div>
    <div class="col">
      <a href="forgot.jsp" style="color:white" class="btn">Forgot password?</a>
    </div>
  </div>
</div>

    
</body>
</html>