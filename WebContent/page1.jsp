<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Page1</h1>
 <%--  <jsp:forward page="page2.jsp"></jsp:forward> 
<jsp:include page="page2.jsp"></jsp:include>--%> 

<form action="Servlet1" method="post">
Enter name
<br>
<input type="text" name="txtname" />
<br>
<input type="submit" name="btnsubmit" value="Click" />

</form>
</body>
</html>