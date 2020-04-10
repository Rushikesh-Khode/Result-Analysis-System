<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result Analysis System</title>
	<link rel="stylesheet" href="css/styles.css">
	<link rel="stylesheet" href="css/form.css">
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

 /*  var lo = localStorage.getItem("theme");
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
  
  <div class="main_container">
    <div class="formback" id="formdark">


















 <%String path="",hide="",enroll="";
 try{
	ServletContext sc = getServletContext();
	path=sc.getAttribute("path").toString();
	hide=sc.getAttribute("hide").toString();
	enroll=sc.getAttribute("enroll").toString();
    session.setAttribute("path", path);
    session.setAttribute("hide", hide);
    session.setAttribute("enroll", enroll);
   
	/* sc.removeAttribute("path");
	sc.removeAttribute("hide");
	sc.removeAttribute("enroll"); */
	try{
	String dcheck=session.getAttribute("dcheck").toString();
	if(dcheck.equals("22"))
	{
		hide="22";
		
	}
	session.removeAttribute("dcheck");
	String alert=sc.getAttribute("alet").toString();
	out.println("<script>alert('"+alert+"')</script>");
	
	}
	catch (NullPointerException e)
	{
		
	}
	//session.removeAttribute("dcheck");

	/* if(hide.equals("")|| hide.equals(null)||hide.equals("null"))
	{
		 response.sendRedirect("alu_form.jsp");

	}
	 sc.removeAttribute("hide");
 */
 }catch(NullPointerException e){
	// response.sendRedirect("alu_form.jsp");
	out.println(e);
 }
 if(hide.equals("1"))//for employee
 {
 

 out.println("<div class='main_container'><div class='formback'>");
 out.println("<form action='doc_up.jsp' enctype='multipart/form-data' method='post' ><p id='up'>Upload Company Document</p><br><input type='file' name='myImage' id='up' class='btn'><br><br><input type='submit' name='upload' value='upload' class='btn'></form>");
 out.println("</div></div>");
 }
 else if(hide.equals("2"))//for enrterpernor
 { out.println("<div class='main_container'><div class='formback'>");
	 out.println("<form action='doc_up.jsp' enctype='multipart/form-data' method='post' ><p id='up'>Upload Company Document</p><br><input type='file' name='myImage' id='up' class='btn'><br><br><input type='submit' name='upload' value='upload' class='btn'></form>");
	out.println("</div></div>");
 }
 else if(hide.equals("3"))// for student
 {      
	    out.println("<div class='main_container'><div class='formback' >");
		out.println("<form action='doc_up.jsp' enctype='multipart/form-data' method='post' ><p id='up'>Step 1: Upload CAP Round Document</p><br><input type='file' name='id' id='up' class='btn'><br><br><input type='submit' name='upload' value='upload' class='btn'></form>");
		out.println("<br><br><br>");
		out.println("<form action='doc_up1.jsp' enctype='multipart/form-data' method='post' ><p id='up'>Step 2: Upload Id Card</p><br><input type='file' name='id' id='up' class='btn'><br><br><input type='submit' name='upload' value='upload' class='btn'></form>");
		out.println("</div></div>");
 }
 
 else if(hide.equals("11"))//for student for cap round only
 { 
	 out.println("<div class='main_container'><div class='formback' '>");
	out.println("<form action='doc_up.jsp' enctype='multipart/form-data' method='post' ><p id='up'>Upload CAP Round Document</p><br><input type='file' name='id' id='up' class='btn'><br><br><input type='submit' name='upload' value='upload' calss='btn'></form>");
session.setAttribute("path1", path);
out.println("</div></div>");
 }
 else if(hide.equals("22"))// for student for id card only
 {
	 
	 out.println("<div class='main_container'><div class='formback'>");
	out.println("<form action='doc_up1.jsp' enctype='multipart/form-data' method='post' ><p id='up'>Upload Id Card</p><br><input type='file' name='id' id='up' class='btn'><br><br><input type='submit' name='upload' value='upload' class='btn'></form>");
	session.setAttribute("path1", path);
	out.println("</div></div>");
 }
 else
 {/* try{
	 response.sendRedirect("alu_form_back.jsp");
 }catch(Exception e)
 {
	 out.println("this is2");
 } */
 }
 
 %>

<!-- <div id="student" >
<form action="doc_up.jsp" enctype="multipart/form-data" method="post" >

<p id="up">Upload Cap Round</p>
	<input type="file" name="cap" id="up">
<input type="submit" name="upload" value="upload">

</form> 

<form action="doc_up1.jsp" enctype="multipart/form-data" method="post" >

<p id="up">Upload Id Card</p>
	<input type="file" name="id" id="up">
<input type="submit" name="upload" value="upload">
</form>
</div>

<div id="emp" >
<form action="doc_up.jsp" enctype="multipart/form-data" method="post" >

<p id="up">Upload Id Card</p>
	<input type="file" name="myImage" id="up">
<input type="submit" name="upload" value="upload">
</form> 
</div>

<div id="entor" >
<form action="doc_up.jsp" enctype="multipart/form-data" method="post" >

<p id="up">Upload company document</p>
	<input type="file" name="myImage" id="up">
<input type="submit" name="upload" value="upload">
</form> 
</div> -->
</div></div>
</body>
<script src="theme.js">
	
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

	
	}
	
	 */
	

</script>
</html>