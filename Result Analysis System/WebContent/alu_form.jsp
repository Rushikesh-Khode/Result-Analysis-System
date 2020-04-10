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
<body onload="getCaptcha()" id="body1" onunload="getCaptcha()">




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






 <div class="box" style="height:auto;" id="fdark" >
      <h1>Alumni Registration</h1>
      <form method="post" action="alu_form_back.jsp" onsubmit="return chk()" >
        <div class="txt_field">
          <input type="text" name="t1" required autofocus="autofocus" pattern="[a-z A-Z]*">
          <span></span>
          <label>First Name</label>
        </div>
        
        
        <div class="txt_field">
         <input type="text" name="tl1" required autofocus="autofocus" pattern="[a-z A-Z]*">
          <span></span>
          <label>Last Name</label>
        </div>
        
        
        <div class="txt_field">
         <input type="text" name="t2" required="required" autofocus="autofocus" pattern="[0-9]*" maxlength="10">
          <span></span>
          <label>Enrollment Number</label>
        </div>
        
        
        <div class="txt_field">
          <input type="text" name="number" required="required" autofocus="autofocus" pattern="[0-9]{10}" >
          <span></span>
          <label>Mobile Number</label>
        </div>
        
        
         <div class="txt_field">
          <input type="email" name="email" required="required" autofocus="autofocus" >
          <span></span>
          <label>Email</label>
        </div>
        
        <div class="txt_field">
         <p style="color: #ff8000;">Address</p>
       <textarea name="ta1" cols="28" rows="1"  autofocus="autofocus" style="background:none; border:none;font-size: 18px;color:#0086b3" > </textarea>
        </div>
        
        
        <div class="txt_field" style="border-bottom:none;">
          <br><br><br><br><br>
          <Select name="statusmenu" class="list">
          <option value="1">Employee</option>
          <option value="2">Entrepreneur</option>
          <option value="3" selected="selected">Student</option>
         </Select>
          <span></span>
          <label>Current status:
              <br>(with respect to fields of engineering and technology)</label>
        </div>
        
        
        <div class="txt_field" style="border-bottom:none;">
          <br><br><br><br><br>
          <Select name="branchmenu" class="list">
          <option value="co" selected="selected">CO</option>
          <option value="me">ME</option>
          <option value="ee">EE</option>
          <option value="ce">CE</option>
          <option value="et">EE</option>
		  </Select>
          <span></span>
          <label>Course
          <br>(in diploma)</label>
        </div>
        
        <div class="txt_field" style="border-bottom:none">
          <br><br><br><input type="text" id="captcha" disabled="disabled" style="color:black">
          <span></span>
          
          <label>Captcha</label>
        </div>
        
        <div class="txt_field" style="border-bottom:none">
          <!-- <input type="button" onclick="getCaptcha()" value="Refresh"> --> <button type="button" onclick="getCaptcha()" class="btn">Refresh</button>
          <span></span>
          <!-- <label>Captcha</label> -->
        </div>
        
        <div class="txt_field">
          <input type="text" id="chkcaptcha"> 
          <span></span>
          <label>Enter Captcha Here</label>
        </div>
        
        <div class="txt_field" style="border-bottom:none;" >
          <!-- <input type="button" onclick="chkCaptcha()" value="Verify Captcha"> -->
          <button onclick="chkCaptcha()" type="button" class="btn">Verify Captcha</button>
          <span></span>
          <!-- <label>Captcha</label> -->
        </div>
        
        <!-- <table><tr><td>Captcha</td><td><input type="text" id="captcha" disabled="disabled" style="color:black"></td><td><input type="button" onclick="getCaptcha()" value="Refresh"></tr>
<tr><td></td><td><input type="text" id="chkcaptcha"></td><td><input type="button" onclick="chkCaptcha()" value="Verify Captcha"></td></tr>
        </table> -->
        
        
        
        <center><button type="submit" class="btn1" style="width:120px; height: 50px;" id="submit"  formaction="alu_form_back.jsp" onsubmit="return chk()">Submit</button></center><br><br>
     
      </form>
    </div>









