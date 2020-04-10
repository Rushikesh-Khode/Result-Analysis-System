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
		String dirpath = "D:\\sem 5 project\\AJAVA pro\\cpp v2.3\\WebContent\\documents"; 
	
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
					ps.executeUpdate();
					alert="Enrollment : "+enroll+" Is Deleted Sucessfully";
					  }
					}

			}
			else
			{
				out.println("File Not Found");
			}
    /*    out.println(session.getAttribute("user")); */
  response.sendRedirect("admin.jsp?val="+s+"");  
		} catch (Exception e) {
			out.println(e);
			out.println("this is exception");
		}
	%>
	
</body>
</html>