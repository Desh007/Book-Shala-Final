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
   <a href="book.jsp">Add Book</a>
  <a href="showbook.jsp">Show Books</a>  
</div>


<form action="BookDao.jsp">
  <div class="container">
    <h1>Register</h1>
    
    <hr>
    
    <label><b>ISBN No</b></label>
    <input type="text" placeholder="Enter ISBN No" name="isbn" required>
    
    <label><b>Book Name</b></label>
    <input type="text" placeholder="Enter Book Name" name="bname" required>
  
    <label><b>Book Author</b></label>
    <input type="text" placeholder="Enter Book Author" name="bauthor" required>

    <label><b>Book Price</b></label>
    <input type="text" placeholder="Enter Book Price" name="bprice" required>
    
    <label><b>Book Publication</b></label>
    <input type="text" placeholder="Enter Publication" name="bpubl" required>
    
    <label><b>Book Image</b></label>
    <input type="file" placeholder="Enter Book Author" name="bimage" required>  
        <hr>
    <button type="submit" class="registerbtn">Add Book</button>
  </div>
  
 
</form>



</body>
</html>