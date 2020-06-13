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

    

<p id="tb1"><b>Success rate without backlog in stipulated period of study</b>
<br>
<br>
SI= (Number of students who have passed from the program without backlog)/ (Number of students admitted in the first year of that batch plus actually admitted in 2nd year via lateral entry) 
<br>Average SI = Mean of success index (SI) for past three batches Success rate without backlogs in any year of study = 40 × Average SI 

</p><br>
<!-- <input type="submit" value="Generate values" onclick="table3()"> -->

<select  class="list" id="branch3">
  <option value="CO">CO</option>
  <option value="ME">ME</option>
  <option value="CE">CE</option>
  <option value="EE">EE</option>
  <option value="ET">ET</option>
</select>

<button onclick="table3()" class="btn"  id="but1">Generate Values</button>
<center><div class="loader" id="load" ><div class="loader1"><div class="loader2"></div></div></div></center>
<!-- <p id="pw"></p> -->
<br><br>
<center>
<table border="1" align="center"  id="ta33"  onmouseover="setCurrent(ta33)">
		<tr>
			<td><b><center>ITEM</td>

			<td><b><center>Last Year Graduate,
                        <br><b>(LYG)
                      </td>

			<td><b><center>Last Year Graduate
                 <br>    <b>         Minus 1 Batch,
                      <br><b>(LYGm1)

                      </td>

			<td><b><center>Last Year Graduate
             <br><b>Minus 2 Batch,
              <br><b>(LYGm2)

</td>
		</tr>



		<tr>
			<td> 
			Total number of students
            <br>(admitted through state level
             <br>counseling + admitted through
             <br>Institute  on level quota+
             <br>actually admitted through
             <br>lateral entry) (N1 + N2 + N3)

			</td>

			<td id="tt1">
			</td>

			<td id="tt2">
			</td>

		<td id="tt3">
			</td>
		</tr>

		<tr>
			<td> 
			Number of students who have
         <br>passed  without backlogs in the
          <br>stipulated period


			</td>

			<td id="tt11">
			</td>

			<td id="tt12">
			</td>

		<td id="tt13">
		</tr>

		<tr>
			<td> 
			Success index (SI)

			</td>

			<td id="tt21">
			</td>

			<td id="tt22">
			</td>

		<td id="tt23">
			</td>
		</tr>
	

		<tr>
			<td> 
			Average SI

			</td>

			<td colspan="3" id="avg">
			</td>
		</tr>
</table>
</center>
<br>
<br>
<br>
<br>



<p id="tb2"><b>Successrate with backlogin stipulated period of study</b>
<br><br>

SI= (Number of students who have passed from the program in the stipulated period of course duration)/ (Number of students admitted in the first year of that batch plus actually admitted in 2nd year via lateral entry) 
<br>Average SI = mean of success index (SI) for past three batches <br>
Success rate = 20 × Average SI 
</p>
<br>
<!-- <input type="submit" onclick="table4()"> -->

<select id="branch4"  class="list">
  <option value="CO">CO</option>
  <option value="ME">ME</option>
  <option value="CE">CE</option>
  <option value="EE">EE</option>
  <option value="ET">ET</option>
</select> 
<button onclick="table4()" class="btn" id="but2">Generate Values</button><!-- <p id="pw1"></p> -->

<center><div class="loader" id="load1" ><div class="loader1"><div class="loader2"></div></div></div></center>
<br><br>

<center>
<table border="1"  align="center" id="ta44" onmouseover="setCurrent(ta44)">
		<tr>
			<td><b><center>ITEM</td>

			<td><b><center>Last Year Graduate,
                        <br><b>(LYG)
                      </td>

			<td><b><center>Last Year Graduate
                 <br>    <b>         Minus 1 Batch,
                      <br><b>(LYGm1)

                      </td>

			<td><b><center>Last Year Graduate
             <br><b>Minus 2 Batch,
              <br><b>(LYGm2)

</td>
		</tr>



		<tr>
			<td> 
			Total number of students
            <br>(admitted through state level
             <br>counseling + admitted through
             <br>Institute  on level quota+
             <br>actually admitted through
             <br>lateral entry) (N1 + N2 + N3)

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
			Number of students who have
         <br>passed  with backlogs in the
          <br>stipulated period


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
			Success index (SI)

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
			Average SI

			</td>

			<td colspan="3" id="ans">
			</td>
		</tr>
