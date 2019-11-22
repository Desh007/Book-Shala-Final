<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   String sql="insert into order_details values(?,?,?,?,?,?,?,?)";
String d=application.getInitParameter("driver");
String url=application.getInitParameter("url");
String u=application.getInitParameter("uname");
String p=application.getInitParameter("pwd");
Class.forName(d);
Connection con=DriverManager.getConnection(url,u,p);
Object isbn=session.getAttribute("isbn");
String cname=request.getParameter("cname");
String caddress=request.getParameter("caddress");
String phno=request.getParameter("phno");
Object qty=session.getAttribute("qty");
Object total=session.getAttribute("total");
LocalDate odate=LocalDate.now();
PreparedStatement pst=con.prepareStatement(sql);
pst.setInt(1,0);
pst.setString(2,isbn.toString());
pst.setString(3, cname);
pst.setString(4, caddress);
pst.setLong(5,Long.parseLong(phno));
pst.setInt(6,Integer.parseInt(qty.toString()));
pst.setFloat(7,Float.parseFloat(total.toString()));
pst.setString(8,odate.toString());
pst.execute();
out.print(" Thanks....!!! Enjoy book reading....!!");
%>
</body>
</html>