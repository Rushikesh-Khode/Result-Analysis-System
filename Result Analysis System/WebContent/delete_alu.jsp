<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
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
		try {
			String user=session.getAttribute("user").toString();
			session.setAttribute("user", user);
			String enroll = request.getParameter("eno");
			String s = request.getParameter("s");
			String alert="";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/datademo", "root", "root");
		
			 File f_of_workspace = new File("./");
			String path_of_workspace=f_of_workspace.getAbsolutePath().substring(0,f_of_workspace.getAbsolutePath().length()-1);
			
			
			String dirpath = path_of_workspace+"\\WebContent\\documents"; 
	
		/* PreparedStatement pss=con.prepareStatement("select doc_2 from alu_data where enroll=?");
		pss.setString(1, enroll);
		ResultSet rs = pss.executeQuery();
		String delete_contition=rs.getString(1); */
	
	
		int count=0,flength=0;
			File f = new File(dirpath + "\\" + enroll);
			
			if (f.exists() && f.isDirectory()){
				
				File flist[]=f.listFiles();
				
				flength=flist.length;
				if(flength==1)
				{
					File fflist[]=flist[0].listFiles();
					
				 for (int i =0;i<fflist.length;i++)
				{
					if(fflist[i].delete())
					{
						count++;
					}
				}  
				flist[0].delete();
				
				}
				if(flength==2)
				{
					File f1[]=flist[0].listFiles();
					File f2[]=flist[1].listFiles();
					 for (int i =0;i<f1.length;i++)
						{
							if(f1[i].delete())
							{
								count++;
							}
						}  
					 for (int i =0;i<f2.length;i++)
						{
							if(f2[i].delete())
							{
								count++;
							}
						}  
					flist[0].delete();
					flist[1].delete();
				}
				
			
				
				
					if(count==flength)
					{ if(f.delete())
					  {
					 PreparedStatement ps = con.prepareStatement("delete from alu_data where enroll=?");
					ps.setString(1, enroll);
					int del=ps.executeUpdate();
					if(del==1)
					{
					 response.sendRedirect("admin.jsp"); 
					}
					else
					{
						out.println("Deleting Information Is Not Sucessfull (Only Some Information Is Deleted Try Again) Error 106");
					}
					  } 
					}

			}
			else
			{
				out.println("File Not Found");
				
			}
    /*    out.println(session.getAttribute("user")); */
  
		} catch (Exception e) {
			out.println(e);
			out.println("this is exception");
		}
	%>
	
</body>
</html>