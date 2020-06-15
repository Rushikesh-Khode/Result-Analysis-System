<!DOCTYPE html>
<%@page import="java.util.Date"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result Analysis System</title>
	<link rel="stylesheet" href="css/styles.css">
	<link rel="stylesheet" href="css/table.css">
	<script src="css/nav.js"></script>
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







</head><body id="body1" >
<%Date d= new Date();
int year=(d.getYear()-1)+1900;%>



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

    






	<p><b id="tb1">Number of students who have successfully
					graduated without backlogs in any semester/year of study (Without
					Backlog means no compartment or failures in any semester/year of
					study)</b></p>
	<br><p>N1+N2+N3=Total Number Of Student In The Year</p>
		<!-- <input type="submit" value="Generate data for calculation of success ratio" onclick="table1()">  -->
		
			<select id="branch1" class="list">
			<option value="CO">CO</option>
			<option value="ME">ME</option>
			<option value="CE">CE</option>
			<option value="EE">EE</option>
			<option value="ET">ET</option>
		</select>
		<button onclick="table1()" class="btn" id="but1">Generate Data </button><center><div class="loader" id="load" ><div class="loader1"><div class="loader2"></div></div></div></center><!-- <p id="pw"></p> -->
		
<br><br>
		<!-- <p>This Data is Generated for branch :</p> -->
		<br> <br>
		<table border="1" id="ta11" onmouseenter="setCurrent(ta11)" onmouseleave="removeCurrent(ta11)" >
			<tr>
				<th>Year of entry</th>

				<th>N1 + N2 + N3 </th>

				<th colspan="6">Number of students who have successfully
					graduated without backlogs in any semester/year of study (Without
					Backlog means no compartment or failures in any semester/year of
					study)</th>

			</tr>

			<tr>
				<td></td>
				<td></td>
				<th colspan="2">I Year</th>
				<th colspan="2">II Year</th>
				<th colspan="2">III Year</th>
				
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td style="text-align: center">s</td>
				<td style="text-align: center">w</td>
				<td style="text-align: center">s</td>
				<td style="text-align: center">w</td>
				<td style="text-align: center">s</td>
				<td style="text-align: center">w</td>
			</tr>
			<tr>
				<td>CAY(<%=year %>-<%=year+1 %>)</td>
				<td id="t1"></td>
				<td id="t2"></td>
				<td id="t3"></td>
				<td id="t4"></td>
				<td id="t5"></td>
				<td id="t6"></td>
				<td id="t7"></td>


			</tr>

			<tr>
				<td>CAYm1(<%=year-1 %>-<%=year %>)</td>
				<td id="t11"></td>
				<td id="t12"></td>
				<td id="t13"></td>
				<td id="t14"></td>
				<td id="t15"></td>
				<td id="t16"></td>
				<td id="t17"></td>



			</tr>

			<tr>
				<td>CAYm2 (LYG)(<%=year-2 %>-<%=year-1 %>)</td>
				<td id="t21"></td>
				<td id="t22"></td>
				<td id="t23"></td>
				<td id="t24"></td>
				<td id="t25"></td>
				<td id="t26"></td>
				<td id="t27"></td>



			</tr>

			<tr>
				<td>CAYm3 (LYGm1)(<%=year-3 %>-<%=year-2 %>)</td>
			
				<td id="t31"></td>
				<td id="t32"></td>
				<td id="t33"></td>
				<td id="t34"></td>
				<td id="t35"></td>
				<td id="t36"></td>
				<td id="t37"></td>
				




			</tr>

			<tr>
				<td>CAYm4 (LYGm2) (<%=year-4 %>-<%=year-3 %>)</td>
				<td id="t41"></td>
				<td id="t42"></td>
				<td id="t43"></td>
				<td id="t44"></td>
				<td id="t45"></td>
				<td id="t46"></td>
				<td id="t47"></td>



			</tr>

			<tr>
				<td>CAYm5 (<%=year-5 %>-<%=year-4 %>)</td>
				<td id="t51"></td>
				<td id="t52"></td>
				<td id="t53"></td>
				<td id="t54"></td>
				<td id="t55"></td>
				<td id="t56"></td>
				<td id="t57"></td>
			



			</tr>
		</table>
		
	<br>
		<br>
			<br>
			
<!-- table 2 -->

