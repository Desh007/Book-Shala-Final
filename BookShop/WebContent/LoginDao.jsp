<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book-Shala | LDao</title>
</head>
<body>
<% 

String uname=request.getParameter("uname");


String pwd=request.getParameter("pwd");


if(uname.equals("admin")&&pwd.equals("admin"))
{
  %>
	<jsp:forward page="/menu.jsp"></jsp:forward>

<%}

else{
	
	String d=application.getInitParameter("driver");
	String url=application.getInitParameter("url");
	String u=application.getInitParameter("uname");
	String p=application.getInitParameter("pwd");
	
	String email=request.getParameter("email");
	
	Class.forName(d);
	
	Connection con=DriverManager.getConnection(url,u,p);
	
	String sel="select *from ulogin where email=? and pwd=?";
	
	PreparedStatement pst=con.prepareStatement(sel);
	
	pst.setString(1,email);
	pst.setString(2,pwd);
	
	ResultSet rs=pst.executeQuery();
	
	if(rs.next()){
	 %>
		<jsp:forward page="/showbook.jsp"></jsp:forward>		
				
	<%}
	else {
	       %>	
    	<%="<center>Incorrect Username or password</center>"%>	
		<jsp:include page="/login.jsp"></jsp:include>
		<%
		
	}
	
}

%>
</body>
</html>