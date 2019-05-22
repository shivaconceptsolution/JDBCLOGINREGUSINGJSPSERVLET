<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
function showdata(a)
{
	xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange=function()
	{
		document.getElementById("res").innerHTML=xmlhttp.responseText;
	}
	xmlhttp.open("POST","ajaxcode.jsp?q="+a,true);
	xmlhttp.send();
}


</script>
</head>
<body>
<input type="text" name="txtsearch" onkeyup="showdata(this.value)" />
<br>
<div id="res"></div>
</body>
</html>