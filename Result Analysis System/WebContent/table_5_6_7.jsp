<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<body id="body1" >




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


<p id="tb1"><b>  Academic Performance in FirstYear</b>

<br><br>
Academic Performance Level = 2.5 * Average API  <br>
<br>
API = ((Mean of 1st Year Grade Point Average of all successful Students on a 10 point scale) or (Mean of the percentage of marks of all successful students in First Year/ 10)) x (successful students/number of students appeared in the examination). <br> Successful students are those who are permitted to proceed to the second year


</p><br>	
<!-- <input type="submit" onclick="table5()" > -->
<select id="branch5" class="list">
  <option value="CO">CO</option>
  <option value="ME">ME</option>
  <option value="CE">CE</option>
  <option value="EE">EE</option>
  <option value="ET">ET</option>
</select> <button class="btn" onclick="table5()" id="but1">Generate Values</button><center><div class="loader" id="load" ><div class="loader1"><div class="loader2"></div></div></div></center><br><br>
<center>
  <table border="1" align="center" id="ta55" onmouseover="setCurrent(ta55)">
		<tr>
			<td><b><center>Academic Performance(I Year)</td>

		<td><b><center>CAYm1</td>

				<td><b><center>CAYm2</td>

				<td><b><center>CAYm3</td>
		</tr>



		<tr>
			<td> 
			Mean of CGPA or Mean Percentage of all successful students
<br>(X)

			</td>
             <td id="t10">
			</td>

			<td id="t11">
			</td>

			<td id="t12">
			</td>
		</tr>

		<tr>
			<td> 
			Total no. of successful students (Y)


			</td>
              <td id="t20">
			</td>

			<td id="t21">
			</td>

			<td id="t22">
			</td>
		</tr>

		<tr>
			<td> 
			Total no. of students appeared in the examination (Z)

			</td>

			</td>
            <td id="t30">
			</td>

			<td id="t31">
			</td>

			<td id="t32">
			</td>
		</tr>
	

		<tr>
			<td> 
			API = X* (Y/Z)

			</td>

			</td>
            <td id="t40">
			</td>

			<td id="t41">
			</td>

			<td id="t42">
			</td>
		</tr>

		<tr>
			<td> 
			Average API = (AP1 + AP2 + AP3)/3

			</td>

			<td colspan="3" id="tans">
			</td>
		</tr>
	</table>
</center>

<br>
<br>
<!-- this is table number 6 -->

<p id="tb2"><b> Academic Performance in SecondYear</b>

<br><br>
Academic Performance Level = 2.0 * Average API  <br>
API = ((Mean of 2ndYear Grade Point Average of all successful Students on a 10 point scale) or (Mean of the percentage of marks of all successful students in Second Year/ 10)) x (successful students/number of students appeared in the examination) <br>
Successful students are those who are permitted to proceed to the final year 
</p><br>

<!-- <input type="submit" onclick="table6()"> -->

<select id="branch6" class="list">
  <option value="CO">CO</option>
  <option value="ME">ME</option>
  <option value="CE">CE</option>
  <option value="EE">EE</option>
  <option value="ET">ET</option>
</select> <button class="btn" onclick="table6()" id="but2" >Generate Values</button> <center><div class="loader" id="load1" ><div class="loader1"><div class="loader2"></div></div></div></center><br><br>


<center>
<table border="1" align="center" id="ta66" onmouseover="setCurrent(ta66)">
			<tr>
				<td><b><center>Academic Performance(II Year)</td>

				<td><b><center>CAYm1</td>

				<td><b><center>CAYm2</td>

				<td><b><center>CAYm3</td>
			</tr>



			<tr>
				<td>Mean of CGPA or Mean Percentage of all successful students
					<br>(X)

				</td>

				<td id="tt1"></td>
				<td id="tt2"></td>
				<td id="tt3"></td>
			</tr>

			<tr>
				<td>Total no. of successful students (Y)</td>

			<td id="tt11"></td>
				<td id="tt12"></td>
				<td id="tt13"></td>
			</tr>

			<tr>
				<td>Total no. of students appeared in the examination (Z)</td>

			<td id="tt21"></td>
				<td id="tt22"></td>
				<td id="tt23"></td>
			</tr>


			<tr>
				<td>API = X* (Y/Z)</td>

		<td id="tt31"></td>
				<td id="tt32"></td>
				<td id="tt33"></td>
			</tr>

			<tr>
				<td>Average API = (AP1 + AP2 + AP3)/3</td>
				<td colspan='3' id="ttans"></td>
			</tr>
		</table>
		</center>
		<br>
		<br>
		<br>
		<!-- This is table 7th -->
		
		
		<p id="tb3"><b>AcademicPerformance in Final Year</b>
		<br><br>
		Academic Performance Level =1.5 * Average API (Academic Performance Index)  <br>
API = (Mean of Final Year Grade Point Average of all successful Students on a 10 point scale) or (Mean of the percentage of marks of all successful students in Final Year/10) x (successful students/number of students appeared in the examination)  <br>
Successful students are those who passed in all the final year courses 
		</p>
	<!-- <input type="submit" onclick="table7()"> -->	<br>
	
