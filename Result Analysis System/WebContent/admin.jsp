<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
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


<style>
a{color:white}</style>
</head>

<body id="body1" onload="checkselected()">


<div class="wrapper " style="width:100%">
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
<li>

<a href="admin_stats.jsp" style="color:white"> <span class="title">Check Stats Here</span></a></li>
          
          
<!--        <li><a href="admin_login.jsp">
          <span class="title">Login As <br> Administrator</span></a></li> -->
     <!--    <li><a href="alu_form.jsp">
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
  
  <div class="main_container" style="width :120%">
    <div class="formback" id="formdark">





<div align="right">
<input type="checkbox" id ="DyRe" onclick="onDR()">Dynamic Refreshing
</div>

<%-- <%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); //HTTP 1.1 
response.setHeader("Pragma","no-cache"); //HTTP 1.0 
response.setDateHeader ("Expires", 0);
try{
	
String user=session.getAttribute("user").toString();

if(user.equals("")||user.equals(" ")||user.equals(null))
{
	response.sendRedirect("admin_login.jsp");
}
session.setAttribute("user", user);
out.println("<p align='left'>Welcome User :"+user+"</p>");
out.println("<a href='admin_logout.jsp'>LogOut</a>");
out.println("<br>");

}catch(NullPointerException e)
{ response.sendRedirect("admin_login.jsp");  

	}
%>

<a href="admin_stats.jsp" style="color:white">Check Stats Here</a>
 --%>
 <p>Welcome User :
<%out.println(user);%>
</p>


<center>
<h1>Admin Page</h1><br><br>	
<Select id="statmenu" onchange="adtable()" class="list">
<option selected="selected">--Select Category--</option>
<option value="1">Employee</option>
<option value="2">Enterprener</option>
<option value="3" >Student</option>t
</Select>
</center>


<br><br><br><br><br>
<table border="3px solid black" id="admintable">
</table>
<br><br><br><br><br>

<br><br><br><br><br>


</div>
</div>

</body>
<script>


function adtable()
{ 
    var xhr; 
    try {  xhr = new ActiveXObject('Msxml2.XMLHTTP');   }
    catch (e) 
    {
        try {   xhr = new ActiveXObject('Microsoft.XMLHTTP');    }
        catch (e2) 
        {
          try {  xhr = new XMLHttpRequest();     }
          catch (e3) {  xhr = false;   }
        }
     }
   
    xhr.onreadystatechange  = function()
    { 
         if(xhr.readyState  == 4)
         {
              if(xhr.status  == 200) {
               /*   document.getElementById("tab").innerHTML=xhr.responseText; */
               va=xhr.responseText;
               document.getElementById("admintable").innerHTML=va;
               
                  }
              else{
                 document.write("Error code " + xhr.status);}
         }
    }; 
    m= document.getElementById("statmenu").value;
	localStorage.setItem("selected", m);
   xhr.open("GET", "admin_back.jsp?val="+m,  true); 
  
   xhr.send(); 
} 

function onDR()
{
	if(document.getElementById("DyRe").checked)
		{
		
		localStorage.setItem("DR", "1");
		
var myvar=setInterval(checkForUpdate,1000);

function checkForUpdate()
{
	adtable();
	
	}
url=window.location.href;
param=url.split("?");
s=param[1].split("=")[1];
document.getElementById('statmenu').selectedIndex=s;
}
else
		{
		localStorage.setItem("DR", "0");
		document.getElementById('statmenu').selectedIndex="0";
		}
}

</script>

<script type="text/javascript">
var dr=localStorage.getItem("DR");
if(dr=="1")
		{
	
	document.getElementById("DyRe").checked=true;
	var myvar=setInterval(checkForUpdate,10000);
	function checkForUpdate()
	{
		adtable();
		}
/* 	url=window.location.href;
	param=url.split("?");
	s=param[1].split("=")[1];
	document.getElementById('statmenu').selectedIndex=s; */
	}
else
	{
	document.getElementById("DyRe").checked=false;
	/* document.getElementById('statmenu').selectedIndex="0"; */
	}
		
		
</script>
<script>
	
	/* var lo = localStorage.getItem("theme");
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

	
	} */
	function checkselected()
	{   var lo = localStorage.getItem("selected");
		document.getElementById('statmenu').selectedIndex=lo;
		adtable()
	}
	
	

</script>
<script src="theme.js"></script>
</html>
<!-- <input type="submit" onclick="adtable()" value="See Data"> -->
