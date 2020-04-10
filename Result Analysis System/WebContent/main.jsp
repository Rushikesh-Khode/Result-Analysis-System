<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>


<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<meta charset="UTF-8">
	<title>Result Analysis System</title>
	<link rel="stylesheet" href="css/styles.css">
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

/*   var lo = localStorage.getItem("theme");
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







</head>

<body id="body1">


<div class="wrapper">
  <div class="top_navbar">
    <div class="hamburger" id="hamdark">
       <div class="one"></div>
       <div class="two"></div>
       <div class="three"></div>
    </div>
    <div class="top_menu">
    <a href="main.jsp">
      <div class="logo">RESULT ANALYSIS SYSTEM</div>
    </div>
  </div>
  </a>
  <div class="sidebar" id="sidedark">
      <ul>
      <li><a href="main.jsp">
          <span class="title">Home</span></a></li>
        <li><a href="admin_login.jsp">
          <span class="title">Login As <br> Administrator</span></a></li>
        <li><a href="alu_form.jsp">
          <span class="title">Register As <br>Alumni</span>
          </a></li>
        <li><a href="contact.html">
          <span class="title">Contact Us</span>
          </a></li>
        <!-- <li><a href="about.html">
          <span class="title">About Us</span>
          </a></li> -->
          <li><a href="#">
          <span class="title"><input type="checkbox" onclick="dark()" id="dc">  DarkMode</span>
          </a></li>
    </ul>
  </div>
  
  <div class="main_container" >
    <div class="formback" id="formdark">

    

<center>
	<form action="down.jsp" name="datee"> 
		<%
			Date d = new Date();
		%>
		<p class="para">
		<br>
			<h3>Current Academic Year    : <input type="text" size="10px"
				value="<%int date = (d.getYear()-1)+ 1900;
			out.print((date)+ " - " + (date + 1));%>"></h3> <br><br>
		</p>

		<p class="para">
			<h3>Download Template here  :   
			<button type="submit" class="btn">Download</button></h3> <br><br>
		</p>
		<h3 class="para">Upload Previous Exam Result :</h3> 
		<br>
		<jsp:include page="upload_result.jsp"/> 
		</center>
	<%-- 	<%
			try {
				String msg = "";
				msg = session.getAttribute("alert").toString();

				if (msg == null) {

				} else {
					out.println("<script>alert('" + msg + "')</script>");
					session.removeAttribute("alert");
					//	session.invalidate();
					msg = "";

				}
			} catch (NullPointerException n) {
			}
		%>  --%>
	 

<br>
<br>
<br>
<br>

	 <!-- <input type="button" name="next" value="next"
		onclick="javascript:document.location.href='table_1_2.jsp'"> -->
		
		<center><button formaction="javascript:document.location.href='table_1_2.jsp'" class="btn">See Table's</button></center>
		</form>
	</div> 	 
</div>

</body>
<script src="theme.js">
	
	/* var lo = localStorage.getItem("theme");
	if (lo == "" || lo == null || lo == "null") {

	} else {

		if (lo == "dark") {
			document.getElementById("body1").style.color = "white";
			document.getElementById("body1").style.background = "#404040";
			document.getElementById("formdark").style.background = "black";
			//de
			document.getElementById("hamdark").style.background = "black";
			document.getElementById("sidedark").style.background = "black";
			
			//
			document.getElementById("dc").checked=true;
		
		}

		else {
			document.getElementById("body1").style.color = "black";
			document.getElementById("body1").style.background = "white";
			document.getElementById("formdark").style.background = "#07407B";
			
			//
			document.getElementById("hamdark").style.background = "#07407B";
			document.getElementById("sidedark").style.background = "#07407B";
			

		}
	}
	function dark() {

		if (document.getElementById("dc").checked) {

			document.getElementById("body1").style.color = "white";
			document.getElementById("body1").style.background = "#404040";
			document.getElementById("formdark").style.background = "black";
			document.getElementById("hamdark").style.background = "black";
			document.getElementById("sidedark").style.background = "black";
			localStorage.setItem("theme", "dark");
			
			
		} else {
			document.getElementById("body1").style.color = "black";
			document.getElementById("body1").style.background = "white";
			document.getElementById("formdark").style.background = "#07407B";
			document.getElementById("hamdark").style.background = "#07407B";
			document.getElementById("sidedark").style.background = "#07407B";
			localStorage.setItem("theme", "light");
			
		}

	
	}
	 */

	

</script>

</html>