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
	
	String type=request.getParameter("type").toString();
	
	
	

	/* File df = new File("C:\\Users\\keshavkl\\eclipse-workspace\\cpp v2.2\\downloads\\"+filename); */



 File f_of_workspace = new File("./");
	String path_of_workspace=f_of_workspace.getAbsolutePath().substring(0,f_of_workspace.getAbsolutePath().length()-1);
	 FileInputStream f=null;
if(type.equals("Zip File")){
	
	  response.setContentType("application/zip")  ; 
		String filename="templet.zip";
		 response.setHeader("Content-disposition" , "attachment;filename=templet.zip"); 
	
 f= new FileInputStream(path_of_workspace+"\\WebContent\\downloads\\templet.zip"); 
 
 }
else if(type.equals("Rar File"))
{
	
	  response.setContentType("application/rar")  ; 
		String filename="templet.rar";
		 response.setHeader("Content-disposition" , "attachment;filename=templet.rar"); 
f=new FileInputStream(path_of_workspace+"\\WebContent\\downloads\\templet.rar"); 	
}
else
{
	  response.setContentType("application/txt")  ; 
		String filename="README.txt";
		 response.setHeader("Content-disposition" , "attachment;filename=README.txt"); 
	
f=new FileInputStream(path_of_workspace+"\\WebContent\\downloads\\README.txt"); 	

}
 
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