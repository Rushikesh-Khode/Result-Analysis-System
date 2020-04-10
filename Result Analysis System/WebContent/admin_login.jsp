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
          <li><a href="#">
          <span class="title"><input type="checkbox" onclick="dark()" id="dc">  DarkMode</span>
          </a></li>
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
          <label>Username</label>
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

</html>