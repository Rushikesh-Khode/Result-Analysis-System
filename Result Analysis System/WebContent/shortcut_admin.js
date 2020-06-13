current=0;



	function deletealumni(num){current=num;

	document.getElementById(num.toString()).style.color="#ff8000";
	}
	function remove(num){
		document.getElementById(num.toString()).style.color="white";
		current=0;
	}

document.onkeyup = function(e) {
				  if(e.shiftKey && e.which==68)
	  {
			document.getElementById("dc").click();
	  }
				  else if(e.shiftKey && e.which==49  )
				  {
					  document.getElementById('statmenu').selectedIndex=1;
					  adtable();

				  }
		 else if(e.shiftKey && e.which==50  )
					  {

			 document.getElementById('statmenu').selectedIndex=2;adtable();

					  }
		else if(e.shiftKey && e.which==51  )
					  {
			document.getElementById('statmenu').selectedIndex=3;
			adtable();

					  }		
				  
		else if(e.shiftKey && e.which ==83)
			{
			document.getElementById('DyRe').click();
			
			}
				  
				  
		else if(e.shiftKey && e.which ==82)
			{
			
			if(current!=0){
			window.location.href="delete_alu.jsp?eno="+current+"&s="+3+"";
			current=0;
			}
			}
		  else if(e.shiftKey && e.which==75 )
		  {
			  document.getElementById("myBtn").click();

		  }
	  
				 
};