<p><b id="tb2">Number of students who have successfully graduated(Students with backlog in stipulated period of study)</b></p>
<br><p>N1+N2+N3=Total Number Of Student In The Year</p><br>
<!-- <input type="submit" value="Generate values" onclick="table2()"> -->


<select id="branch2" class="list">
  <option value="CO">CO</option>
  <option value="ME">ME</option>
  <option value="CE">CE</option>
  <option value="EE">EE</option>
  <option value="ET">ET</option>
</select> 
<button onclick="table2()" class="btn" id="but2">Generate values</button><!-- <p id="pw1"></p> -->
<center><div class="loader" id="load1" ><div class="loader1"><div class="loader2"></div></div></div></center>
<br><br>
<!-- <p> This Data is Generated for branch : </p> -->
<br>
<table border="1"  id="ta22" onmouseenter="setCurrent(ta22)" onmouseleave="removeCurrent(ta22)">

<tr>

<th rowspan="3" >Year of entry</th>

<th rowspan="3" >N1 + N2 + N3
</th>

<th colspan="7" >Number of students who have successfully graduated
(Students with backlog in stipulated period of study)</th>

</tr>


<tr>
<th width="25%" colspan="2">I Year</th>

<th  width="25%" colspan="2">II Year</th>

<th  width="25%" colspan="2">III Year</th>
</tr>



<tr><td>s</td>
<td>w</td>
<td>s</td><td>w</td><td>s</td><td>w</td>
</tr>

<tr>
<td>CAY(<%=year %>-<%=year+1 %>)</td>
<td id="tt0"></td>
<td id="tt1"></td>
<td id="tt2"></td>
<td id="tt3"></td>
<td id="tt4"></td>
<td id="tt5"></td>
<td id="tt6"></td>

</tr>

<tr>
<td>CAYm1(<%=year-1 %>-<%=year %>)</td>
<td id="tt10"></td>
<td id="tt11"></td>
<td id="tt12"></td>
<td id="tt13"></td>
<td id="tt14"></td>
<td id="tt15"></td>
<td id="tt16"></td>

</tr>

<tr>
<td>CAYm2(LYG) (<%=year-2 %>-<%=year-1 %>)</td>
<td id="tt20"></td>
<td id="tt21"></td>
<td id="tt22"></td>
<td id="tt23"></td>
<td id="tt24"></td>
<td id="tt25"></td>
<td id="tt26"></td>


</tr>

<tr>
<td>CAYm3(LYGm1) (<%=year-3 %>-<%=year-2 %>)</td>
<td id="tt30"></td>
<td id="tt31"></td>
<td id="tt32"></td>
<td id="tt33"></td>
<td id="tt34"></td>
<td id="tt35"></td>
<td id="tt36"></td>


</tr>

<tr>
<td>CAYm4(LYGm2)  (<%=year-4 %>-<%=year-3 %>)</td>
<td id="tt40"></td>
<td id="tt41"></td>
<td id="tt42"></td>
<td id="tt43"></td>
<td id="tt44"></td>
<td id="tt45"></td>
<td id="tt46"></td>

</tr>

<tr>
<td>CAYm5  (<%=year-5 %>-<%=year-4 %>)</td>
<td id="tt50"></td>
<td id="tt51"></td>
<td id="tt52"></td>
<td id="tt53"></td>
<td id="tt54"></td>
<td id="tt55"></td>
<td id="tt56"></td>

</tr>




</table>

<br>
<br>
<!-- <input type="button" name="back" value="Back"
		style="width: auto; height: auto; position: relative; left: 50%;"
		onclick="javascript:document.location.href='main.jsp'"> -->
		
		<!-- <input type="button" name="back" value="Next"
		style="width: auto; height: auto; position: relative; left: 50%;"
		onclick="javascript:document.location.href='table_3_4.jsp'"> -->
		
		<center>
		<button class="btn" style="width:80px;" onclick="javascript:document.location.href='main.jsp'">BACK</button>
		<button class="btn" style="width:80px;" onclick="javascript:document.location.href='table_3_4.jsp'">NEXT</button></center>
		
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

</body>
<!-- if the session is ready -->






<script type="text/javascript">
/* //for table 1 data genration */

/* document.getElementById("load").style.display="none"; */


