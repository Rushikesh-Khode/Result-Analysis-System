<%@page import="java.sql.*"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.awt.Desktop"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
    <center>
	<%
		try {
			response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); //HTTP 1.1 
			response.setHeader("Pragma","no-cache"); //HTTP 1.0 
			response.setDateHeader ("Expires", 0);
			String path = session.getAttribute("path1").toString();
			String enroll = session.getAttribute("enroll").toString();
		
			if (path == "no") {
				out.println("first fill the form");
			} else if (path.equals("al")) {

				out.println("Dont try to upload file you have alredy file present");
			} else {
				String name = "", filename = "", type = "";
				try {
					 String npath=path+"\\"+"2";
					 File fd = new File(npath);
					 fd.mkdir();
					 path=npath;
					MultipartRequest mr = new MultipartRequest(request, path, 10000 * 10000);
					Enumeration e = mr.getFileNames();

					while (e.hasMoreElements()) {
						name = (String) e.nextElement();
						filename = mr.getFilesystemName(name);
						type = mr.getContentType(name);
					}
                   
					if (type.equals("image/jpeg")
							&& (filename != "" || filename != " " || filename != null || filename != "null")) 
					{
						Class.forName("com.mysql.cj.jdbc.Driver");
						Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/datademo", "root",
								"root");
						PreparedStatement ps = con.prepareStatement(" update alu_data set doc_2=? where enroll=?");
						ps.setInt(1, 12);
						ps.setInt(2, Integer.valueOf(enroll));
						int i = ps.executeUpdate();
						
						String ab_path="documents\\"+enroll+"\\2\\"+filename;
						PreparedStatement pss = con.prepareStatement("update alu_data set doc_2_path=? where enroll=?"); 
						pss.setString(1, ab_path);
						pss.setInt(2,Integer.valueOf(enroll));
						pss.executeUpdate();
						out.println("<br><br><p style='font-size:16px; font-style:bold'>Registration Done<p><br>");
						session.setAttribute("path",null);
						session.setAttribute("enroll",null);
						session.removeAttribute("enroll");
						session.removeAttribute("path");
						
					/* 	session.invalidate(); */

						/*  Desktop d= Desktop.getDesktop();
						File f= new File(path+"\\"+filename);
						
						
						  String src=path+"\\"+filename;
						
						  	out.println("<img src='' id='im' width='100%' height='100%'>") ;
						out.println("<script>document.getElementById('im').src='"+src+"'</script>"); */
					}
					else {
						out.println("<br><br><p style='font-size:16px; font-style:bold'>please upload valid image/scan image<p><br>");
						File f = new File(path + "\\" + filename);
						f.delete();
						out.println("<br><a href='alu_form.jsp'><button class='btn'>Try Again</button></a><br>");
					}

				} catch (Exception e) {
					
					out.println(e);
					out.println("<br><a href='alu_form.jsp'><button class='btn'>Try Again 1</button></a><br>");
				}

			}

		} catch (Exception e) {
			out.println(e);
			out.println("<br><a href='alu_form.jsp'><button class='btn'>Try Again 2</button></a><br>");
		}
	%>

<a href="main.jsp">
<button class="btn" >Go To Home</button></a>
</center>
</body>
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

	
	} */
	
	
	

</script>
</html>