<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Result Analysis System</title>
	<link rel="stylesheet" href="css/styles.css">
	<link rel="stylesheet" href="css/table.css">
	<script src="css/nav.js"></script>
	<script src="css/nav1.js"></script>
	<script>
	$(document).ready(function(){
		$(".hamburger").click(function(){
		   $(".wrapper").toggleClass("collapse");
		   sts=sessionStorage.getItem("ham");
		   if(sts!==null){
			 sts=parseInt(sts)+1;
			sessionStorage.setItem("ham",sts);
		    }
		   else
			   {
				sessionStorage.setItem("ham",2);
			   }
		});
	});

	if(parseInt(sessionStorage.getItem("ham"))%2==0)
		{
		$(document).ready(function(){
			   $(".wrapper").toggleClass("collapse");});
					
		}
/* 
  var lo = localStorage.getItem("theme");
  if (lo == "" || lo == null || lo == "null") {

  } else {

    if (lo == "dark") {
      document.getElementById("body1").style.color = "white";
      document.getElementById("body1").style.background = "#404040";
      document.getElementById("dc").checked=true;
      
    }

    else {
      document.getElementById("body1").style.color = "black";
      document.getElementById("body1").style.background = "white";
      
    }
  }
  function dark() {

    if (document.getElementById("dc").checked) {

      document.getElementById("body1").style.color = "white";
      document.getElementById("body1").style.background = "#0d0d0d";
      localStorage.setItem("theme", "dark");
      
    } else {
      document.getElementById("body1").style.color = "black";
      document.getElementById("body1").style.background = "white";
      localStorage.setItem("theme", "light");
      
    }
  
  } */
</script>



<style type="text/css">
.tbl{
line-height: 35px;
}
</style>



<%-- <%
try{
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); //HTTP 1.1 
	response.setHeader("Pragma","no-cache"); //HTTP 1.0 
	response.setDateHeader ("Expires", 0);
String user=session.getAttribute("user").toString();
if(user==""||user==" "||user==null)
{
	response.sendRedirect("admin_login.jsp");
}

out.println("<p align='left'>Welcome User :"+user+"</p>");
out.println("<a href='admin_logout.jsp'>LogOut</a>");
out.println("<br>");

}catch(NullPointerException e)
{response.sendRedirect("admin_login.jsp");
	}
%> --%>
</head>




<%Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/datademo", "root","root"); %>


<body id="body1">

<!-- <a href="admin.jsp">click Here To See Full Details</a> -->
<br>







<div class="wrapper">
  <div class="top_navbar">
    <div class="hamburger" id="hamdark">
       <div class="one"></div>
       <div class="two"></div>
       <div class="three"></div>
    </div>
    <div class="top_menu">
    <a href="admin_logout.jsp">
      <div class="logo">RESULT ANALYSIS SYSTEM</div>
    </div>
  </div>
  </a>
  <div class="sidebar" id="sidedark">
      <ul>
      <li><a href="admin_logout.jsp">
          <span class="title">Home</span></a></li>
      
   <%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); //HTTP 1.1 
response.setHeader("Pragma","no-cache"); //HTTP 1.0 
response.setDateHeader ("Expires", 0);
String user="";
try{
	
 user=session.getAttribute("user").toString();

if(user.equals("")||user.equals(" ")||user.equals(null))
{
	response.sendRedirect("admin_login.jsp");
}
session.setAttribute("user", user);

out.println("<li><a href='admin_logout.jsp'><span class='title'>LogOut</span></a>");
	
}catch(NullPointerException e)
{ response.sendRedirect("admin_login.jsp");  

	}
%>

<a href="admin.jsp" style="color:white">Admin Home</a></span>
          </a></li>
          
          
 <!--       <li><a href="admin_login.jsp">
          <span class="title">Login As <br> Administrator</span></a></li> -->
   <!--      <li><a href="alu_form.jsp">
          <span class="title">Register As <br>Alumni</span>
          </a></li>
        <li><a href="contact.html">
          <span class="title">Contact Us</span>
          </a></li>
        <li><a href="about.html">
          <span class="title">About Us</span>
          </a></li> -->
          <li><a href="#">
          <span class="title"><input type="checkbox" onclick="dark()" id="dc">  DarkMode</span>
          </a></li>
    </ul>
  </div>
  
  <div class="main_container">
    <div class="formback" id="formdark">

 <p>Welcome User :