function table1()
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
	    {    if(xhr.readyState==3 || xhr.readyState==1|| xhr.readyState==2){
	    /* 	document.getElementById("pw").innerHTML="PLEASE WAIT"; */
	    	document.getElementById("load").style.display="block";
	    	}
	         if(xhr.readyState  == 4)
	         {
	              if(xhr.status  == 200) {
	               /*   document.getElementById("tab").innerHTML=xhr.responseText; */
	            document.getElementById("load").style.display="none"; 
	          
	               
	               
	               va=xhr.responseText.split("'");
	               
	              var mm= document.getElementById("branch1").value;
	              
	               sessionStorage.setItem("table1","true'"+mm+"");
	              
	               
	             
	               
	               document.getElementById("t2").innerHTML=va[0];
	               document.getElementById("t3").innerHTML=va[1];
	               	document.getElementById("t4").innerHTML=va[2];
	               document.getElementById("t5").innerHTML=va[3];
	               document.getElementById("t6").innerHTML=va[4];
	               document.getElementById("t7").innerHTML=va[5];


	               document.getElementById("t12").innerHTML=va[6];
	               document.getElementById("t13").innerHTML=va[7];
	               document.getElementById("t14").innerHTML=va[8];
	               document.getElementById("t15").innerHTML=va[9];
	               document.getElementById("t16").innerHTML=va[10];
	               document.getElementById("t17").innerHTML=va[11];

	               document.getElementById("t22").innerHTML=va[12];
	               document.getElementById("t23").innerHTML=va[13];
	               document.getElementById("t24").innerHTML=va[14];
	               document.getElementById("t25").innerHTML=va[15];
	               document.getElementById("t26").innerHTML=va[16];
	               document.getElementById("t27").innerHTML=va[17];

	               document.getElementById("t32").innerHTML=va[18];
	               document.getElementById("t33").innerHTML=va[19];
	               document.getElementById("t34").innerHTML=va[20];
	               document.getElementById("t35").innerHTML=va[21];
	               document.getElementById("t36").innerHTML=va[22];
	               document.getElementById("t37").innerHTML=va[23];

	               document.getElementById("t42").innerHTML=va[24];
	               document.getElementById("t43").innerHTML=va[25];
	               document.getElementById("t44").innerHTML=va[26];
	               document.getElementById("t45").innerHTML=va[27];
	               document.getElementById("t46").innerHTML=va[28];
	               document.getElementById("t47").innerHTML=va[29];

	               document.getElementById("t52").innerHTML=va[30];
	               document.getElementById("t53").innerHTML=va[31];
	               document.getElementById("t54").innerHTML=va[32];
	               document.getElementById("t55").innerHTML=va[33];
	               document.getElementById("t56").innerHTML=va[34];
	               document.getElementById("t57").innerHTML=va[35];
	               
	               
	               document.getElementById("t1").innerHTML=va[36];
	               document.getElementById("t11").innerHTML=va[37];
	               	document.getElementById("t21").innerHTML=va[38];
	               document.getElementById("t31").innerHTML=va[39];
	               document.getElementById("t41").innerHTML=va[40];
	               document.getElementById("t51").innerHTML=va[41];
	            
	               
	                  }
	              else{
// 	                 document.write("Error code " + xhr.status);
		      }
	         }
	    }; 
	    m= document.getElementById("branch1").value;
	   xhr.open("GET", "table1_back.jsp?val="+m,  true); 
	  
	   xhr.send(); 
	}
	
	
	
	
	//table 2 code ajax
	
	
