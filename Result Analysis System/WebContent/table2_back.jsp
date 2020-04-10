<%@page import="java.util.Date"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/datademo","root","root");



ArrayList<Integer> tb=new ArrayList<Integer>();
ArrayList<Integer> tb1=new ArrayList<Integer>();
ArrayList<Integer> tb2=new ArrayList<Integer>();
ArrayList<Integer> tb3=new ArrayList<Integer>();
ArrayList<Integer> tb4=new ArrayList<Integer>();
ArrayList<Integer> tb5=new ArrayList<Integer>();
ArrayList<Integer> ns=new ArrayList<Integer>();

ArrayList<ArrayList> arrli=new ArrayList<ArrayList>();
arrli.add(tb);
arrli.add(tb1);
arrli.add(tb2);
arrli.add(tb3);
arrli.add(tb4);
arrli.add(tb5);

//ArrayList<Integer> enroll= new ArrayList<Integer>(Arrays.asList(2000000000,1900000000,1800000000,1700000000,1600000000,1500000000,1400000000,1300000000,1200000000))ArrayList<String> exarr = new ArrayList<String>(Arrays.asList("s22","s21","s20","s19","s18","s17","s16","s15","s14","s13","s12"));
//ArrayList<String> wex = new ArrayList<String>(Arrays.asList("w21","w20","w19","w18","w17","w16","w15","w14","w13","w12"));

//String exarr[]={"s22","s21","s20","s19","s18","s17","s16","s15","s14","s13","s12","s11","s10","s9"};
//int enroll[]={2000000000,1900000000,1800000000,1700000000,1600000000,1500000000,1400000000,1300000000,1200000000};
int sem[]={2,4,6};
//String wex[]={"w21","w20","w19","w18","w17","w16","w15","w14","w13","w12"};
PreparedStatement ps ;
ResultSet r;
String br=request.getParameter("val");
if(br==null||br=="null")
{
br="CO";	
}
String rows[]={"r1","r2","r3","r4","r5","r6"};

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
int temp=0,ben=0,sen=0;

for(int i=0;i<=5;i++)
{
	temp=0;
	ben=((cyear+1)*100000000)-(i*100000000);
	sen=((cyear*100000000)-(i*100000000));
	      
	   
for(int j=2+i;j>=0+i;j--)
{temp=temp+2;
	ps=con.prepareStatement(" SELECT count(en_no) FROM stud_data WHERE Exam_Name =?   AND en_no>=? AND en_no <? AND Year_cs=? AND Course=?");                                               
	ps.setString(1,"s"+((cyear+3)-j));//20
	ps.setInt(2,sen);//>19
	ps.setInt(3,ben);//<2000
	ps.setInt(4,temp);//2
	ps.setString(5,br);
	r=ps.executeQuery();
	r.next();
	arrli.get(i).add(r.getInt(1));
	
	ps.setString(1,"w"+((cyear+2)-j));//w19
	ps.setInt(2,sen);//19
	ps.setInt(3,ben);//20
	ps.setInt(4,temp-1);
	ps.setString(5,br);
	r=ps.executeQuery();
	r.next();
	arrli.get(i).add(r.getInt(1));
	
	
}


}

cyear=cyear+1;
ben=cyear*100000000;
sen=(cyear-1)*100000000;
for(int i=0;i<6;i++)
{ 
	
PreparedStatement p1=con.prepareStatement("select count(*) from stud_data where en_no>? and en_no<? and course=? and year_cs=2 and Exam_name=?");                                                                                                                                                                                   
p1.setInt(1,sen);//16
p1.setInt(2,ben);//17
p1.setString(3,br);//branch
p1.setString(4,"s"+cyear);

ResultSet rs = p1.executeQuery();
rs.next();
ns.add(i,rs.getInt(1) );
cyear--;
ben=ben-100000000;
sen=sen-100000000;

}

out.println(tb.get(0)+"'"+tb.get(1)+"'"+tb.get(2)+"'"+tb.get(3)+"'"+tb.get(4)+"'"+tb.get(5)+"'"+tb1.get(0)+"'"+tb1.get(1)+"'"+tb1.get(2)+"'"+tb1.get(3)+"'"+tb1.get(4)+"'"+tb1.get(5)+"'"+tb2.get(0)+"'"+tb2.get(1)+"'"+tb2.get(2)+"'"+tb2.get(3)+"'"+tb2.get(4)+"'"+tb2.get(5)+"'"+tb3.get(0)+"'"+tb3.get(1)+"'"+tb3.get(2)+"'"+tb3.get(3)+"'"+tb3.get(4)+"'"+tb3.get(5)+"'"+tb4.get(0)+"'"+tb4.get(1)+"'"+tb4.get(2)+"'"+tb4.get(3)+"'"+tb4.get(4)+"'"+tb4.get(5)+"'"+tb5.get(0)+"'"+tb5.get(1)+"'"+tb5.get(2)+"'"+tb5.get(3)+"'"+tb5.get(4)+"'"+tb5.get(5)+"'"+ns.get(0)+"'"+ns.get(1)+"'"+ns.get(2)+"'"+ns.get(3)+"'"+ns.get(4)+"'"+ns.get(5));


}catch(Exception e)
{
	out.println(e);}%>
</body>

</html>
<%--

	ps=con.prepareStatement(" SELECT count(en_no) FROM stud_data WHERE Exam_Name =?   AND en_no>=? AND en_no <? AND Year_cs=? AND Course=?");                                               
	ps.setString(1,exarr.get(j));
	ps.setInt(2,enroll.get(i+1));
	ps.setInt(3,enroll.get(i));
	ps.setInt(4,sem[tem]);
	ps.setString(5,br);
	r=ps.executeQuery();
	r.next();
	arrli.get(i).add(r.getInt(1));
	
	ps.setString(1,wex.get(j));
	ps.setInt(2,enroll.get(i+1));
	ps.setInt(3,enroll.get(i));
	ps.setInt(4,sem[tem]-1);
	ps.setString(5,br);
	r=ps.executeQuery();
	r.next();
	arrli.get(i).add(r.getInt(1));
	tem++;
	


<%-- %
for(int i=0;i<=5;i++)
{int tem=0;
for(int j=2+i;j>=0+i;j--)
{
	ps=con.prepareStatement(" SELECT count(en_no) FROM stud_data WHERE Exam_Name =?   AND en_no>=? AND en_no <? AND Year_cs=? AND Course=?");                                               
	ps.setString(1,exarr[j]);
	ps.setInt(2,enroll[i+1]);
	ps.setInt(3,enroll[i]);
	ps.setInt(4,sem[tem]);
	ps.setString(5,br);
	r=ps.executeQuery();
	r.next();
	arrli.get(i).add(r.getInt(1));
	tem++;
}
request.setAttribute(rows[i],arrli.get(i));
}
%> --%>