<%out.println(user);%>
</p>





<h2 align="center">Statistics</h2>

<br>
<br>


<center>
<table border=1 class="tbl">
<tr>
<td>Number Of Students Are :</td><%PreparedStatement st= con.prepareStatement("select count(*) from alu_data where current_stat='3' "); 
ResultSet rs = st.executeQuery();
rs.next();

out.println("<td>"+rs.getString(1)+"</td>");%>
</tr>
<tr>
<td>Number Of Entrepreneur's Are :</td><%PreparedStatement st1= con.prepareStatement("select count(*) from alu_data where current_stat='2' "); 
ResultSet rs1 = st1.executeQuery();
rs1.next();
out.println("<td>"+rs1.getString(1)+"</td>");%>
</tr>
<tr>
<td>
Number Of Employee's Are :</td><%PreparedStatement st2= con.prepareStatement("select count(*) from alu_data where current_stat='1' "); 
ResultSet rs2 = st2.executeQuery();
rs2.next();
out.println("<td>"+rs2.getString(1)+"</td>");%>

</tr>
<tr>
<td>
Computer Engineering Alumni Registered:</td><%PreparedStatement st3= con.prepareStatement("select count(*) from alu_data where cource='co' "); 
ResultSet rs3 = st3.executeQuery();
rs3.next();
out.println("<td>"+rs3.getString(1)+"</td>");%>

</tr>
<tr>
<td>Civil Engineering Alumni Registered: </td><%PreparedStatement st4= con.prepareStatement("select count(*) from alu_data where cource='ce' "); 
ResultSet rs4 = st4.executeQuery();
rs4.next();
out.println("<td>"+rs4.getString(1)+"</td>");%>
</tr>

<tr>
<td>
Mechanical Engineering Alumni Registered:</td><%PreparedStatement st5= con.prepareStatement("select count(*) from alu_data where cource='me' "); 
ResultSet rs5 = st5.executeQuery();
rs5.next();
out.println("<td>"+rs5.getString(1)+"</td>");%>
</tr>
<tr>
<td>
Electrical Engineering Alumni Registered:</td><%PreparedStatement st6= con.prepareStatement("select count(*) from alu_data where cource='ee' "); 
ResultSet rs6 = st6.executeQuery();
rs6.next();
out.println("<td>"+rs6.getString(1)+"</td>");%>

</tr>
<tr>
<td>
Electronics Engineering Alumni Registered:</td><%PreparedStatement st7= con.prepareStatement("select count(*) from alu_data where cource='et' "); 
ResultSet rs7 = st7.executeQuery();
rs7.next();
out.println("<td>"+rs7.getString(1)+"</td>");%>
</tr>
</table></center>


</body>
<script src="theme.js">
	/* 
	var lo = localStorage.getItem("theme");
	if (lo == "" || lo == null || lo == "null") {

	} else {

		if (lo == "dark") {
			document.getElementById("body1").style.color = "white";
			document.getElementById("body1").style.background = "#404040";
			document.getElementById("formdark").style.background = "black";
			document.getElementById("dc").checked=true;
			

		}

		else {
			document.getElementById("body1").style.color = "black";
			document.getElementById("body1").style.background = "white";
			document.getElementById("formdark").style.background = "#07407B";
			

		}
	}
	function dark() {

		if (document.getElementById("dc").checked) {

			document.getElementById("body1").style.color = "white";
			document.getElementById("body1").style.background = "#404040";
			document.getElementById("formdark").style.background = "black";
			localStorage.setItem("theme", "dark");
			
		} else {
			document.getElementById("body1").style.color = "black";
			document.getElementById("body1").style.background = "white";
			document.getElementById("formdark").style.background = "#07407B";
			localStorage.setItem("theme", "light");
			
		}

	
	}
	 */
	
	

</script>
</html>