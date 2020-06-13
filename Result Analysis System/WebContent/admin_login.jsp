<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result Analysis System</title>
	<link rel="stylesheet" href="css/styles.css">
	<link rel="stylesheet" href="css/form.css">
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




<!-- <h1 style="text-align:center"><br>Admin Login</h1> -->
<br>
<form action="admin_login_back.jsp" method="post">


<div class="box" id="fdark">
      <h1>Admin Login</h1>
      <form method="post" >
        <div class="txt_field">
          <input type="text" required name="username">
          <span></span>
          <label>UserName(Email)</label>
        </div>
        <div class="txt_field">
          <input type="password" required name="password">
          <span></span>
          <label>Password</label>
        </div>
        <!-- <input type="submit" value="Login"> -->
        <center><button class="btn1" style="width:120px; height: 50px;" formaction="admin_login_back.jsp"> Submit</button></center>
        <div class="signup_link">
          Not a member?   <a href='admin_signup.jsp'" style="background:none; border:none;color: #ff8000; font-size:15px "><b>SignUp</b></a>
        </div>
      </form>
    </div>



<!-- <center>
<table align="center">
<tr><td>User Name (email):</td><td><input type="text" name="username" autofocus="autofocus" required="required"></td></tr>
<tr><td>Password :</td><td><input type="password" name="password" autofocus="autofocus" required="required"></td></tr>
<tr><td><input type="button" value="Signup" onclick="document.location.href='admin_signup.jsp'"></td>
<td><input type="submit" value="Login" ></td></tr>
</table></center> -->









</form>
</div></div>


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
</body>
<%try{
	String error=session.getAttribute("error").toString();
	out.println("<script>alert('User Name or Password is incorrect')</script>");
	session.removeAttribute("error");
	session.invalidate();
	
}
catch(NullPointerException e)
{}
%>
<%try{
	String er=session.getAttribute("sucess").toString();
	if(er.equals("Sucessfully"))
	{
	out.println("<script>alert('Signup scessfully! please login to your account')</script>");
	session.removeAttribute("sucess");
	session.removeValue("Sucessfully");
	
	session.invalidate();
	}
	
}
catch(NullPointerException e)
{}
catch(IllegalStateException s)
{
}
%>
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
	<script src="shortcut.js" type="text/javascript"></script>

</html>