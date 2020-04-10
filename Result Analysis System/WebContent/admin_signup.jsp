<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
 <html>
 <head>
 
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

  /* var lo = localStorage.getItem("theme");
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
       <!--  <li><a href="about.html">
          <span class="title">About Us</span>
          </a></li> -->
          <li><a href="#">
          <span class="title"><input type="checkbox" onclick="dark()" id="dc">  DarkMode</span>
          </a></li>
    </ul>
  </div>
  
  <div class="main_container">
    <div class="formback" id="formdark">
 
 
 
 
 
 <div class="box" style="height:auto" id="fdark">
      <h1>Admin SignUp</h1>
      <form method="post">
      
      
        <div class="txt_field">
          <input name="full_name" type="text" pattern="[A-Z a-z]*" autofocus="autofocus"
        required="required" title="Name should not contain numbers">
          <span></span>
          <label>Full Name</label>
        </div>
        
        
        <div class="txt_field">
          <input name="email" type="email" autofocus="autofocus"
        required="required">
          <span></span>
          <label>Email</label>
        </div>
        
        
        <div class="txt_field">
          <input name="mobile_number" type="text" pattern="[0-9]{10}" autofocus="autofocus"
        required="required" title="Number should be of length 10 and not contain any letters">
          <span></span>
          <label>Mobile Number</label>
        </div>
        
        
        <div class="txt_field">
          <input type="password" name="password_1" autofocus="autofocus"
        required="required"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
  title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters">
          <span></span>
          <label>Password</label>
        </div>
        
        
         <div class="txt_field">
          <input type="password" name="password_2" autofocus="autofocus"
        required="required"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
  title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters">
          <span></span>
          <label>Re-Enter-Password</label>
        </div>
        
        
        
        <center><button class="btn1" style="width:120px; height: 50px;" formaction="admin_signup_back.jsp">Submit</button></center>
        <div class="signup_link">
         Already a member?   <button style="background:none; border:none;color: #ff8000; font-size:15px "><b><a href="admin_login.jsp">SignIn</a></b></button>
        <br><br></div>
      </form>
    </div>


</div></div></body></html>

<%try{
	String alt =session.getAttribute("error").toString();
	out.println("<script>alert('"+alt+"')</script>");
	session.removeAttribute("error");
	session.invalidate();
	
	
}catch(NullPointerException e)
{}%>
<!--container end.//-->


 
 
 

<!--  <div class="container">

<hr>

<div class="card bg-light">
<article class="card-body mx-auto" style="max-width: 400px;">
	<h4 class="card-title mt-3 text-center">Create Admin Account</h4>

	<form action="admin_signup_back.jsp" method="post">
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="full_name" type="text" pattern="[A-Z a-z]*" autofocus="autofocus"
        required="required" title="Name should not contain numbers">
    </div> form-group//
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="email" type="email" autofocus="autofocus"
        required="required">
    </div> form-group//
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
		</div>
		
		
		
    	<input name="mobile_number" type="text" pattern="[0-9]{10}" autofocus="autofocus"
        required="required" title="Number should be of length 10 and not contain any letters">
        
        
        
    </div> form-group//
    form-group end.//
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
		
		
        <input type="password" autofocus="autofocus"
        required="required"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
  title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters">
  
  
    </div> form-group//
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
		
		
		
        <input type="password" name="password_2" autofocus="autofocus"
        required="required"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
  title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters">
  
  
  
  
    </div> form-group//                                      
    <div class="form-group">
    
    
        <button type="submit" class="btn btn-primary btn-block" > Create Account  </button>
        
        
    </div> form-group//      
    
    
    <p class="text-center">Have an account? <a href="admin_login.jsp">Log In</a> </p>  

                                                              
</form>
</article>
</div> card.//

</div>  -->



<script src="theme.js">
	
/* 	var lo = localStorage.getItem("theme");
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




