<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%try{

 Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/datademo", "root", "root"); 
/*  Date d = new Date();
int cyear=d.getYear()-100;
cyear=19; */
ArrayList<Integer> tr1 = new ArrayList<Integer>();
ArrayList<Integer> tr2 = new ArrayList<Integer>();
ArrayList<Double> tr3 = new ArrayList<Double>();
String br=request.getParameter("val");
if(br==null||br=="null")
{br="CO";

}
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

int dc=cyear; 
int  ben=((cyear-2)*100000000);
 int sen=(cyear-3)*100000000;
//sen=small enrollment
//ben=big enrollment

 for(int i=0;i<3;i++)
{ 
	
 PreparedStatement p1=con.prepareStatement("select count(*) from stud_data where en_no>? and en_no<? and course=? and year_cs=2 and Exam_name=?");                                                                                                                                                                                   
p1.setInt(1,sen);//16
p1.setInt(2,ben);//17
p1.setString(3,br);//branch
p1.setString(4,"s"+((cyear-2)-i));

ResultSet rs = p1.executeQuery();
rs.next();
tr1.add(i,rs.getInt(1) );


PreparedStatement p2 = con.prepareStatement("SELECT COUNT(en_no) FROM stud_data WHERE course='"+br+"' and Exam_Name =? AND percent>0 AND en_no>=? AND en_no <? AND year_cs=6 AND  en_no IN  (SELECT en_no FROM stud_data WHERE Exam_Name =?  AND percent>0 AND en_no>=? AND en_no <? AND year_cs=5 AND en_no IN (SELECT en_no FROM stud_data WHERE exam_name=? AND percent>0 AND en_no>? AND en_no <? AND year_cs=4 AND en_no IN  (SELECT en_no FROM stud_data WHERE exam_name=?  AND percent>0 AND en_no>? AND en_no <? AND year_cs=3 AND en_no IN  (SELECT en_no FROM stud_data WHERE exam_name=?  AND percent>0 AND en_no>? AND en_no <? AND year_cs=2  and en_no IN (SELECT en_no from stud_data where exam_name=? and percent>0 and en_no>? and en_no<? and year_cs=1) ))) )");
p2.setString(1,"s"+dc);
p2.setInt(2,sen);
p2.setInt(3,ben);
p2.setString(4,"w"+(dc-1));
p2.setInt(5,sen);
p2.setInt(6,ben);
p2.setString(7,"s"+(dc-1));
p2.setInt(8,sen);
p2.setInt(9,ben);
p2.setString(10,"w"+(dc-2));
p2.setInt(11,sen);
p2.setInt(12,ben);
p2.setString(13,"s"+(dc-2));
p2.setInt(14,sen);
p2.setInt(15,ben);
p2.setString(16,"w"+(dc-3));
p2.setInt(17,sen);
p2.setInt(18,ben);
 rs =p2.executeQuery();
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
 double avgsi=(tr3.get(0)+tr3.get(1)+tr3.get(2))/3;

out.println(tr1.get(0)+"'"+tr1.get(1)+"'"+tr1.get(2)+"'"+tr2.get(0)+"'"+tr2.get(1)+"'"+tr2.get(2)+"'"+tr3.get(0)+"'"+tr3.get(1)+"'"+tr3.get(2)+"'"+avgsi);

}catch(Exception e)
{e.printStackTrace();
out.println(e);}
%>

</body>
</html>