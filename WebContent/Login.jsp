<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

Cookie arr[] = request.getCookies();
String s1="",s2="";
if(arr.length>0)
{
for(int i=0;i<arr.length;i++)
{
	if(arr[i].getName().equals("user"))
	{
		s1 = arr[i].getValue();
	}
	if(arr[i].getName().equals("pass"))
	{
		s2 = arr[i].getValue();
	}
}
}


%>
<form action="LoginSer" method="post">
Enter username
<br>
<input type="text" name="txtuser" value="<%= s1 %>" />
<br>
Enter password
<br>
<input type="password" name="txtpass" value="<%= s2 %>" />
<br>
<input type="checkbox" name="chk1" value="1" />Remember me
<br>
<input type="submit" name="btnsubmit" value="click" />


</form>
<a href="Reg.jsp">NEW USER SIGNUP HERE</a>
</body>
</html>