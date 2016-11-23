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

	<script src="js/core_date_file.js"></script>  
  	<script src="js/date.js"></script>


</head>

<body style="background:#18053C">
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
        
        
        session.setAttribute("fname",fname); 
  		session.setAttribute("lname",lname);
        session.setAttribute("date",date);
        session.setAttribute("country",country);
        session.setAttribute("add1",add1);
        session.setAttribute("add2",add2);
        session.setAttribute("town",town);
        session.setAttribute("state",state);
        session.setAttribute("pincode",pincode);
        session.setAttribute("mobno",mobno);
       
        
%>
		<header>netPay</header>
		<div class="col-lg-6" style="margin-top:2%">
			<img src="img/signup3_1.png" alt="mobile pay" class="img-responsive">
		</div>
		<div class="col-lg-6" style="color:white">
			<div class="form-group" style="margin-top:25%">
				<div class="col-lg-12">
							
					<div class="col-lg-offget-2 col-lg-8" style="margin-top:8%;margin-bottom: 8%">
					<form name="Form1" action="Create.jsp" method="post">
						<input type="text" autofocus name="txtcreditno" required minlength="12" maxlength="12" class="form-control signuptextborder" placeholder="Credit or Debit card number"><br>
						<p style="font-family:Segoe UI;font-weight:Normal;font-size:11pt">
							Visa,Master Card,American Express or Discover card number,For Debit card haven't been activated for overseas use,please contact your bank to find out how.
						</p>
                                                <input type="text" name="txtexpiry" autofocus required class="form-control signuptextborder" placeholder="Expiry date" style="width:49%" id="example1">
                                        <script type="text/javascript">
							            // When the document is ready
							            $(document).ready(function () {
							                
							                $('#example1').datepicker({
							                    format: "dd/mm/yyyy"
							                });  
							            
							            });
							        </script>

						<input type="text" name="txtcvv" maxlength="5" minlength="3" required class="form-control signuptextborder" placeholder="CVV" style="width: 49%;margin-left: 51%;margin-top:-34px"><br>

						<input type="text" name="txteditaddress" maxlength="50" required minlength="5" class="form-control signuptextborder" placeholder="Address"><br>
						<button type="submit" name="btnlink" class="btn btn-default" style="width: 100%;background-color:#E91E63;border-color:#E91E63;border-radius:0px;color:white">Link your card</button>
						</form>
					</div>
				</div>
			</div>	
		</div>

		<div class="col-lg-12 finalfooter" style="background:black;padding:50px 50px 50px 50px;border-top: 1px solid">
	 		<div>
		 		<p style="color:#928F8F;float:left">Copyright©</p>
		 		<p class="footerfont" style="color:white">netPay.com</p>
		 	</div>	
		</div>

		
</body>
</html>