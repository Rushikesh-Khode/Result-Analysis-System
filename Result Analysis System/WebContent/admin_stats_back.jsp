<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*" %>

<%try{
	
String user=session.getAttribute("user").toString();

if(user.equals("")||user.equals(" ")||user.equals(null))
{
	response.sendRedirect("admin_login.jsp");
}

}catch(NullPointerException e)
{ response.sendRedirect("admin_login.jsp");  

	} %>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/datademo", "root","root"); 

PreparedStatement st= con.prepareStatement("select count(*) from alu_data where current_stat='3' "); 
ResultSet rs = st.executeQuery();
rs.next();

out.print(rs.getString(1));


PreparedStatement st1= con.prepareStatement("select count(*) from alu_data where current_stat='2' "); 
ResultSet rs1 = st1.executeQuery();
rs1.next();
out.print(rs1.getString(1));



PreparedStatement st2= con.prepareStatement("select count(*) from alu_data where current_stat='1' "); 
ResultSet rs2 = st2.executeQuery();
rs2.next();
out.print(rs2.getString(1));



PreparedStatement st3= con.prepareStatement("select count(*) from alu_data where cource='co' "); 
ResultSet rs3 = st3.executeQuery();
rs3.next();
out.print(rs3.getString(1));


PreparedStatement st4= con.prepareStatement("select count(*) from alu_data where cource='ce' "); 
ResultSet rs4 = st4.executeQuery();
rs4.next();
out.print(rs4.getString(1));


PreparedStatement st5= con.prepareStatement("select count(*) from alu_data where cource='me' "); 
ResultSet rs5 = st5.executeQuery();
rs5.next();
out.print(rs5.getString(1));


PreparedStatement st6= con.prepareStatement("select count(*) from alu_data where cource='ee' "); 
ResultSet rs6 = st6.executeQuery();
rs6.next();
out.print(rs6.getString(1));



PreparedStatement st7= con.prepareStatement("select count(*) from alu_data where cource='et' "); 
ResultSet rs7 = st7.executeQuery();
rs7.next();
out.print(rs7.getString(1));

%>
