<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.io.*"%>
	<%
try{
	 response.setContentType("application/zip")  ; 
	String filename="templet.zip";
	 response.setHeader("Content-disposition" , "attachment;filename=templet.zip"); 
/* 	 File df = new File("C:\\Users\\keshavkl\\eclipse-workspace\\cpp v2.2\\downloads\\"+filename);
 */


FileInputStream f = new FileInputStream("D:\\sem 5 project\\AJAVA pro\\cpp v2.3\\downloads\\templet.zip"); 
int i=0;
while((i=f.read())!=-1)
{out.write(i);}
f.close();
}
catch(Exception e)
{
	out.println("not done");}

	%>
</body>
</html>