<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*" %>
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
		al="co";
	}
	else
	{

	}
	 Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/datademo", "root", "root");                                                                                      
	 
	 
/* 	 Connection con=(Connection)session.getAttribute("con"); */
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
	
	
	ArrayList<Integer> tr1 = new ArrayList<Integer>();
	ArrayList<Integer> tr2 = new ArrayList<Integer>();
	ArrayList<Double> tr3 = new ArrayList<Double>();
	String br=al;
	
	/* if(br==null||br=="null")
	{

	} */


	int dc=cyear; 
	int  ben=((cyear-2)*100000000);
	 int sen=(cyear-3)*100000000;
	
	 for(int i=0;i<3;i++)
	 { 
	 	
	  PreparedStatement p1=con.prepareStatement("select count(*) from stud_data where en_no>? and en_no<? and course=? and year_cs=2 and Exam_name=?");                                                                                                                                                                                   
	 p1.setInt(1,sen);//16
	 p1.setInt(2,ben);//17
	 p1.setString(3,br);
	 p1.setString(4,"s"+((cyear-2)-i));
	 ResultSet rs = p1.executeQuery();
	 rs.next();
	 tr1.add(i,rs.getInt(1) );

	 PreparedStatement p2 = con.prepareStatement("select count(*) from stud_data where en_no>? and en_no<? and course=? and year_cs=6 and Exam_name=?");                                                                                                                                                                                   
	 p2.setInt(1,sen);//16
	 p2.setInt(2,ben);//17
	 p2.setString(3,br);
	 p2.setString(4,"s"+(cyear-i));
	  rs = p2.executeQuery();
	 rs.next();
	 tr2.add(i,rs.getInt(1));

	 PreparedStatement p3 = con.prepareStatement("SELECT count( *) FROM stud_data WHERE course='"+br+"' AND Exam_Name =?  AND en_no>=? AND en_no <? AND year_cs=3");
	 p3.setString(1,"w"+((cyear-2)-i));
	 p3.setInt(2,sen+100000000);
	 p3.setInt(3,ben+100000000);
	 rs=p3.executeQuery();
	 rs.next();
	 double si=(double)tr2.get(i)/((double)tr1.get(i)+(double)rs.getInt(1));
	 tr3.add(i,si);


	 ben=ben-100000000;
	 sen=sen-100000000;
	 dc=dc-1;



	  } 
	 double asi=((tr3.get(0)+tr3.get(1)+tr3.get(2))/3);
	
	 out.println(tr1.get(0)+","+tr1.get(1)+","+tr1.get(2)+","+tr2.get(0)+","+tr2.get(1)+","+tr2.get(2)+","+tr3.get(0)+","+tr3.get(1)+","+tr3.get(2)+","+asi);

	
}catch(Exception e)
{
	out.println(e);}
%>












<%-- <table border="1" align="center" >
		<tr>
			<td><b><center>ITEM</td>

			<td><b><center>Last Year Graduate,
                        <br><b>(LYG)
                      </td>

			<td><b><center>Last Year Graduate
                 <br>    <b>         Minus 1 Batch,
                      <br><b>(LYGm1)

                      </td>

			<td><b><center>Last Year Graduate
             <br><b>Minus 2 Batch,
              <br><b>(LYGm2)

</td>
		</tr>



		<tr>
			<td> 
			Total number of students
            <br>(admitted through state level
             <br>counseling + admitted through
             <br>Institute  on level quota+
             <br>actually admitted through
             <br>lateral entry) (N1 + N2 + N3)

			</td>

			<% 
try{out.println("<td>"+tr1.get(0)+"</td>");
out.println("<td>"+tr1.get(1)+"</td>");
out.println("<td>"+tr1.get(2)+"</td>");

	
}
catch(NullPointerException e)
			{
	out.println("<td>null pointer</td><td></td>");
			}

			
			%>
		</tr>

		<tr>
			<td> 
			Number of students who have
         <br>passed  with backlogs in the
          <br>stipulated period


			</td>

				<% 
try{out.println("<td>"+tr2.get(0)+"</td>");
out.println("<td>"+tr2.get(1)+"</td>");
out.println("<td>"+tr2.get(2)+"</td>");

	
}
catch(NullPointerException e)
			{
	out.println("<td></td><td></td>");
			}

			
			%>
		</tr>

		<tr>
			<td> 
			Success index (SI)

			</td>

				<% 
try{
if(tr3.get(0).toString()=="NaN"){
	out.println("<td>0</td>");
	out.println("<td>0</td>");
	out.println("<td>0</td>");
	
}
else
{
out.println("<td>"+tr3.get(0)+"</td>");
out.println("<td>"+tr3.get(1)+"</td>");
out.println("<td>"+tr3.get(2)+"</td>");
}
	
}
catch(NullPointerException e)
			{
	out.println("<td></td><td></td>");
			}
				

			
			%>
		</tr>
	

		<tr>
			<td> 
			Average SI

			</td>

			<%
			double asi=((tr3.get(0)+tr3.get(1)+tr3.get(2))/3);
			if(String.valueOf(asi)=="NaN")
			{
				out.println("<td colspan='3'>0</td>");
			}
			else{
			out.println("<td colspan='3'>"+asi+"</tr>");
		
		
			al=null;
			}
}catch(Exception e)
{
	out.println(e);}
			%>
		</tr>
</table> --%>

</body>
</html>