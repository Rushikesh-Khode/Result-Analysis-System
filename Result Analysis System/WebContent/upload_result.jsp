<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="upload_check.jsp">
<select id="mysel" name="exyear" class="list">
	<%
	Date d=new Date();
	int pd=d.getYear()-100;
	int date=d.getYear()+1900;
	for(int i=0;i<10;i++)
	{
		out.println("<option value='s"+pd+"'>Summer "+date+"</option>");
		out.println("<option value='w"+pd+"'>Winter "+date+"</option>");
		date-=1;
		pd-=1;
	}
	%>
	</select>
	<!-- <input type="submit" value="select"> -->
	<button formaction="upload_check.jsp" class="btn">Select</button>

</body>
</html>