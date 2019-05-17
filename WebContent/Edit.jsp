<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/java7", "root", "");
Statement st = con.createStatement();
ResultSet res = st.executeQuery("select * from Register where username='"+request.getParameter("q")+"'");
if(res.next())
{
%>
<form action="http://localhost:8080/AdvanceJavaProgram/UpdateSer" method="post">
<table border="1">
<tr><th>Username</th><td><input type="text" name="txtuser" value="<%= res.getString(1)  %>" readonly="readonly" /></td></tr>
<tr><th>Password</th><td><input type="text" name="txtpass" value="<%= res.getString(2)  %>" /></td></tr>
<tr><th>Email</th><td><input type="text" name="txtemail" value="<%= res.getString(3)  %>" /></td></tr>
<tr><th>Mobile</th><td><input type="text" name="txtmobile" value="<%= res.getString(4)  %>" /></td></tr>
<tr><td colspan="2"><input type="submit" name="btnsubmit" value="Update" /> </td></tr>
</table>
</form>
<%
}
%>
</body>
</html>