<select id="branch7" class="list">
  <option value="CO">CO</option>
  <option value="ME">ME</option>
  <option value="CE">CE</option>
  <option value="EE">EE</option>
  <option value="ET">ET</option>
</select>   <button class="btn" onclick="table7()" id="but3">Generate Values</button><center><div class="loader" id="load2" ><div class="loader1"><div class="loader2"></div></div></div><br><br>

		<center>
		<table border="1" align="center" id="ta77" onmouseover="setCurrent(ta77)">
		<tr>
			<td><b><center>Academic Performance(III Year)</td>

		<td><b><center>CAYm1</td>

				<td><b><center>CAYm2</td>

				<td><b><center>CAYm3</td>
		</tr>




		<tr>
			<td> 
			Mean of CGPA or Mean Percentage of all successful students
<br>(X)

			</td>

			<td id=ttt1></td>
<td id=ttt2></td>
<td id=ttt3></td>
		</tr>

		<tr>
			<td> 
			Total no. of successful students (Y)


			</td>

			<td id=ttt11></td>
<td id=ttt12></td>
<td id=ttt13></td>
		</tr>

		<tr>
			<td> 
			Total no. of students appeared in the examination (Z)

			</td>

			
			<td id=ttt21></td>
<td id=ttt22></td>
<td id=ttt23></td>

			
		</tr>
	

		<tr>
			<td> 
			API = X* (Y/Z)

			</td>
	<td id=ttt31></td>
<td id=ttt32></td>
<td id=ttt33></td>
		</tr>

		<tr>
			<td> 
			Average API = (AP1 + AP2 + AP3)/3

			</td>


			<td colspan='3' id="tttans"></td>
		</tr>
		</table></center>
		
<br>
<br>
	<!-- <input type="button" name="back" value="Back"
		style="width: auto; height: auto; position: relative; left: 50%;"
		onclick="javascript:document.location.href='table_3_4.jsp'"> -->
		<center>
		<button onclick="javascript:document.location.href='table_3_4.jsp'" class="btn">Back</button></center>
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
<script type="text/javascript">

function table5()
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
	    { if(xhr.readyState==3 || xhr.readyState==1|| xhr.readyState==2){
	    /* 	document.getElementById("pw").innerHTML="PLEASE WAIT";
	    	 document.getElementById("body1").style.cursor = "wait"; */
	    	document.getElementById("load").style.display="block"; 
	    }
	         if(xhr.readyState  == 4)
	         {
	              if(xhr.status  == 200) {
	               /*   document.getElementById("tab").innerHTML=xhr.responseText; */
	               va=xhr.responseText.split("'");
	              
	           /*     document.getElementById("pw").innerHTML="";
	               document.getElementById("body1").style.cursor = "default"; */
	               
	               document.getElementById("load").style.display="none"; 
	               
	               var mm= document.getElementById("branch5").value;
	               sessionStorage.setItem("table5","true'"+mm+"");
	               
	               
	             document.getElementById("t10").innerHTML=va[0];
	               document.getElementById("t11").innerHTML=va[1];
	               document.getElementById("t12").innerHTML=va[2]; 
	               
	               
	               document.getElementById("t20").innerHTML=va[3];
	               document.getElementById("t21").innerHTML=va[4];
	               document.getElementById("t22").innerHTML=va[5]; 
	               
	               document.getElementById("t30").innerHTML=va[6];
	               document.getElementById("t31").innerHTML=va[7];
	               document.getElementById("t32").innerHTML=va[8]; 
	               
	             document.getElementById("t40").innerHTML=va[9];
	               document.getElementById("t41").innerHTML=va[10];
	               document.getElementById("t42").innerHTML=va[11]; 
	               
	              document.getElementById("tans").innerHTML=va[12]; 
	               
	               
	                  }
	              else{
	                 document.write("Error code " + xhr.status);}
	         }
	    }; 
	    m= document.getElementById("branch5").value;
	   xhr.open("GET", "table5_back.jsp?val="+m,  true); 
	  
	   xhr.send(); 
}



