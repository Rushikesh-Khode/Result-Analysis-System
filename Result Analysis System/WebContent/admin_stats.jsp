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
         
         <li>
          <a>
          <div class="tooltip">          
          <span class="title">
          Sync With <br>Database
          <label class="switch">
		<input type="checkbox" id ="DyRe" onclick="onDR()"><span class="slider round"></span>
</label></span></div></a></li>
        <li  id="myBtn" onclick="shortkey()"><a href="#">
          <span class="title">Keyboard <br>Shortcut's</span>
          
          </a></li>
            <li>
          <a>
          <div class="tooltip">
           <span class="tooltiptext">Dark theme turns the light <br> surfaces of the page dark <br>creating an experience <br>ideal for night. Try it out!</span>
          
          <span class="title">
          DarkMode
          <label class="switch">
		<input type="checkbox" onclick="dark()" id="dc"><span class="slider round"></span>
</label></span></div></a></li>
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
<td>Number Of Students Are :</td><td id="t1"></td>
</tr>
<tr>
<td>Number Of Entrepreneur's Are :</td><td id="t2"></td>
</tr>
<tr>
<td>
Number Of Employee's Are :</td>
<td id="t3"></td>
</tr>
<tr>
<td>
Computer Engineering Alumni Registered:</td>
<td id="t11"></td>
</tr>
<tr>
<td>Civil Engineering Alumni Registered: </td>
<td id="t12"></td>
</tr>

<tr>
<td>
Mechanical Engineering Alumni Registered:</td>
<td id="t13"></td>
</tr>
<tr>
<td>
Electrical Engineering Alumni Registered:</td>
<td id="t14"></td>
</tr>
<tr>
<td>
Electronics Engineering Alumni Registered:</td>
<td id="t15"></td>
</tr>
</table></center>


<div id="myModal" class="modal">
  <div class="modal-content" id="keyback">
    <span class="close">&times;</span>
    <div id="keyfront" style="color:white">
    <h2 align="center">Keyboard Shortcut's</h2><center>
    <table >
    <tr><th colspan="3"> For Website (Admin)</th></tr>
  
   <tr> <td>To Change Theme </td><td> Shift(Hold) + d</td></tr> 
     <tr> <td>To Start Database Sync </td><td> Shift(Hold) + s</td></tr>
        <tr> <td>To See Keyboard Shortcut's </td><td> Shift(Hold) + k</td></tr>
  
    </table>
    </center>
    </div>
  </div>

</div>

</body>

<script src="theme.js"></script>


<script type="text/javascript">

what=sessionStorage.getItem("syncstat");

var whattodo;
adtable();
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
               va=xhr.responseText.trim();
               
              document.getElementById("t1").innerHTML=va[0];
              document.getElementById("t2").innerHTML=va[1];
              document.getElementById("t3").innerHTML=va[2];
              document.getElementById("t11").innerHTML=va[3];
              document.getElementById("t12").innerHTML=va[4];
              document.getElementById("t13").innerHTML=va[5];
              document.getElementById("t14").innerHTML=va[6];
              document.getElementById("t15").innerHTML=va[7];
               
                  }
              else{
//                  document.write("Error code " + xhr.status);
	      
	      }
         }
    }; 

   xhr.open("GET", "admin_stats_back.jsp",  true); 
  
   xhr.send(); 
} 


 function onDR(){
	 des=document.getElementById("DyRe").checked;
	if(des)
{
	sessionStorage.setItem("syncstat", true);
	 Sync(true); 
	}
	if(des==false)
		{
		
		sessionStorage.setItem("syncstat", false);
	 	Sync(false); 
		}
	
}
 

 
function Sync( todo){
	
	if(todo)
		{
		
		whattodo=setInterval(adtable, 1000);
		document.getElementById("DyRe").checked=true;
	
		}
	else if(!todo)
		{
		  clearInterval(whattodo);
		document.getElementById("DyRe").checked=false;
	

		
		} 
	
}
 
 if(what=="true")
	{
	Sync(true);
	}
else{
	Sync(false);
}  

</script>
<script src="shortcut_admin.js"></script>

</html>
