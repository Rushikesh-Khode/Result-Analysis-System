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
<%try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/datademo", "root", "root");
String user="",pass="";
user=request.getParameter("username");
pass=request.getParameter("password");
PreparedStatement ps = con.prepareStatement("select email from admin_data where email=? and password=?");
ps.setString(1, user);
ps.setString(2,pass);
out.println(user+""+pass);
ResultSet rs = ps.executeQuery();
if(rs.next())
{
session.setAttribute("user",user);
response.sendRedirect("admin.jsp");	

}
else
{
	 session.setAttribute("error","error");
response.sendRedirect("admin_login.jsp"); 

}


}catch(Exception e)
{
	
	out.println(e);
}


%>
</body>
</html>