</table>
</center>
<br>
<br>
<br>

		
		<!-- <input type="button" name="back" value="Back"
		style="width: auto; height: auto; position: relative; left: 50%;"
		onclick="javascript:document.location.href='table_1_2.jsp'">
		
		<input type="button" name="back" value="Next"
		style="width: auto; height: auto; position: relative; left: 50%;"
		onclick="javascript:document.location.href='table_5_6_7.jsp'"> -->
		
		<center>
		<button class="btn" style="width:80px;" onclick="javascript:document.location.href='table_1_2.jsp'">BACK</button>
		<button class="btn" style="width:80px;" onclick="javascript:document.location.href='table_5_6_7.jsp'">NEXT</button></center>
		
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

function table3()
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
	               
	               
	         /*       document.getElementById("pw").innerHTML="";
	               document.getElementById("body1").style.cursor = "default"; */
	               
	               
	               document.getElementById("load").style.display="none";
	               
	               var mm= document.getElementById("branch3").value;
	               sessionStorage.setItem("table3","true'"+mm+"");
	               
	              document.getElementById("tt1").innerHTML=va[0];
	               document.getElementById("tt2").innerHTML=va[1];
	               document.getElementById("tt3").innerHTML=va[2]; 
	               
	               
	               document.getElementById("tt11").innerHTML=va[3];
	               document.getElementById("tt12").innerHTML=va[4];
	               document.getElementById("tt13").innerHTML=va[5]; 
	               
	               document.getElementById("tt21").innerHTML=va[6];
	               document.getElementById("tt22").innerHTML=va[7];
	               document.getElementById("tt23").innerHTML=va[8]; 
	               
 
	               document.getElementById("avg").innerHTML=va[9]; 
	               
	               
	                  }
	              else{
	                 document.write("Error code " + xhr.status);}
	         }
	    }; 
	    m= document.getElementById("branch3").value;
	   xhr.open("GET", "table3_back.jsp?val="+m,  true); 
	  
	   xhr.send(); 
}



//table 4 genration

function table4()
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
 	    /* 	document.getElementById("pw1").innerHTML="PLEASE WAIT";
 	    	  document.getElementById("body1").style.cursor = "wait"; */
    		 document.getElementById("load1").style.display="block";
 	    	}
         if(xhr.readyState  == 4)
         {
              if(xhr.status  == 200) {
               /*   document.getElementById("tab").innerHTML=xhr.responseText; */
               va=xhr.responseText.split(",");
               
               document.getElementById("load1").style.display="none";
               
            /*    document.getElementById("body1").style.cursor = "default";
               document.getElementById("pw1").innerHTML=""; */
               
               var mm= document.getElementById("branch4").value;
               sessionStorage.setItem("table4","true'"+mm+"");
               
               
               document.getElementById("t10").innerHTML=va[0];
               document.getElementById("t11").innerHTML=va[1];
               document.getElementById("t12").innerHTML=va[2];
               
               
               document.getElementById("t20").innerHTML=va[3];
               document.getElementById("t21").innerHTML=va[4];
               document.getElementById("t22").innerHTML=va[5];
               
               document.getElementById("t30").innerHTML=va[6];
               document.getElementById("t31").innerHTML=va[7];
               document.getElementById("t32").innerHTML=va[8];
               
               document.getElementById("ans").innerHTML=va[9];
               
               
                  }
              else{
                 document.write("Error code " + xhr.status);}
         }
    }; 
    m= document.getElementById("branch4").value;
   xhr.open("GET", "table4_back.jsp?val="+m,  true); 
  
   xhr.send(); 
} 


</script>

<!-- Theme Script -->


<script src="theme.js">
	/* 
	var lo = localStorage.getItem("theme");
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
	
	
	<script>
tab1=sessionStorage.getItem("table3");
if(tab1!==null)
	{
	 c=tab1.split("'");
	 if(c[0]=="true")
		 {
	 document.getElementById("branch3").value=c[1];
	 table3();
		 }
	
	}
tab2=sessionStorage.getItem("table4");
if(tab2!==null)
	{
	 c=tab2.split("'");
	 if(c[0]=="true")
		 {
	 document.getElementById("branch4").value=c[1];
	 table4();
		 }
	
	}






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

	  window.location.href = "table_5_6_7.jsp";
	  }
	
	    
	  }; */


</script>

	<script src="shortcut.js" type="text/javascript"></script>


</html>