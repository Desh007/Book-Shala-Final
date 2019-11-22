<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*,java.time.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Book-Shala | RegisterDao</title>
</head>
<body>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String pwd=request.getParameter("pwd");
String gender=request.getParameter("gender");
String country=request.getParameter("country");
String phno=request.getParameter("phone");
String d=application.getInitParameter("driver");
String url=application.getInitParameter("url");
String u=application.getInitParameter("uname");
String p=application.getInitParameter("pwd");
Class.forName(d);
Connection con=DriverManager.getConnection(url,u,p);
String sql1="insert into users values(?,?,?,?,?,?,?,?)";
PreparedStatement pst=con.prepareStatement(sql1);
LocalDate rdate=LocalDate.now();
pst.setInt(1,0);
pst.setString(2,name);
pst.setString(3,email);
pst.setString(4,pwd);
pst.setString(5,gender);
pst.setString(6,country);
pst.setString(8,rdate.toString());
pst.setLong(7,Long.parseLong(phno));
int i=pst.executeUpdate();
String sql2="insert into ulogin values(?,?)";
pst=con.prepareStatement(sql2);
pst.setString(1,email);
pst.setString(2,pwd);
int j=pst.executeUpdate();
if(i>0&&j>0)
{
	%>
   	
   	<jsp:forward page="/login.jsp"></jsp:forward>
<%}
else
{
	%>
	<%="<center>Incorrect Data</center>" %>
	<jsp:include page="/register.jsp"></jsp:include>
<%}
%>
</body>
</html>

    