<!-- <form action="alu_form_back.jsp" enctype="multipart/form-data" onsubmit="return chk()" >
	<table border="0" align="center">
	<tr>
	<td>First Name :</td>
	<td><input type="text" name="t1" required autofocus="autofocus" pattern="[a-z A-Z]*"></td>
	</tr>
	<tr>
	<td>Last Name :</td>
	<td><input type="text" name="tl1" required autofocus="autofocus" pattern="[a-z A-Z]*"></td>
	</tr>	
	<tr><td>
	Enrollment no. :</td><td><input type="text" name="t2" required="required" autofocus="autofocus" pattern="[0-9]*" maxlength="10">
	</td></tr>
	<tr><td>
	Mobile No. :</td><td><input type="text" name="number" required="required" autofocus="autofocus" pattern="[0-9]{10}" >
	</td></tr>
	<tr><td>
	Email :</td><td><input type="email" name="email" required="required" autofocus="autofocus" >
	</td></tr>
	<tr><td><br>Address:<br></td><td><textarea name="ta1" cols="40" rows="4" placeholder="Enter your address here----" required="required" autofocus="autofocus"> </textarea></td></tr>
	

<tr>
	<td>
	Current status:
<br>(with respect to fields of engineering and technology)</td><td>
<Select name="statusmenu">
<option value="1">Employee</option>
<option value="2">Entrepreneur</option>
<option value="3" selected="selected">Student</option>
</Select>
</td>
</tr>


<tr>
	<td>
	Course
<br>(in diploma)</td><td>
<Select name="branchmenu">
<option value="co" selected="selected">CO</option>
<option value="me">ME</option>
<option value="ee">EE</option>
<option value="ce">CE</option>
<option value="et">EE</option>
</Select>
</td>
</tr>
<tr> <td>Captcha</td><td><input type="text" id="captcha" disabled="disabled" style="color:black"></td><td><input type="button" onclick="getCaptcha()" value="Refresh"></tr>
<tr><td></td><td><input type="text" id="chkcaptcha"></td><td><input type="button" onclick="chkCaptcha()" value="Verify Captcha"></td></tr>
<tr><td></td><td align="center"><button type="Submit" id="submit">Submit</button></td></tr>





</table>
</form>
<br><br><br><br><br><br> -->


</div></div>

</body>




<%String s="",alert="";
try{
ServletContext sc = getServletContext();
alert=sc.getAttribute("alert").toString();
out.println("<script>alert('"+alert+"');</script>");
sc.removeAttribute("alert");

}
catch(NullPointerException e)
{
}

%>


<script type="text/javascript">
var captcha="";

document.getElementById("captcha").style.cursor = "no-drop";


function getCaptcha()
{ /* document.getElementById("submit").disabled=true; */
	document.getElementById("captcha").style.backgroundImage="Url('captcha_background1.jpg')";
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
	             captcha=xhr.responseText.trim();
	           
	          
	           font_name=[ "Comic Sans MS","Arial Black"];
	           document.getElementById("captcha").value=captcha;
           document.getElementById("captcha").style.fontFamily=font_name[Math.floor(Math.random()*font_name.length)]; 
      	        
 
 document.getElementById("captcha").style.textDecorationLine = "line-through";
	           document.getElementById("captcha").style.textAlign="center";
	             document.getElementById("captcha").style.letterSpacing = "15px"
	             document.getElementById("captcha").style.fontSize="large";
	             
	             
	          
	             
	              
	              }
	              else{
	                 document.write("Error code " + xhr.status);}
	         }
	    }; 
	    xhr.open("GET", "captcha.jsp",  true); 
	  
	   xhr.send(); 
	}




var done="false";
function chkCaptcha()
{
	var chkcaptcha=document.getElementById("chkcaptcha").value;
	 if(captcha == chkcaptcha)
		{
/* 		document.getElementById("submit").disabled=false; */
        alert("Correct Cpatcha Now You Can Submit The Form");
		done="true";
		
		}
	else
		{
		alert("wrong captcha");
		}  
	
	
	}



function chk()
{
	 if(done=="true")
		{
		return true;
		}
	else
		{
		alert("Fill The Captcha First Then Submit The Form");
		return false;
		} 
	
}



</script>
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

	
	} */
	
	

</script>

</html>

