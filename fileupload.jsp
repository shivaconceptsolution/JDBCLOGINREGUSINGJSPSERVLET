<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Uploaddata" method="post"  enctype="multipart/form-data"  name="frm1" >
<input type="file" name="file" multiple="true"   />
<br>
<input type="submit" name="btnsubmit" value="Upload"  />
</form>
<%
if(request.getAttribute("message")!=null)
{
	out.print(request.getAttribute("message"));
}

%>
</body>
</html>