function table2()
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
	    	document.getElementById("load1").style.display="block";
	
	    	}
	         if(xhr.readyState  == 4)
	         {
	              if(xhr.status  == 200) {
	               /*   document.getElementById("tab").innerHTML=xhr.responseText; */
	             document.getElementById("load1").style.display="none";
	               va=xhr.responseText.split("'");
	               
	               var mm= document.getElementById("branch2").value;
	               
	               sessionStorage.setItem("table2", "true'"+mm+"");
	               
	           
	              /*  document.getElementById("pw1").innerHTML=""; */
	               
	               
	               
	               document.getElementById("tt1").innerHTML=va[0];
	               document.getElementById("tt2").innerHTML=va[1];
	               document.getElementById("tt3").innerHTML=va[2];
	               document.getElementById("tt4").innerHTML=va[3];
	               document.getElementById("tt5").innerHTML=va[4];
	               document.getElementById("tt6").innerHTML=va[5];


	               document.getElementById("tt11").innerHTML=va[6];
	               document.getElementById("tt12").innerHTML=va[7];
	               document.getElementById("tt13").innerHTML=va[8];
	               document.getElementById("tt14").innerHTML=va[9];
	               document.getElementById("tt15").innerHTML=va[10];
	               document.getElementById("tt16").innerHTML=va[11];

	               document.getElementById("tt21").innerHTML=va[12];
	               document.getElementById("tt22").innerHTML=va[13];
	               document.getElementById("tt23").innerHTML=va[14];
	               document.getElementById("tt24").innerHTML=va[15];
	               document.getElementById("tt25").innerHTML=va[16];
	               document.getElementById("tt26").innerHTML=va[17];

	               document.getElementById("tt31").innerHTML=va[18];
	               document.getElementById("tt32").innerHTML=va[19];
	               document.getElementById("tt33").innerHTML=va[20];
	               document.getElementById("tt34").innerHTML=va[21];
	               document.getElementById("tt35").innerHTML=va[22];
	               document.getElementById("tt36").innerHTML=va[23];

	               document.getElementById("tt41").innerHTML=va[24];
	               document.getElementById("tt42").innerHTML=va[25];
	               document.getElementById("tt43").innerHTML=va[26];
	               document.getElementById("tt44").innerHTML=va[27];
	               document.getElementById("tt45").innerHTML=va[28];
	               document.getElementById("tt46").innerHTML=va[29];

	               document.getElementById("tt51").innerHTML=va[30];
	               document.getElementById("tt52").innerHTML=va[31];
	               document.getElementById("tt53").innerHTML=va[32];
	               document.getElementById("tt54").innerHTML=va[33];
	               document.getElementById("tt55").innerHTML=va[34];
	               document.getElementById("tt56").innerHTML=va[35];
	               
	               document.getElementById("tt0").innerHTML=va[36];
	               document.getElementById("tt10").innerHTML=va[37];
	               	document.getElementById("tt20").innerHTML=va[38];
	               document.getElementById("tt30").innerHTML=va[39];
	               document.getElementById("tt40").innerHTML=va[40];
	               document.getElementById("tt50").innerHTML=va[41];
	            
	               
	                  }
	              else{
// 	                 document.write("Error code " + xhr.status);
		      
		      }
	         }
	    }; 
	    m= document.getElementById("branch2").value;
	   xhr.open("GET", "table2_back.jsp?val="+m,  true); 
	  
	   xhr.send(); 
	}

</script>
<!-- 
Theme script -->

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


<script>
tab1=sessionStorage.getItem("table1");
if(tab1!==null)
	{
	 c=tab1.split("'");
	 if(c[0]=="true")
		 {
	 document.getElementById("branch1").value=c[1];
	 table1();
		 }
	
	}
tab2=sessionStorage.getItem("table2");
if(tab2!==null)
	{
	 c=tab2.split("'");
	 if(c[0]=="true")
		 {
	 document.getElementById("branch2").value=c[1];
	 table2();
		 }
	
	}


</script>



 <script>
/* var ctr=false;
function myFunction(event) {
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
  case 190:window.location.hash = "tb2";
  ctr=false;
  break;
  case 188:window.location.hash = "body1";
  ctr=false;
  break;
  }
 
  }
 
} */


/* document.onkeyup = function(e) {
	  if (e.ctrlKey && e.which == 190) {
		  document.getElementById("tb2").scrollIntoView();
		  }
	  else if(e.ctrlKey && e.which== 188)
		  {
		  document.getElementById("body1").scrollIntoView();
			 
		  }
	  
	  else if(e.altKey && e.which==78 )
		  {

		  window.location.href = "table_3_4.jsp";
		  }
	  if (e.shiftKey && e.which == 72) {
		   alert("here");
		   window.location.href = "main.jsp";
	  } 
	  
	    
	  }; */
	 
/* 	  var head = document.getElementsByTagName('HEAD')[0];  
	  
	  // Create new link Element 
	  var link = document.createElement('link'); 


	 // set the attributes for link element  
	link.rel = 'stylesheet';  

	link.type = 'text/css'; 
function per(){
	link.href = 'css/styles.css';  }

	// Append link element to HTML head 
	head.appendChild(link);  */


</script> 


	<script src="shortcut.js" type="text/javascript"></script>

</html>
