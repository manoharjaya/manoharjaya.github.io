<%@page import="Bean.LoginBean"%>
<!DOCTYPE html>
<html>
<head>
	<title>netPay</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon"  href="img/lock.png" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/mobile.css">
	<link rel="stylesheet" type="text/css" href="css/tablet.css">
	<link rel="stylesheet" type="text/css" href="css/laptop.css">
	<link rel="stylesheet" href="css/date.css">


	<script src="js/country.js"></script>
	<script src="js/core_date_file.js"></script>  
  	<script src="js/date.js"></script>

</head>
<%
        String email=request.getParameter("txtsignupemail");  
		String pass=request.getParameter("txtsignuppassword"); 
        String conpass=request.getParameter("txtsignupcon_password"); 
        session.setAttribute("email",email); 
  		session.setAttribute("pass",pass);
        session.setAttribute("conpass",conpass);       
%>
<body style="background:#18053C">	
			<header>netPay</header>						
			<div class=" col-lg-12">
						<div class="form-group">
							<div class="col-lg-7" style="color:white">
								<h2 class="center">Tell us about yourself</h2><br>
								<div class="col-lg-offset-3 col-lg-6 telllgimg">
									<img src="img/signup2_1.png" alt="mobile pay" class="img-responsive">
								</div>
							</div>
						</div>

						<div class="col-lg-5 col-lg-offset-7 center signuptxt" style="margin-top:-32%;color:white">
							<div class="form-group signuphead" style="margin-left:-4%">
								<h3>Sign Up for free</h3>
								<p style="padding-left:5%;padding-right:5%">Shop Overseas Payment without Sharing your financial Information</p>
							</div>
							<script>
				           
          					</script>
							<div class="form-group">
							<form name="Form1" action="signup_3.jsp" method="post">
								
								<div class="col-lg-9" style="margin-top:5%;margin-left:12%">
									<input type="text" autofocus maxlength="20" name="txtfirstname" required class="form-control signuptextborder" size="20" placeholder="Firstname" style="width:49%"><br>	
									<input type="text" name="txtlastname" maxlength="20" required class="form-control signuptextborder" size="20" placeholder="Lastname" style="width:49%;margin-left: 51%;margin-top: -54px"><br>

									 <input  type="text" name="txtdate" required maxlength="10" class="form-control signuptextborder" placeholder="Date Of Birth"  id="example1">


							        <script type="text/javascript">
							            // When the document is ready
							            $(document).ready(function () {
							                
							                $('#example1').datepicker({
							                    format: "dd/mm/yyyy"
							                });  
							            
							            });
							        </script>
							        <br>
									
									<select class="form-control signuptextborder" required  id="txtcountry" name="txtcountry" placeholder="Country"></select>
									<br>
							        <script language="javascript">
							            populateCountries("txtcountry", "txtstate");
							        </script>

									<div >		
											<input type="text" name="txtaddress1" maxlength="50" minlength="5" required class="form-control signuptextborder" placeholder="Address line 1"><br>
											<input type="text" name="txtaddress2" minlength="5" required maxlength="50" class="form-control signuptextborder" placeholder="Address line 2 (optional)"><br>
											<h5 style="font-family:Segoe UI;font-weight:Normal;font-size:12pt">Please Enter Your Full Residential Address</h5><br>
											<input type="text" name="txttown" maxlength="20" minlength="5" required class="form-control signuptextborder" placeholder="Town/City"><br>
											

											<select class="form-control signuptextborder dropdown-toggle" name="txtstate" required id="txtstate" minlength="5" maxlength="50"></select>
							        		<br/>


											<input type="text" maxlength="10" minlength="5" name="txtpincode" required class="form-control signuptextborder" placeholder="PINCODE"><br>
											<input type="text" maxlength="12" minlength="10" name="txtmobileno" required class="form-control signuptextborder" placeholder="Mobile number"><br>
									</div>
								<button type="submit" name="btncontinue"  class="btn btn-default" style="width: 100%;border-radius:0px;color:white;background-color: #E91E63;border-color:#E91E63">Continue</button>
								</div>
								</form>

							</div>
						</div>
		</div>

		<div class="col-lg-12 footermargin" style="background:black;padding:50px 50px 50px 50px;border-top: 1px solid">
	 		<div>
		 		<p style="color:#928F8F;float:left">Copyright©</p>
		 		<p class="footerfont" style="color:white">netPay.com</p>

		 	</div>	
 		</div>

 		<%
 			String fname=request.getParameter("txtfirstname");  
        	String lname=request.getParameter("txtlastname");  
        	String date=request.getParameter("txtdate"); 
        	String country=request.getParameter("txtcountry");
        	String add1=request.getParameter("txtaddress1");
        	String add2=request.getParameter("txtaddress2");
        	String town=request.getParameter("txttown");
        	String state=request.getParameter("txtstate");
        	String pincode=request.getParameter("txtpincode");
        	String mobno=request.getParameter("txtmobileno");
        	
                
               
        	session.setAttribute("fname", fname);
	        session.setAttribute("lname", lname);
	        session.setAttribute("date", date);
        	session.setAttribute("country", country);
        	session.setAttribute("add1", add1);
        	session.setAttribute("add2", add2);
        	session.setAttribute("town", town);
        	session.setAttribute("state", state);
        	session.setAttribute("pincode", pincode);
        	session.setAttribute("mobno", mobno);
        		
 		%>
</body>
</html>