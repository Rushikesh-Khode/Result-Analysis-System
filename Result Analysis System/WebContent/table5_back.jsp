<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.apache.xmlbeans.impl.xb.xsdschema.Public"%>
<%@page import="org.apache.commons.math3.exception.NotANumberException"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*" %>
<%@page import="java.lang.ArithmeticException" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
try
{
	String al=request.getParameter("val");
	if(al=="null"||al==null)
	{
		al="CO";
	}
	else
	{
		
	}
	 Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/datademo", "root", "root");                                                                                      
	 
	 
	// Connection con=(Connection)session.getAttribute("con");
	 Date d = new Date();
int date=d.getDate();
int month=d.getMonth();
int year=d.getYear();
int cyear=year-100;
if(month<=8)
{
if(month==8 && date<=30)
{
cyear=(year-100)-1;	
}
else if(month<8)
{
	cyear=(year-100)-1;	
}

}
	
	
	ArrayList<Float> ttr1 = new ArrayList<Float>();
	ArrayList<Integer> ttr2 = new ArrayList<Integer>();
	ArrayList<Integer> ttr3 = new ArrayList<Integer>();
	String bra=al;
	/* if(br==null||br=="null")
	{

	} */

	int dc=cyear;
	
	int  ben=cyear*100000000;
	 int sen=(cyear-1)*100000000;
	
	 int index=0;
	 for(int i=0;i<3;i++)
	 {
		 int ssen=(i*100000000);
		 int bben=(1+i*100000000);
		 PreparedStatement pss1=con.prepareStatement("SELECT AVG(percent) FROM stud_data WHERE course=? AND Exam_Name =? AND percent>0 AND en_no>=? AND en_no <? AND year_cs=2 AND en_no IN (SELECT en_no FROM stud_data  WHERE course=? AND Exam_Name =? AND percent>0 AND en_no>=? AND en_no <? AND year_cs=1)");
		 pss1.setString(1,bra);
		 pss1.setString(2,'s'+String.valueOf(dc));
		 pss1.setInt(3, sen-ssen);
		 pss1.setInt(4, ben-bben);
		 pss1.setString(5,bra);
		 pss1.setString(6,'w'+String.valueOf(dc-1));
		 pss1.setInt(7, sen-ssen);
		 pss1.setInt(8, ben-bben);
		 ResultSet rss = pss1.executeQuery();
		rss.next();
			ttr1.add(rss.getFloat(1));
			
			PreparedStatement pss2=con.prepareStatement("SELECT count(percent) FROM stud_data WHERE course=? AND Exam_Name =? AND percent>0 AND en_no>=? AND en_no <? AND year_cs=2 AND en_no IN (SELECT en_no FROM stud_data  WHERE course=? AND Exam_Name =? AND percent>0 AND en_no>=? AND en_no <? AND year_cs=1)");
			 pss2.setString(1,bra);
			 pss2.setString(2,'s'+String.valueOf(dc));
			 pss2.setInt(3, sen-ssen);
			 pss2.setInt(4, ben-bben);
			 pss2.setString(5,bra);
			 pss2.setString(6,'w'+String.valueOf(dc-1));
			 pss2.setInt(7, sen-ssen);
			 pss2.setInt(8, ben-bben);
			 ResultSet rss1 = pss2.executeQuery();
			rss1.next();
				ttr2.add(rss1.getInt(1));

		
		 
	
		 PreparedStatement pss3=con.prepareStatement("SELECT count(*) FROM stud_data WHERE course=? AND Exam_Name =?  AND en_no>=? AND en_no <? AND year_cs=2 ");
		 pss3.setString(1,bra);
		 pss3.setString(2,'s'+String.valueOf(dc));
		 pss3.setInt(3, sen-ssen);
		 pss3.setInt(4, ben-bben);
		
		 ResultSet rss2 = pss3.executeQuery();
		rss2.next();
			ttr3.add(rss2.getInt(1));
			dc--;
	 }
	 
	 float api1=ttr1.get(0)*(ttr2.get(0)/(float)ttr3.get(0));
	 float api2=ttr1.get(1)*(ttr2.get(1)/(float)ttr3.get(1));
	float api3=ttr1.get(2)*(ttr2.get(2)/(float)ttr3.get(2));
		if(String.valueOf(api1).equals("NaN"))
		{
			api1=0;
		}
		if(String.valueOf(api2).equals("NaN"))
		{
			api2=0;
		}
		if(String.valueOf(api3).equals("NaN"))
		{
			api3=0;
		}
	
		float aapi=(api1+api2+api3)/3;
		
	 out.println(ttr1.get(0)+"'"+ttr1.get(1)+"'"+ttr1.get(2)+"'"+ttr2.get(0)+"'"+ttr2.get(1)+"'"+ttr2.get(2)+"'"+ttr3.get(0)+"'"+ttr3.get(1)+"'"+ttr3.get(2)+"'"+api1+"'"+api2+"'"+api3+"'"+aapi);
	
	 
}catch(Exception e)
{
	out.println(e);}
	 
	 %>



