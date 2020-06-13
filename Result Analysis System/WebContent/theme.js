var lo = localStorage.getItem("theme");
var chk=	document.getElementById("fdark");
var h=	document.getElementById("hars");
var r=	document.getElementById("rush");
var ri=	document.getElementById("rite");
var y=	document.getElementById("yash");


var adark=document.getElementsByClassName("a_dark");



	if (lo == "" || lo == null || lo == "null") {

	} else {

		if (lo == "dark") {
			document.getElementById("body1").style.color = "white";
			document.getElementById("body1").style.background = "#404040";
			document.getElementById("formdark").style.background = "black";
			//de
			document.getElementById("hamdark").style.background = "black";
			document.getElementById("sidedark").style.background = "black";
			document.getElementById("keyback").style.background = "black";
		
			if(chk!==null)
				{
				document.getElementById("fdark").style.background="#404040";
				}
			
			if(h!==null && r!==null && ri!==null && y!==null)
				{
				h.style.background = "black";
				r.style.background = "black";
				ri.style.background = "black";
				y.style.background = "black";
				
				
				h.style.color="white";
				r.style.color="white";
				ri.style.color="white";
					y.style.color="white";
				
				
				}
			
			if(adark[0]!="undefined")
				{
				for(i=0;i<adark.length;i++){adark[i].style.color="white";}
				}
			
			//
			document.getElementById("dc").checked=true;
		
		}

		else {
			document.getElementById("body1").style.color = "black";
			document.getElementById("body1").style.background = "white";
			document.getElementById("formdark").style.background = "#07407B";
			
			//
			document.getElementById("hamdark").style.background = "#07407B";
			document.getElementById("sidedark").style.background = "#07407B";
			document.getElementById("keyback").style.background = "#07407B";
	
			if(chk!==null)
			{
			document.getElementById("fdark").style.background="white";
			}
			
			
			if(h!==null && r!==null && ri!==null && y!==null)
			{
			h.style.background = "white";
			r.style.background = "white";
			ri.style.background = "white";
			y.style.background = "white";
			
			
			h.style.color="#07407b";
			r.style.color="#07407b";
			ri.style.color="#07407b";
				y.style.color="#07407b";
			
			
			}
			
			if(adark[0]!="undefined")
			{
			for(i=0;i<adark.length;i++){adark[i].style.color="blue";}
			}
			
			
		}
	}
	function dark() {

		if (document.getElementById("dc").checked) {

			document.getElementById("body1").style.color = "white";
			document.getElementById("body1").style.background = "#404040";
			document.getElementById("formdark").style.background = "black";
			document.getElementById("hamdark").style.background = "black";
			document.getElementById("sidedark").style.background = "black";
			document.getElementById("keyback").style.background = "black";

			if(chk!==null)
			{
			document.getElementById("fdark").style.background="#404040";
			}
		
			
			if(h!==null && r!==null && ri!==null && y!==null)
			{
			h.style.background = "black";
			r.style.background = "black";
			ri.style.background = "black";
			y.style.background = "black";
			
			
			h.style.color="white";
			r.style.color="white";
			ri.style.color="white";
				y.style.color="white";
			
			
			}
			if(adark[0]!="undefined")
			{
			for(i=0;i<adark.length;i++){adark[i].style.color="white";}
			}
		
		
			localStorage.setItem("theme", "dark");
			
			
		} else {
			document.getElementById("body1").style.color = "black";
			document.getElementById("body1").style.background = "white";
			document.getElementById("formdark").style.background = "#07407B";
			document.getElementById("hamdark").style.background = "#07407B";
			document.getElementById("sidedark").style.background = "#07407B";
			document.getElementById("keyback").style.background = "#07407B";

			if(chk!==null)
			{
			document.getElementById("fdark").style.background="white";
			}
			
			
			if(h!==null && r!==null && ri!==null && y!==null)
			{
			h.style.background = "white";
			r.style.background = "white";
			ri.style.background = "white";
			y.style.background = "white";
			
			
			h.style.color="#07407b";
			r.style.color="#07407b";
			ri.style.color="#07407b";
				y.style.color="#07407b";
			
			
			}
			
			if(adark[0]!="undefined")
			{
			for(i=0;i<adark.length;i++){adark[i].style.color="blue";}
			}
			localStorage.setItem("theme", "light");
			
		}

	
	}
/*	///////////////////////////////////////////////////////////////////////////////////
*/	
	
	// Get the modal
	var modal = document.getElementById("myModal");


	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	// When the user clicks the button, open the modal 
	 function shortkey () {
	  modal.style.display = "block";
	
	}

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
	  modal.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	  if (event.target == modal) {
	    modal.style.display = "none";
	  }
	}