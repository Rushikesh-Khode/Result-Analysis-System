
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


	<%
	String pass="";
	

	
	
	String s1,s2,s3,s4,s5,s6,s7,s8,s9,s0;
	s1="yftWD!4ciH$hV*&p%d&5E%1z9g9ymza3tMblFgAr368iOgk!JZgNWbc$K4of1Iw9@#GrWS?uXkz&!CB%qE51cld2S?zn@VW4Qe!u";
	s2="?IGwS4Szc@p05lh0w@KYXoZCmwtRxXRsTT18@K^vv9Ocmv8CN@U9W2RUQJPKGIOpdAjXm%KqXXVty@tr!tgRFKQ9dNZB$HLdt2ho";
	s3="n@FN7y$JBBJcA29NmXkNoCIIAR2HaexFVMZVUzhtJexJ21Lln5^Y6al%$$EjSqZccPiN9MU5k!&Ud**9hvaw2dJA3V&5o3IGn4^H";
	s4="kw1XoXq4dn%b8MrnZVPNu8FThzPMFTSza@jI9bY6ruCxLjVHmeg4esf3RuP%7rEQ3nQJlZ%RxO!J43S3t*xOvstCfVO9GQJSutju";
	s5="GsglUTvXhZKkCb!h0le8%zqC$R1nqQFYnZcxn1ad02XdzxUOPhH6pB3GRMlUHCtFi%2*cKID!om@l#0e%N*Zpf@r3B!v#Bo1T%q3";
	s6="B*xX^u@H!u9QERT?W6K?jBc!PETm*QukyNgb%FMT4zC5$35540%o2@8j^uHnNh@ugsWXN$O6@tN62@ks?o*qBTbYakG%@76DF2Hm";
	s7="#U$oTPp%r$tB5QeYje@Bqfp?914%Hj*@Ajhd@ObHtWZUXuz@FTUpLCFjibRRBayLbC#K8WyfWpc^%17GN&I6niUzr6QJZPYCz^BO";
	s8="jQM5yZjw08ilfPui2$vN9UaPROkI@!n#0MzDxhOZ@1O*5dtQHcgR$Rw8Ugx?ZrOwP1HrA4BTYwNiXZ#i02YK$z0klgehfpF5%lsL";
	s9="tyKVKje1i?mUmv3BThtrBgf&JOMQddbtT?T5G$kK#&NTS22w67G$q%zlPq^mn^aNyZvC&3CV5gbmKcWH9hxUxNnZ6%Y4EtoDbcLa";
	s0="wsschwLW1!roAsXnwf^iYAllBl?5yHl3vB^ukZ*#@b9r$Y5OVdVstbMc3?ojf@Zk#SsKuWneR#$9WwMcAlQj!kderN?IlE$hecak";
	String s[]= {s0,s1,s3,s4,s5,s6,s7,s8,s9,s2};

	while(pass.length()<7) 
	{
		String m =String.valueOf(Math.random());
		String n =String.valueOf(m.charAt(2));
		int nn=Integer.parseInt(n);
		m=m.substring(4, 6);
		int mm = Integer.parseInt(m);
		pass+=s[nn].charAt(mm);
	}
	out.println(pass);

/* out.println("<script>font_name=['Georgia','Comic Sans MS','Arial Black','Barrio'];document.getElementById('captcha').value=captcha;document.getElementById('captcha').style.textAlign='center';document.getElementById('captcha').style.letterSpacing = '15px'document.getElementById('captcha').style.textSize='200px';document.getElementById('captcha').style.textDecorationLine = 'line-through';document.getElementById('captcha').style.fontFamily=font_name[Math.floor(Math.random()*font_name.length)];</script>");                                                     
 */

%>
<%-- <html>
<body>
<%out.println("<p id='captcha'>"+pass+"</p>"); %>
</body>
<script>
font_name=["Georgia","Comic Sans MS","Arial Black","Barrio"]
document.getElementById("captcha").value=captcha;
document.getElementById("captcha").style.textAlign="center";
document.getElementById("captcha").style.letterSpacing = "15px"
document.getElementById("captcha").style.textSize="200px";
document.getElementById("captcha").style.textDecorationLine = "line-through";
/* document.getElementById("captcha").style.backgroundImage="Url('captcha_background.png')"; */
document.getElementById("captcha").style.fontFamily=font_name[Math.floor(Math.random()*font_name.length)];
</script>
</html>
 --%>