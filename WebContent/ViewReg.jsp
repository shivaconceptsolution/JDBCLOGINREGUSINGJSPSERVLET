<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %> 
<%@page import="scs.*" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="logout.jsp">logout</a>
<%
if(session.getAttribute("uid")==null)
{
	response.sendRedirect("Login.jsp");
}

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java7", "root", "");
Statement st = con.createStatement();
ResultSet res = st.executeQuery("select * from Register");
%>
<table border="1">
<tr><th>Username</th><th>Password</th><th>Email</th><th>Mobile</th></tr>
<%
while(res.next())
{ %>
	<tr><td><%=  res.getString(1) %></td><td><%= res.getString(2) %></td><td><%= res.getString(3) %></td><td><%= res.getString(4) %></td>
	<td><a href="Edit.jsp?q=<%=  res.getString(1) %>">EDIT</a></td><td><a href="http://localhost:8080/AdvanceJavaProgram/DeleteSer?q=<%=  res.getString(1) %>">Delete</a></td>
	
	</tr>
	
<% }
%>
</table>
</body>
</html>