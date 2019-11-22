<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BookGanga | Register</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<header>
<img src="bslogo.png" alt="Logo">

</header>

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

  <a href="register.jsp">Register</a>
  <a href="login.jsp">Login</a>

</div>
          <form action="RegisterDao.jsp">
  <div class="container">
    <h1>Register</h1>
    
    <hr>
    
    <label for="email"><b>Name</b></label>
    <input type="text" placeholder="Enter Name" name="name" required>
    
    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>
  
    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="pwd" required>

    <label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
  
    <label for="country"><b>Country</b></label>
    <input type="text" placeholder="Enter Country" name="country" required>
    
    <label for="country"><b>Phone</b></label>
    <input type="text" placeholder="Enter Phone" name="phone" required>
       
    <label for="Gender"><b>Gender</b></label>
      <select id="country" name="country">
          <option value="male">Male</option>
          <option value="female">Female</option>
          <option value="other">Other</option>
        </select>
    
        <hr>
    <button type="submit" class="registerbtn">Register</button>
  </div>
  
 
</form>
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