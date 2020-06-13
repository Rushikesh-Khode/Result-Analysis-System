<%@page import="java.io.File"%>
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
	
String user=session.getAttribute("user").toString();

if(user.equals("")||user.equals(" ")||user.equals(null))
{
	response.sendRedirect("admin_login.jsp");
}

}catch(NullPointerException e)
{ response.sendRedirect("admin_login.jsp");  

	} %>
<%
try
{

	String s=request.getParameter("val");
	String fname,lname,add,c_stat,doc1,doc2,enroll,path_doc1,path_doc2,mobile,email,couse;
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/datademo", "root","root");
	PreparedStatement ps = con.prepareStatement("select * from alu_data where current_stat='"+s+"'");
	ResultSet rs=ps.executeQuery();
	out.println("<table border='1'>");
	
	if(s.equals("3"))
	{out.println("<tr><th>First Name</th><th>Last Name</th><th>Enrollment</th><th>Address</th><th>Current Status</th><th>Moblie Number</th><th>Email</th><th>Course (in diploma)</th><th>Cap Round(Status)</th><th>Id Card</th><th>See CapRound </th><th>See IdCard </th><th>Delete(click to Delete it)</th></tr>");         
	while(rs.next())
	{fname=rs.getString(1);
	lname=rs.getString(2);
	enroll=String.valueOf(rs.getInt(3));
	add=rs.getString(4)==null || rs.getString(4)==" "?"404 :(":rs.getString(4);
	c_stat="student";
	doc1=String.valueOf(rs.getInt(6)).equals("12")?"Uploaded":"Not Uploaded";
	doc2=String.valueOf(rs.getInt(7)).equals("12")?"Uploaded":"Not Uploaded";
	String chk_doc="",chk_doc2="";
	if(doc1.equals("not uploaded"))
	{
		chk_doc="not avaliable";
		
	}
	else{
		chk_doc="Check Document";
		
	}
	path_doc1=rs.getString(8);
	
	if(doc2.equals("not uploaded"))
	{
		chk_doc2="not avaliable";
	}
	else{
		chk_doc2="Check Document";
		
	}
	path_doc2=rs.getString(9);
	
	mobile=rs.getString(10);
	email=rs.getString(11);
	couse=rs.getString(12);
	

		out.println("<tr id='"+enroll+"' onmouseenter='deletealumni("+enroll+")' onmouseleave='remove("+enroll+")'><td>"+fname+"</td><td>"+lname+"</td><td >"+enroll+"</td><td>"+add+"</td><td>"+c_stat+"</td><td>"+mobile+"</td><td>"+email+"</td><td>"+couse+"</td> <td>"+doc1+"</td><td>"+doc2+"</td><td><a href='"+ path_doc1 +"'>"+chk_doc+"</a></td><td><a href='"+path_doc2+"'>"+ chk_doc2 +"</a></td><td><a href='delete_alu.jsp?eno="+enroll+"&s="+s+"'>Delete It</a></td></tr>");                                                                                                                        
	}
	}
	
	
	
	//for employee and entorperoner
	else if(s.equals("1")||s.equals("2"))
	{
		out.println("<tr><th>First Name</th><th>Last Name</th><th>Enrollment</th><th>Address</th><th>Current Status</th><th>Moblie Number</th><th>Email</th><th>Course (in diploma)</th><th>Id Card</th><th>See IdCard</th><th>Delete(click to Delete it)</th></tr>");         

		while(rs.next())
		{fname=rs.getString(1);
		lname=rs.getString(2);
		enroll=String.valueOf(rs.getInt(3));
		add=rs.getString(4)==null ||rs.getString(4)==""?"404 :(":rs.getString(4);
		c_stat=rs.getString(5).equals("1")?"employee":"enterprener";
		doc1=String.valueOf(rs.getInt(6)).equals("12")?"uploaded":"not uploaded";
		String chk="Check Document";
		if(doc1.equals("not uploaded"))
		{
			chk="Not Uploaded";
			
		}
		path_doc1=rs.getString(8);
		mobile=rs.getString(10);
		email=rs.getString(11);
		couse=rs.getString(12);
		
		

			out.println("<tr id='"+enroll+"' onmouseenter='deletealumni("+enroll+")' onmouseleave='remove("+enroll+")'><td>"+fname+"</td><td>"+lname+"</td><td >"+enroll+"</td><td>"+add+"</td><td>"+c_stat+"</td><td>"+mobile+"</td><td>"+email+"</td><td>"+couse+"</td><td>"+doc1+"</td><td><a href='"+path_doc1+"'>"+chk+"</a></td><td><a href='delete_alu.jsp?eno="+enroll+"&s="+s+"'>Delete It</a></td></tr>");
		}
	}



out.println("</table>");

out.println("<script >function deletealumni(num){alert(num.id);}</script>");



}
	
catch(Exception e)
	{out.println(e);
	out.println("Exception is from back");}%>
</body >



<!-- String dirpath="D:\\sem 5 project\\AJAVA pro\\cpp\\documents";





if(s.equals("3"))
{out.println("<tr><th>First Name</th><th>Last Name</th><th>Enrollment</th><th>Address</th><th>Current Status</th><th>Cap Round</th><th>Id Card</th></tr>");         
while(rs.next())
{fname=rs.getString(1);
lname=rs.getString(2);
enroll=String.valueOf(rs.getInt(3));
add=rs.getString(4)==null?"404 :(":rs.getString(4);
c_stat="student";
doc1=String.valueOf(rs.getInt(6)).equals("12")?"uploaded":"not uploaded";
doc2=String.valueOf(rs.getInt(7)).equals("12")?"uploaded":"not uploaded";

	out.println("<tr><td>"+fname+"</td><td>"+lname+"</td><td>"+enroll+"</td><td>"+add+"</td><td>"+c_stat+"</td><td>"+doc1+"</td><td>"+doc2+"</td></tr>");
}
}
else if(s.equals("1")||s.equals("2"))
{
	out.println("<tr><th>First Name</th><th>Last Name</th><th>Enrollment</th><th>Address</th><th>Current Status</th><th>Id Card</th></tr>");         

	while(rs.next())
	{fname=rs.getString(1);
	lname=rs.getString(2);
	enroll=String.valueOf(rs.getInt(3));
	add=rs.getString(4)==null?"404 :(":rs.getString(4);
	c_stat=rs.getString(5).equals("1")?"emplyee":"enterprener";
	doc1=String.valueOf(rs.getInt(6)).equals("12")?"uploaded":"not uploaded";
	

		out.println("<tr><td>"+fname+"</td><td>"+lname+"</td><td>"+enroll+"</td><td>"+add+"</td><td>"+c_stat+"</td><td>"+doc1+"</td></tr>");
	}
}

}
catch(Exception e)
{
out.println(e);	
}

%> -->

</html>




