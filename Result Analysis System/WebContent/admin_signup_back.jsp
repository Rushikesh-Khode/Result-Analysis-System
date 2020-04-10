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
String full_name,email,number,pass,passr,alert="";
int clear=0;
full_name=request.getParameter("full_name");
email=request.getParameter("email");
number=request.getParameter("mobile_number");
pass=request.getParameter("password_1");
passr=request.getParameter("password_2");

if(pass.equals(passr))
{PreparedStatement pss = con.prepareStatement("select email from admin_data where email=?");
pss.setString(1,email);
ResultSet rs=  pss.executeQuery();
  
	if(rs.next()){
		alert+="Email/username already present in database try to login";
				clear++;
	}
	else
	{
		PreparedStatement ps = con.prepareStatement("insert into admin_data values(?,?,?,?)");
		ps.setString(1,email);
		ps.setString(2,pass);
		ps.setString(3,number);
		ps.setString(4,full_name);
		ps.executeUpdate();
		session.setAttribute("sucess","Sucessfully");
		response.sendRedirect("admin_login.jsp");
	}

}
else
{
	alert+="Repeated Password Does Not Match";
	clear++;
}

if(clear>0)
{
session.setAttribute("error",alert);
response.sendRedirect("admin_signup.jsp");
}
}
catch(Exception e)
{
out.println(e);	
}

%>
</body>
</html>