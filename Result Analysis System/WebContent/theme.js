var lo = localStorage.getItem("theme");
var chk=	document.getElementById("fdark");

	if (lo == "" || lo == null || lo == "null") {

	} else {

		if (lo == "dark") {
			document.getElementById("body1").style.color = "white";
			document.getElementById("body1").style.background = "#404040";
			document.getElementById("formdark").style.background = "black";
			//de
			document.getElementById("hamdark").style.background = "black";
			document.getElementById("sidedark").style.background = "black";
			if(chk!==null)
				{
				document.getElementById("fdark").style.background="#404040";
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
	
			if(chk!==null)
			{
			document.getElementById("fdark").style.background="white";
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
			if(chk!==null)
			{
			document.getElementById("fdark").style.background="#404040";
			}
		
		
			localStorage.setItem("theme", "dark");
			
			
		} else {
			document.getElementById("body1").style.color = "black";
			document.getElementById("body1").style.background = "white";
			document.getElementById("formdark").style.background = "#07407B";
			document.getElementById("hamdark").style.background = "#07407B";
			document.getElementById("sidedark").style.background = "#07407B";
			if(chk!==null)
			{
			document.getElementById("fdark").style.background="white";
			}
			localStorage.setItem("theme", "light");
			
		}

	
	}
	