<%-- <table border="1" align="center">
		<tr>
			<td><b><center>Academic Performance</td>

			<td><b><center>CAYm1
                      </td>

			<td><b><center>CAYm2
                      </td>

			<td><b><center>CAYm3

</td>
		</tr>



		<tr>
			<td> 
			Mean of CGPA or Mean Percentage of all successful students
<br>(X)

			</td>

			<%
			try{
			out.println("<td>"+ttr1.get(0)+"</td>");
			out.println("<td>"+ttr1.get(1)+"</td>");
			out.println("<td>"+ttr1.get(2)+"</td>");
			}catch(NullPointerException ee)
			{
				out.println("<td></td><td></td>");
			}
			
			
			
			%>
		</tr>

		<tr>
			<td> 
			Total no. of successful students (Y)


			</td>
<% 
			try{
			out.println("<td>"+ttr2.get(0)+"</td>");
			out.println("<td>"+ttr2.get(1)+"</td>");
			out.println("<td>"+ttr2.get(2)+"</td>");
			}catch(NullPointerException ee)
			{
				out.println("<td></td><td></td>");
			}%>
		</tr>

		<tr>
			<td> 
			Total no. of students appeared in the examination (Z)

			</td>

			<% 
			try{
			out.println("<td>"+ttr3.get(0)+"</td>");
			out.println("<td>"+ttr3.get(1)+"</td>");
			out.println("<td>"+ttr3.get(2)+"</td>");
			}catch(NullPointerException ee)
			{
				out.println("<td></td><td></td>");
			}
	%>
			
		</tr>
	

		<tr>
			<td> 
			API = X* (Y/Z)

			</td>

			<% 
			float api1=ttr1.get(0)*(ttr2.get(0)/(float)ttr3.get(0));
			float api2=ttr1.get(1)*(ttr2.get(1)/(float)ttr3.get(1));
			float api3=ttr1.get(2)*(ttr2.get(2)/(float)ttr3.get(2));
			try{
			if(String.valueOf(api1)!="NaN"||String.valueOf(api1)!="NaN"||String.valueOf(api1)!="NaN"){
			out.println("<td>"+api1+"</td>");
			out.println("<td>"+api2+"</td>");
			out.println("<td>"+api3+"</td>");}
			else
			{
				out.println("<td>0</td><td>0</td><td>0</td>");
				
			}
			}catch(NullPointerException ee)
			{
				out.println("<td></td><td></td>");
			}
			
			
			%>
		</tr>

		<tr>
			<td> 
			Average API = (AP1 + AP2 + AP3)/3

			</td>

			<%
			try{
				
				float aapi=(api1+api2+api3)/3;
				if(String.valueOf(aapi)!="NaN")
				out.println("<td colspan='3'>"+aapi+"</td>");
				else
					out.println("<td colspan='3'>0</td>");

			}
			
			catch(NullPointerException ee)
			{
				out.println("<td colspan='3'></td>");
}				
			
			out.println("<script>document.body.scrollIntoView(false);</script>");
if(al!="null" && al!=null){
			String  aert="The Data Generated For Banch :"+al;
			out.println("<script>alert('"+aert+"')</script>");}
			
			}			
catch(Exception e)
{
				out.println(e);
}

			
			
			
			%>
		</tr>
		</table> --%>
</body>
</html>