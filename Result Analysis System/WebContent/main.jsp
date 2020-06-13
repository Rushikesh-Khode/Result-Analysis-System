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
          
         <li  id="myBtn" onclick="shortkey()"><a href="#">
          <span class="title">Keyboard <br>Shortcut's</span>
          
          </a></li> 
          
          
          <li>
          <a>
          <div class="tooltip">
           <span class="tooltiptext">Dark theme turns the light <br> surfaces of the page dark <br>creating an experience <br>ideal for night. Try it out!<br>( Use Shift+d as a short cut key) </span>
          
          <span class="title">
          DarkMode
          <label class="switch">
		<input type="checkbox" onclick="dark()" id="dc"><span class="slider round"></span>
</label></span></div></a></li>
    </ul>
  </div>
  
  <div class="main_container" >
    <div class="formback" id="formdark">

    	

<center>
	<form action="down.jsp" name="datee" method="post"> 
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
			<select name="type" class="list">
			<option name="z" selected="selected">Zip File</option>
			<option name="r">Rar File</option>
			<option name="rm">ReadMe</option>
			</select>
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


<div id="myModal" class="modal">
  <div class="modal-content" id="keyback">
    <span class="close">&times;</span>
    <div id="keyfront" style="color:white">
    <h2 align="center">Keyboard Shortcut's</h2><center>
    <table >
    <tr><th colspan="3"> For Website</th></tr>
   <tr> <td>To Go Home  </td><td> Shift(Hold) + h</td></tr>
   <tr> <td>To See Tables </td><td> Shift(Hold) + t</td></tr>
   <tr> <td>To Change Theme </td><td> Shift(Hold) + d</td></tr>
   <tr> <td>To See Keyboard Shortcut's </td><td> Shift(Hold) + k</td></tr>
   <tr><th colspan="3"> For Tables</th></tr>
   <tr><th colspan="3">Note:- To Activate This Shortcuts You Have To Hover Mouse On The Perticular Table</th></tr> 
    <tr> <td>To Generate Data For CO </td><td> Shift(Hold) + 1</td></tr>
    <tr> <td>To Generate Data For ME </td><td> Shift(Hold) + 2</td></tr>
    <tr> <td>To Generate Data For CE </td><td> Shift(Hold) + 3</td></tr>
    <tr> <td>To Generate Data For EE </td><td> Shift(Hold) + 4</td></tr>
    <tr> <td>To Generate Data For ET </td><td> Shift(Hold) + 5</td></tr>
    <tr> <td> Jump To Next Table(on same page) </td><td> Ctrl(Hold) + ></td></tr>
    <tr> <td>Jump To Previous Table (on same page)</td><td> Ctrl(Hold) + < </td></tr>
    </table>
    </center>
    </div>
  </div>

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
	<script src="shortcut.js" type="text/javascript"></script>


</html>

<!--


 ReadMe:

To Make Dynamic Upload: 1)click on window->preferences->General(expand)->Workspace->check refresh using native hooks and pooling

To Take Project As a path : 1)right click-> hover on run->click run configuration->Expand Apache Tomcat->click on tomacat 9.0->Argument->Working Directory->others->click on workspace -> select current porject click on ok




 -->

