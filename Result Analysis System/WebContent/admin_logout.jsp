<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<script>
localStorage.setItem("selected", 0);
</script>
<body >
<%
try{
String user=session.getAttribute("user").toString();
session.removeAttribute("user");
session.invalidate();
response.sendRedirect("main.jsp");
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); //HTTP 1.1 
response.setHeader("Pragma","no-cache"); //HTTP 1.0 
response.setDateHeader ("Expires", 0);}
catch(NullPointerException e)
{response.sendRedirect("admin_login.jsp");
	}

%>
</body>

</html>