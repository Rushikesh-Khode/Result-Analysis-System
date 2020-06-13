	
	/*document.onkeyup = function(e) {
		   if (e.shiftKey && e.which == 72) {
			   alert("here");
			   window.location.href = "main.jsp";
		  } 
		   
		   
		   else if (e.ctrlKey && e.altKey && e.which == 89) {
		    alert("Ctrl + Alt + Y shortcut combination was pressed");
		  } else if (e.ctrlKey && e.altKey && e.shiftKey && e.which == 85) {
		    alert("Ctrl + Alt + Shift + U shortcut combination was pressed");
		  }
		};
	*/
	
	
		/*
		  function table1cut(m)
		  {   
			  function myfunction(){
				   if(m.shiftKey && m.which==49 )
				  {

					  document.getElementById("branch1").value="CO";
					  document.getElementById("but1").click();

				  }
				   else if(m.shiftKey && m.which==50 )
					  {

						  document.getElementById("branch1").value="ME";
						  document.getElementById("but1").click();

					  }
				   else if(m.shiftKey && m.which==51 )
					  {

						  document.getElementById("branch1").value="CE";
						  document.getElementById("but1").click();

					  }
				   else if(m.shiftKey && m.which==52 )
					  {

						  document.getElementById("branch1").value="EE";
						  document.getElementById("but1").click();

					  }
				   else if(m.shiftKey && m.which==53 )
					  {

						  document.getElementById("branch1").value="ET";
						  document.getElementById("but1").click();

					  }
			  }
				
			  document.addEventListener("onkeyup", myfunction);
				
					  }
					  
				*/

var current;
var branch=["branch1","branch2","branch3","branch4","branch5","branch6","branch7"];
var button=["but1","but2","but1","but2","but1","but2","but3"];
j=0;
function setCurrent(num)
{
	/*document.getElementById(num.id).style.boxShadow = "0px 0px 15px white";*/
switch(num.id)
{
case "ta11":j=0;break;
case "ta22":j=1;break;
case "ta33":j=2;break;
case "ta44":j=3;break;
case "ta55":j=4;break;
case "ta66":j=5;break;
case "ta77":j=6;break;
}

}

/*function removeCurrent(num)
{
	
current=-1;
document.getElementById(num.id).style.boxShadow = "0px 0px 0px";

}*/

				 
		  var tb1=document.getElementById("tb1");
			var tb2=document.getElementById("tb2");
			var tb3=document.getElementById("tb3");
			var tables=[]
			if(tb3!=null){
			 tables=[tb1,tb2,tb3];
			}
			else
				{
				 tables=[tb1,tb2];
				}
			i=0;
			document.onkeyup = function(e) {
				var x = document.activeElement.tagName;
				  if (e.ctrlKey && e.which == 190) {
					 if(i<tables.length)
						 {  
						  tables[++i].scrollIntoView();
						 
						  }
				
					  }
				 
					  
				  else if(e.ctrlKey && e.which== 188)
					  {
					  if(i>=0)
						  {
						  tables[--i].scrollIntoView();
						  }
					 
					  }
				 
				  if(i==tables.length)
					  {i-=1;}
				  if(i<0)
					  {i+=1;}
				  
				  
		/*		  //////////////////////////////////////////////////////////////////////
		*/		  
				  
				  else if(e.shiftKey && e.which==72)
					  {
					  if(x=="BODY"){
		window.location.href="main.jsp";
					  }
					  }
				  
				  else if(e.shiftKey && e.which==84)
				  { if(x=="BODY"){
					  	window.location.href="table_1_2.jsp";
				  }
				  }
				  
				  else if(e.shiftKey && e.which==68)
				  {  
				       if(x=="BODY"){
						document.getElementById("dc").click();
				       }
				  }
				  
				 ///table 
					  if(e.shiftKey && e.which==49  )
					  {
						  document.getElementById(branch[j]).value="CO";
						  document.getElementById(button[j]).click();

					  }
					   else if(e.shiftKey && e.which==50  )
						  {

							  document.getElementById(branch[j]).value="ME";
							  document.getElementById(button[j]).click();

						  }
					   else if(e.shiftKey && e.which==51  )
						  {

							  document.getElementById(branch[j]).value="CE";
							  document.getElementById(button[j]).click();

						  }
					   else if(e.shiftKey && e.which==52   )
						  {

							  document.getElementById(branch[j]).value="EE";
							  document.getElementById(button[j]).click();

						  }
					   else if(e.shiftKey && e.which==53 )
						  {

							  document.getElementById(branch[j]).value="ET";
							  document.getElementById(button[j]).click();

						  }
					  
					   else if(e.shiftKey && e.which==75 )
						  {
							  document.getElementById("myBtn").click();

						  }
					  
					
				  
				  };
			
		
	