<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="u" class="models.Register" scope="page">
</jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<form action="" method="post">
  <input type="text" name="mobile" placeholder="enter mobileno" />
   <br>
   <br>
   <input type="text" name="pass" placeholder="enter password" />
   <br>
   <br>
   <input type="submit" name="btnsubmit" value="Register"  /> 


</form>
<%
out.print(u.getMobile()+" "+u.getPass());
%>
</body>
</html>