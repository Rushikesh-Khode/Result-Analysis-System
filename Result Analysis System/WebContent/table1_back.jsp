<%@page import="java.util.Date"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body id="body1">
<%try{
	Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/datademo","root","root");


ArrayList<Integer> cy=new ArrayList<Integer>();
ArrayList<Integer> cy1=new ArrayList<Integer>();
ArrayList<Integer> cy2=new ArrayList<Integer>();
ArrayList<Integer> cy3=new ArrayList<Integer>();
ArrayList<Integer> cy4=new ArrayList<Integer>();
ArrayList<Integer> cy5=new ArrayList<Integer>();
ArrayList<Integer> ns=new ArrayList<Integer>();
ArrayList<ArrayList> arrli=new ArrayList<ArrayList>();
arrli.add(cy);
arrli.add(cy1);
arrli.add(cy2);
arrli.add(cy3);
arrli.add(cy4);
arrli.add(cy5);

//int enroll[]={2000000000,1900000000,1800000000,1700000000,1600000000,1500000000,1400000000,1300000000,1200000000};

//ArrayList<Integer> enroll= new ArrayList<Integer>(Arrays.asList(2000000000,1900000000,1800000000,1700000000,1600000000,1500000000,1400000000,1300000000,1200000000));
//String exyr[]={"s22","s21","s20","s19","s18","s17","s16","s15","s14","s13","s12"};
//ArrayList<String> exyr = new ArrayList<String>(Arrays.asList("s22","s21","s20","s19","s18","s17","s16","s15","s14","s13","s12"));

//String wex[]={"w21","w20","w19","w18","w17","w16","w15","w14","w13","w12"};
//ArrayList<String> wex = new ArrayList<String>(Arrays.asList("w21","w20","w19","w18","w17","w16","w15","w14","w13","w12"));

String rown[]={"r1","r2","r3","r4","r5","r6"};
//String cou[]={"CO","ME","CE","EE","ET"};
//int sem[]={2,4,6};
String br=request.getParameter("val");
if(br==null||br=="null")
{br="CO";
}




/* Date d= new Date();
int cyear=d.getYear()-100; 
int cyear=19; */


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





int temp=0,ben=0,sen=0,dben=(cyear+1)*100000000,dsen=cyear*100000000,ssem=(cyear+3),wsem=(cyear+2);
for(int j=0;j<=5;j++)
{
	temp=0;
	ben=(dben-(j*100000000));
	sen=((dsen)-(j*100000000));
	      
	   
for(int i=2+j;i>=0+j;i--){
	temp=temp+2;
PreparedStatement ps = con.prepareStatement("SELECT count(en_no) FROM stud_data WHERE Exam_Name =? AND percent>0  AND en_no>=? AND en_no <? AND Year_cs=? AND Course=?");
ps.setString(1,"s"+(ssem-i));//20
ps.setInt(2,sen);//>19
ps.setInt(3,ben);//<2000
ps.setInt(4,temp);//2
ps.setString(5,br);//co
ResultSet rs = ps.executeQuery();
rs.next();
arrli.get(j).add(rs.getInt(1));
PreparedStatement ps1 = con.prepareStatement("SELECT count(en_no) FROM stud_data WHERE Exam_Name =? AND percent>0  AND en_no>=? AND en_no <? AND Year_cs=? AND Course=?");
ps1.setString(1,"w"+(wsem-i));//w19
ps1.setInt(2,sen);//19
ps1.setInt(3,ben);//20
ps1.setInt(4,temp-1);//
ps1.setString(5,br);

ResultSet rs1 = ps1.executeQuery();
rs1.next();
arrli.get(j).add(rs1.getInt(1));



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

//con.close();
out.println(cy.get(0)+"'"+cy.get(1)+"'"+cy.get(2)+"'"+cy.get(3)+"'"+cy.get(4)+"'"+cy.get(5)+"'"+cy1.get(0)+"'"+cy1.get(1)+"'"+cy1.get(2)+"'"+cy1.get(3)+"'"+cy1.get(4)+"'"+cy1.get(5)+"'"+cy2.get(0)+"'"+cy2.get(1)+"'"+cy2.get(2)+"'"+cy2.get(3)+"'"+cy2.get(4)+"'"+cy2.get(5)+"'"+cy3.get(0)+"'"+cy3.get(1)+"'"+cy3.get(2)+"'"+cy3.get(3)+"'"+cy3.get(4)+"'"+cy3.get(5)+"'"+cy4.get(0)+"'"+cy4.get(1)+"'"+cy4.get(2)+"'"+cy4.get(3)+"'"+cy4.get(4)+"'"+cy4.get(5)+"'"+cy5.get(0)+"'"+cy5.get(1)+"'"+cy5.get(2)+"'"+cy5.get(3)+"'"+cy5.get(4)+"'"+cy5.get(5)+"'"+ns.get(0)+"'"+ns.get(1)+"'"+ns.get(2)+"'"+ns.get(3)+"'"+ns.get(4)+"'"+ns.get(5));                                                                                                                                   

}catch(Exception e)
{out.println(e);}
%>

</body>
</html>
<%-- <%-- <%for(int j=0;j<=5;j++) 
{
	int tem=0;
for(int i=2+j;i>=0+j;i--){
	
PreparedStatement ps = con.prepareStatement("SELECT count(en_no) FROM stud_data WHERE Exam_Name =? AND percent>0  AND en_no>=? AND en_no <? AND Year_cs=? AND Course=?");
ps.setString(1,exyr.get(i));//20
ps.setInt(2,enroll.get(j+1));//>19
ps.setInt(3,enroll.get(j));//<2000
ps.setInt(4,sem[tem]);//2
ps.setString(5,br);//co
ResultSet rs = ps.executeQuery();
rs.next();
arrli.get(j).add(rs.getInt(1));
PreparedStatement ps1 = con.prepareStatement("SELECT count(en_no) FROM stud_data WHERE Exam_Name =? AND percent>0  AND en_no>=? AND en_no <? AND Year_cs=? AND Course=?");
ps1.setString(1,wex.get(i));//w19
ps1.setInt(2,enroll.get(j+1));//19
ps1.setInt(3,enroll.get(j));//20
ps1.setInt(4,sem[tem]-1);//
ps1.setString(5,br);

ResultSet rs1 = ps1.executeQuery();
rs1.next();
arrli.get(j).add(rs1.getInt(1));
tem++;

}

request.setAttribute(rown[j],arrli.get(j));
} %> --%>