function table6()
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
	    	if(xhr.readyState==3 || xhr.readyState==1|| xhr.readyState==2){
 	  /*   	document.getElementById("pw1").innerHTML="PLEASE WAIT";
	    	  document.getElementById("body1").style.cursor = "wait"; */
	    	  
	    		document.getElementById("load1").style.display="block"; 
	    	}
	         if(xhr.readyState  == 4)
	         {
	              if(xhr.status  == 200) {
	               /*   document.getElementById("tab").innerHTML=xhr.responseText; */
	               va=xhr.responseText.split("'");
	              
	             /*   document.getElementById("body1").style.cursor = "default";
	               document.getElementById("pw1").innerHTML=""; */
	               
	               document.getElementById("load1").style.display="none"; 
	               
	               var mm= document.getElementById("branch6").value;
	               sessionStorage.setItem("table6","true'"+mm+"");
	               
	               
	              document.getElementById("tt1").innerHTML=va[0];
	               document.getElementById("tt2").innerHTML=va[1];
	               document.getElementById("tt3").innerHTML=va[2]; 
	               
	               
	               document.getElementById("tt11").innerHTML=va[3];
	               document.getElementById("tt12").innerHTML=va[4];
	               document.getElementById("tt13").innerHTML=va[5]; 
	               
	               document.getElementById("tt21").innerHTML=va[6];
	               document.getElementById("tt22").innerHTML=va[7];
	               document.getElementById("tt23").innerHTML=va[8]; 
	               
	               document.getElementById("tt31").innerHTML=va[9];
	               document.getElementById("tt32").innerHTML=va[10];
	               document.getElementById("tt33").innerHTML=va[11]; 
	               
	               
	               document.getElementById("ttans").innerHTML=va[12]; 
	               
	               
	                  }
	              else{
	                 document.write("Error code " + xhr.status);}
	         }
	    }; 
	    m= document.getElementById("branch6").value;
	   xhr.open("GET", "table6_back.jsp?val="+m,  true); 
	  
	   xhr.send(); 
}






function table7()
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
	    { if(xhr.readyState==3 || xhr.readyState==1|| xhr.readyState==2){
 /* 	    	document.getElementById("pw2").innerHTML="PLEASE WAIT";
	    	  document.getElementById("body1").style.cursor = "wait"; */
	    	  
	    	document.getElementById("load2").style.display="block"; 
	    	}
	         if(xhr.readyState  == 4)
	         {
	              if(xhr.status  == 200) {
	               /*   document.getElementById("tab").innerHTML=xhr.responseText; */
	               va=xhr.responseText.split("'");
	               
	        /*        document.getElementById("body1").style.cursor = "default";
	               document.getElementById("pw2").innerHTML=""; */
	               
	               document.getElementById("load2").style.display="none"; 
	               
	               var mm= document.getElementById("branch7").value;
	               sessionStorage.setItem("table7","true'"+mm+"");
	               
	               
	              document.getElementById("ttt1").innerHTML=va[0];
	               document.getElementById("ttt2").innerHTML=va[1];
	               document.getElementById("ttt3").innerHTML=va[2]; 
	               
	               
	               document.getElementById("ttt11").innerHTML=va[3];
	               document.getElementById("ttt12").innerHTML=va[4];
	               document.getElementById("ttt13").innerHTML=va[5]; 
	               
	               document.getElementById("ttt21").innerHTML=va[6];
	               document.getElementById("ttt22").innerHTML=va[7];
	               document.getElementById("ttt23").innerHTML=va[8]; 
	               
	               document.getElementById("ttt31").innerHTML=va[9];
	               document.getElementById("ttt32").innerHTML=va[10];
	               document.getElementById("ttt33").innerHTML=va[11]; 
	               
	               
	               document.getElementById("tttans").innerHTML=va[12]; 
	               
	               
	                  }
	              else{
	                 document.write("Error code " + xhr.status);}
	         }
	    }; 
	    m= document.getElementById("branch7").value;
	   xhr.open("GET", "table7_back.jsp?val="+m,  true); 
	  
	   xhr.send(); 
}

</script>

<!-- Theme Script -->


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

	<script>
tab1=sessionStorage.getItem("table5");
if(tab1!==null)
	{
	 c=tab1.split("'");
	 if(c[0]=="true")
		 {
	 document.getElementById("branch5").value=c[1];
	 table5();
		 }
	
	}
tab2=sessionStorage.getItem("table6");
if(tab2!==null)
	{
	 c=tab2.split("'");
	 if(c[0]=="true")
		 {
	 document.getElementById("branch6").value=c[1];
	 table6();
		 }
	
	}


tab3=sessionStorage.getItem("table7");
if(tab3!==null)
	{
	 c=tab3.split("'");
	 if(c[0]=="true")
		 {
	 document.getElementById("branch7").value=c[1];
	 table7();
		 }
	
	}

</script>



 <script>
/* var ctr=false; */

/* function myFunction(event) {
  var x = event.keyCode;       
  if(ctr==true && x!=190 && x!=188 )
  {
  ctr=false;
  }
  
  if(x==17)
  {
  ctr=true;
  }
  if(ctr==true )
  {
  switch(x)
  {
  case 188:window.location.hash = tables[--i];
  ctr=false;
  break;
  
  case 190:window.location.hash = tables[++i];
  ctr=false;
  break;
 
  }
  
  }
 
} */
/* var tb1=document.getElementById("tb1");
var tb2=document.getElementById("tb2");
var tb3=document.getElementById("tb3");
var tables=[tb1,tb2,tb3];
i=0;
document.onkeyup = function(e) {
	  if (e.ctrlKey && e.which == 190) {
	  tables[++i].scrollIntoView();
		  }
	  else if(e.ctrlKey && e.which== 188)
		  {
		  tables[--i].scrollIntoView();
		  }
	 
	    
	  }; */


</script> 

	<script src="shortcut.js" type="text/javascript"></script>

</html>