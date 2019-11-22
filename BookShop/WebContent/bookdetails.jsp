<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Book-Shala |</title>
</head>
<body>
	<%
		String isbn = request.getParameter("value");
		String sql = "select * from book where isbn=?";
		String d = application.getInitParameter("driver");
		String url = application.getInitParameter("url");
		String u = application.getInitParameter("uname");
		String p = application.getInitParameter("pwd");
		Class.forName(d);
		Connection con = DriverManager.getConnection(url, u, p);
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, isbn);
		ResultSet rs = pst.executeQuery();
		rs.first();
		String bname = rs.getString(2);
		String bauthor = rs.getString(3);
		String bprice = rs.getString(4);
		String publ = rs.getString(5);
		String bimg = rs.getString(6);
		
		session.setAttribute("isbn",isbn);
		session.setAttribute("bname",bname);
		session.setAttribute("bauthor",bauthor);
		session.setAttribute("bprice",bprice);
		session.setAttribute("publ",publ);
		session.setAttribute("bimg",bimg);
	%>

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
			</tr>
			<tr>
				<td><%=isbn%></td>
				<td><%=bname%></td>
				<td><%=bauthor%></td>
				<td><%=bprice%></td>
				<td><%=publ%></td>
			</tr>
		</table>
		<br> <br>
		<table align="center">
			<tr>
				<th>Book Quantity</th>
				<td><input type="text" name="qty"></td>
			</tr>
			<tr>
				
				<td><input type="submit" value="Purchase" onclick="document.forms[0].action='bookconfirm.jsp';return true"></td>
				<td><input type="submit" value="Cancel" onclick="document.forms[0].action='login.jsp';return true"></td>
			</tr>
		</table>
	</form>
</body>
</html>