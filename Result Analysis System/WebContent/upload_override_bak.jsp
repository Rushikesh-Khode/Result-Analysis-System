
<%@page import="org.apache.poi.ss.usermodel.Cell"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%@page import="java.nio.file.Files"%>
<%@page import="org.apache.poi.ss.usermodel.Sheet"%>
<%@page import="org.apache.poi.ss.usermodel.WorkbookFactory"%>
<%@page import="org.apache.poi.ss.usermodel.Workbook"%>
<%@page import="org.apache.poi.xssf.usermodel.XSSFSheet"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="org.apache.poi.xssf.usermodel.XSSFWorkbook"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.sql.*"%>
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
  <center>
  <div class="main_container">
    <div class="formback" id="formdark">


	<%	String selected_year=session.getAttribute("exe").toString();
		String msg = "";
		String name = "";
		
		 File f_of_workspace = new File("./");
			String path_of_workspace=f_of_workspace.getAbsolutePath().substring(0,f_of_workspace.getAbsolutePath().length()-1);
		
		
		
		
		
		
		String temppath=path_of_workspace+"\\tempupload",oripath=path_of_workspace+"\\uploads";
		
		
		
		
		File tem_p=new File(temppath);
		if(!tem_p.isDirectory())
		{
			tem_p.mkdir();
		}
	File tem_o = new File(oripath);
		if(!tem_o.isDirectory())
		{
			tem_o.mkdir();
		}
		
		
		
		
		String filename = "";
		String type = "";
		String chk1="";
		int ir=0;
		boolean delete_it=false;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/datademo", "root", "root");

			MultipartRequest mr = new MultipartRequest(request, temppath,
					10000 * 10000);
			Enumeration e = mr.getFileNames();

			while (e.hasMoreElements()) {
				name = (String) e.nextElement();
				filename = mr.getFilesystemName(name);
				type = mr.getContentType(name);
			}
			

			File af = new File(oripath);
			File f = new File(temppath+"\\" + filename);
		
			if (name == "" || name == null || name == "null" || filename == "null" || filename == ""
					|| filename == null) {
				msg += "\t No file is uploaded \t";
			} else {
				if (type.equals("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")) 
				{boolean tobedone=true;
					FileInputStream tfin = new FileInputStream(f);
					XSSFWorkbook twb = new XSSFWorkbook(tfin);
					XSSFSheet tsh = twb.getSheetAt(0);
					int trn = tsh.getLastRowNum();
					int row_num=Math.floorDiv(trn, 2);
					chk1=tsh.getRow(row_num).getCell(12).getStringCellValue();
					if(!chk1.equals(selected_year))
					{tobedone=false;
					
					tfin.close();
					twb.close();
					f.delete();
					out.println("<br>Selected year and year in this file is different<br>");
						
					}
					if(tobedone==true){
					 PreparedStatement ps = con.prepareStatement("delete from stud_data where Exam_Name='"+chk1+"'");
						ir = ps.executeUpdate();
						
					}
					int ex=0;
				   tfin.close();
					twb.close();
					if (ir > 0) {

						Path temp = Files.move(
								Paths.get(temppath+"\\" + filename),
								Paths.get(oripath+"\\" + filename));
						if (temp != null) {
							f.delete();
							File orignal_f = new File(oripath+"\\" + filename);
							FileInputStream fin = new FileInputStream(orignal_f);
							XSSFWorkbook wb = new XSSFWorkbook(fin);
							XSSFSheet sh = wb.getSheetAt(0);
							int rn = sh.getLastRowNum();
							File nf = new File(oripath+"\\" + filename);
							PreparedStatement sp = con
									.prepareStatement("insert into stud_data values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
							int rowcu = 0;
							for (int i = 1; i <= rn; i++) {

								try {
									sp.setInt(1, (int) (sh.getRow(i).getCell(0).getNumericCellValue()));
									sp.setInt(2, (int) (sh.getRow(i).getCell(1).getNumericCellValue()));
									sp.setString(3, sh.getRow(i).getCell(2).getStringCellValue());
									sp.setInt(4, (int) (sh.getRow(i).getCell(3).getNumericCellValue()));
									sp.setString(5, sh.getRow(i).getCell(4).getStringCellValue());
									sp.setInt(6, (int) (sh.getRow(i).getCell(5).getNumericCellValue()));
									sp.setString(7, sh.getRow(i).getCell(6).getStringCellValue());
									sp.setString(8, sh.getRow(i).getCell(7).getStringCellValue());
									sp.setInt(9, (int) (sh.getRow(i).getCell(8).getNumericCellValue()));
									sp.setInt(10, (int) (sh.getRow(i).getCell(9).getNumericCellValue()));
									sp.setDouble(11, sh.getRow(i).getCell(10).getNumericCellValue());
									sp.setString(12, sh.getRow(i).getCell(11).getStringCellValue());
									sp.setString(13, sh.getRow(i).getCell(12).getStringCellValue());
									rowcu += sp.executeUpdate();
								} catch (Exception ee) {
									ee.printStackTrace();
									
									wb.close();
									fin.close();
									nf.delete();
						
										delete_it=true;
										out.println(ir);
										msg +=" Due to Exception/Erors file is deleted from server OR Check The File Probably You Are Trying To Inserting A Value That Is Not Matching With The Datatype Of The Coloumn .Please try again";

								}

							}
							wb.close();
							fin.close();
							orignal_f.delete();
											nf.delete();
											af.delete();
							msg += "\n Uploading done  updated rows are " + rowcu;

						}

					}

				} else {
					msg = "\t You Uploaded wrong file \t";
					f.delete();
				}

			}

			/*  Workbook wb = WorkbookFactory.create(fin);
			
			fin.close();
			Sheet s = wb.getSheetAt(0);
			int rn=s.getLastRowNum();
			int rm=s.getFirstRowNum();
			for(int i=rm;i<=rn;i++)
			{ String ss=s.getRow(i).getCell(0).toString();
			
				out.println("<br>"+ss+"<br>");
			} */
			if(delete_it==true)
				
			{
				PreparedStatement pss = con.prepareStatement("delete from stud_data where Exam_Name='"+chk1+"'");
				pss.executeUpdate();
			
			}
		
			con.close();
			System.gc();

		}

		catch (Exception e) {
			msg = e.toString();
			out.print("<br>" + e);
			e.printStackTrace();
		}
		if (filename == null || filename == "null") {

		} else {
			msg = "file name :" + filename + " " + msg;
		}
		out.println("<br>"+msg+"<br>");
		session.setAttribute("alert", msg);
		//request.removeAttribute("alert");
		//request.setAttribute("alert", msg);

		//RequestDispatcher rd = request.getRequestDispatcher("main.jsp");

		//rd.forward(request, response);

		//response.sendRedirect("main.jsp");
	%>

<br>
<a href="main.jsp">
<button class="btn" >Go To Home</button></a>
</center>
</div></div>


<div id="myModal" class="modal">
  <div class="modal-content" id="keyback">
    <span class="close">&times;</span>
    <div id="keyfront" style="color:white">
    <h2 align="center">Keyboard Shortcut's</h2><center>
    <table >
    <tr> For Website</th></tr>
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