<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.regex.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
try{
	 Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/datademo", "root", "root"); 
	String name="",lname="",enroll="",add="",branch="",status="3",mobile="",email="";
	name=request.getParameter("t1").toString();
	lname=request.getParameter("tl1").toString();
	enroll=request.getParameter("t2").toString();
	add=request.getParameter("ta1").toString();
	mobile=request.getParameter("number").toString();
	email=request.getParameter("email").toString();
	branch=request.getParameter("branchmenu").toString();
	status=request.getParameter("statusmenu").toString();
	String status_c="",alert="";
	int docs=0;
	
 File f_of_workspace = new File("./");
	String path_of_workspace=f_of_workspace.getAbsolutePath().substring(0,f_of_workspace.getAbsolutePath().length()-1);
	
	PreparedStatement pr= con.prepareStatement("select * from stud_data where en_no=?");
	pr.setInt(1, Integer.parseInt(enroll));
	ResultSet rs = pr.executeQuery();
	String dirpath=path_of_workspace+"\\WebContent\\documents",path="";
int go=0;
	
	
	if(rs.next())
{
		PreparedStatement ps1=con.prepareStatement("select * from alu_data where enroll=?");
		ps1.setInt(1,Integer.parseInt(enroll));
		ResultSet rs1 = ps1.executeQuery();
		if(rs1.next())
		{
			 if(status.equals(rs1.getString("current_stat")))
			{
		
				 if(status.equals("1")||status.equals("2"))
				{
					if(rs1.getInt("doc_1")==0)
					{
						path=dirpath+"\\"+enroll;
						go++;
					}
					else
					{
						alert="You have already uploaded document \t";
					}
				}
			
				else if(status.equals("3"))
				{
					int c=0;
					if((rs1.getInt("doc_1")==0) )
					{
						path=dirpath+"\\"+enroll;
						docs+=5;
						go++;
					}
					else
					{
						c++;
					}
				
				
					if(rs1.getInt("doc_2")==0)
					{
						path=dirpath+"\\"+enroll;
						docs+=10;
						go++;
					}
					else
					{
						c++;
					}
				
					if(c>0)
					{
						alert="You have already uploaded 2 documents \t";
					}
					else
					{
						path=dirpath+"\\"+enroll;
						go++;

					}
				} 
			} 
	
		else
		{
			alert="You  seleted wrong information\t";
		}
		
	}
	
	else
		{
		PreparedStatement sp = con.prepareStatement("insert into alu_data  values(?,?,?,?,?,?,?,?,?,?,?,?)");
		sp.setString(1,name);
		sp.setString(2,lname);
		sp.setInt(3,Integer.parseInt(enroll));
		sp.setString(4,add);
		sp.setString(5,status);
		sp.setInt(6,0);
		sp.setInt(7,0);
		sp.setString(8,"null");
		sp.setString(9,"null");
		sp.setString(10,mobile);
		sp.setString(11,email);
		sp.setString(12,branch);
	
		int i= sp.executeUpdate();
	
			File f= new File(dirpath+"\\"+enroll);
			if(f.mkdir()){
			path=dirpath+"\\"+enroll;
			go++;
			}
			else
			{
				alert="Directory is created";
				go=-1;
			}
		
				
			
		
		}
}
		
		/* out.println(rs.getInt(2)+" "+rs.getString(3)+" "+rs.getInt(4)+" "+rs.getString(5)+" "+rs.getString(6)+" "+rs.getString(7)+"<br>");
	while(rs.next())
	{
		out.println(rs.getInt(2)+" "+rs.getString(3)+" "+rs.getInt(4)+" "+rs.getString(5)+" "+rs.getString(6)+" "+rs.getString(7)+"<br>");

	} */
	
	else
	
	{
		alert="no data is found for enrollment \t"+enroll;
	}
	
	 ServletContext sc = getServletContext();
				if(go>0)
				{
					if(status.equals("1"))
					{
						
						status_c="1";
					}
					else if(status.equals("2"))
					{
						status_c="2";
					}
					else if(status.equals("3"))
					{
						if(docs==5)
						{
							status_c="11";
						}
						else if(docs==10)
						{
							status_c="22";
						}
						else if(docs==15)
						{
							status_c="3";
						}
						else
						{
							status_c="3";
						}
					}
				sc.setAttribute("enroll", enroll);
				sc.setAttribute("path", path); 
				sc.setAttribute("hide",status_c);
				response.sendRedirect("alu_document_up.jsp");
				}
				else{
				sc.setAttribute("alert",alert);
				response.sendRedirect("alu_form.jsp");}
				
	

}
	
	
	catch(Exception e)
{
	out.println(e);
	out.println("An exceptin 401");
}



%>

</body>
</html>