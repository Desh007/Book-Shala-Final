<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Book-Shala | </title>
</head>
<body>
<%
String isbn=request.getParameter("isbn");
String bname=request.getParameter("bname");
String bauthor=request.getParameter("bauthor");
String bprice=request.getParameter("bprice");
String publ=request.getParameter("bpubl");
String image=request.getParameter("bimage");
String d=application.getInitParameter("driver");
String url=application.getInitParameter("url");
String u=application.getInitParameter("uname");
String p=application.getInitParameter("pwd");
Class.forName(d);
Connection con=DriverManager.getConnection(url,u,p);
String sql="insert into book values(?,?,?,?,?,?)";
PreparedStatement pst=con.prepareStatement(sql);
pst.setString(1,isbn);
pst.setString(2,bname);
pst.setString(3,bauthor);
pst.setFloat(4,Float.parseFloat(bprice));
pst.setString(5,publ);
pst.setString(6,image);
int i=pst.executeUpdate();
if(i>0)
{
	%>
	
	<jsp:forward page="menu.jsp"></jsp:forward>
<%}
else
{
	%>
	<%="Incorrect Info" %>
	<jsp:include page="book.jsp"></jsp:include>
<%}
%>
</body>
</html>