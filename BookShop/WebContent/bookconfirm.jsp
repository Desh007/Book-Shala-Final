<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String qty = request.getParameter("qty");
	    session.setAttribute("qty",qty);
		Object isbn = session.getAttribute("isbn");
		Object bname = session.getAttribute("bname");
		Object bauthor = session.getAttribute("bauthor");
		Object bprice = session.getAttribute("bprice");
		Object publ = session.getAttribute("publ");
		Object bimg = session.getAttribute("bimg");
		float total = Integer.parseInt(qty) * Float.parseFloat(bprice.toString());
		session.setAttribute("total",total);
	%>
</body>
<center>
	<img alt="" src="<%=bimg%>" height="200" width="200">
</center>

<form>
	<table border="2" align="center">
		<tr>
			<th>ISBN NO</th>
			<th>Book Name</th>
			<th>Book Author</th>
			<th>Book Price</th>
			<th>Publication</th>
			<th>Book Quantity</th>
			<th>Book Total</th>
		</tr>
		<tr>
			<td><%=isbn%></td>
			<td><%=bname%></td>
			<td><%=bauthor%></td>
			<td><%=bprice%></td>
			<td><%=publ%></td>
			<td><%=qty%></td>
			<td><%=total%></td>
		</tr>
	</table>

	<br> <br>
	<table align="center">
		<tr>
			<th>Cust Name</th>
			<td><input type="text" name="cname"></td>
		</tr>
		<tr>
			<th>Cust Address</th>
			<td><input type="text" name="caddress"></td>
		</tr>
		<tr>
			<th>Phno</th>
			<td><input type="text" name="phno"></td>
		</tr>
		<tr>
			<th><input type="submit" value="Confirm" onclick="document.forms[0].action='final.jsp';return true"></th>
			<td><input type="submit" value="cancel" onclick="document.forms[0].action='login.jsp';return true"></td>
		</tr>
	</table>
</form>
</html>