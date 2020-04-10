<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
     <%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%try
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

	ArrayList<Float> tr1 = new ArrayList<Float>();
	ArrayList<Integer> tr2 = new ArrayList<Integer>();
	ArrayList<Integer> tr3 = new ArrayList<Integer>();
	String bra=al;
	/* if(br==null||br=="null")
	{

	} */


	int dc=cyear; 
	int  ben=(cyear*100000000);
	 int sen=((cyear-2)*100000000);

	 for(int i=0;i<3;i++)
	 {
		 int ssen=(i*100000000);
		 int bben=(1+i*100000000);
		 
		 PreparedStatement pss1=con.prepareStatement("SELECT AVG(percent) FROM stud_data WHERE course=? AND Exam_Name =? AND percent>0 AND en_no>=? AND en_no <? AND year_cs=4 AND en_no IN (SELECT en_no FROM stud_data  WHERE course=? AND Exam_Name =? AND percent>0 AND en_no>=? AND en_no <? AND year_cs=3)");
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
			tr1.add(rss.getFloat(1));
			
			PreparedStatement pss2=con.prepareStatement("SELECT count(percent) FROM stud_data WHERE course=? AND Exam_Name =? AND percent>0 AND en_no>=? AND en_no <? AND year_cs=4 AND en_no IN (SELECT en_no FROM stud_data  WHERE course=? AND Exam_Name =? AND percent>0 AND en_no>=? AND en_no <? AND year_cs=3)");
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
				tr2.add(rss1.getInt(1));

		
		 
	
		PreparedStatement pss3=con.prepareStatement("SELECT count(*) FROM stud_data WHERE course=? AND Exam_Name =?  AND en_no>=? AND en_no <? AND year_cs=4 ");
		 pss3.setString(1,bra);
		 pss3.setString(2,'s'+String.valueOf(dc));
		 pss3.setInt(3, sen-ssen);
		 pss3.setInt(4, ben-bben);
		
		 ResultSet rss2 = pss3.executeQuery();
		rss2.next();
			tr3.add(rss2.getInt(1)); 
			
			dc--;
			
	 }
	 
	 
		float api1=tr1.get(0)*(tr2.get(0)/(float)tr3.get(0));
		float api2=tr1.get(1)*(tr2.get(1)/(float)tr3.get(1));
		float api3=tr1.get(2)*(tr2.get(2)/(float)tr3.get(2));
		
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
		
		
		
		
		
		
		double asi=(tr3.get(0)+tr3.get(1)+tr3.get(2))/3;
		
		
		
		 out.println(tr1.get(0)+"'"+tr1.get(1)+"'"+tr1.get(2)+"'"+tr2.get(0)+"'"+tr2.get(1)+"'"+tr2.get(2)+"'"+tr3.get(0)+"'"+tr3.get(1)+"'"+tr3.get(2)+"'"+api1+"'"+api2+"'"+api3+"'"+asi);

}
catch(Exception e)
{
	out.println(e);}

%>
</body>
</html>