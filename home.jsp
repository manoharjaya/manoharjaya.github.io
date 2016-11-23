<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
    <title>netPay</title>
    <link rel="shortcut icon"  href="img/lock.png" />
    <link href="css/style.css" rel="stylesheet">
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/mobile.css">
    <link rel="stylesheet" type="text/css" href="css/tablet.css">
    <link rel="stylesheet" type="text/css" href="css/laptop.css">
    <link href="css/carousel.css" rel="stylesheet">

    <script type="text/javascript" src="js/modal.js"></script>
    <script src="js/collapse.js"></script>
    <script src="js/anchor.js"></script>
    <script src="js/bootstrap.js"></script>
    
    <style>
        a
        {
             color: #828282;
        }
    </style>

  </head>

  <body style="background:url(img/bg-content.jpg)">

    <!-- Static navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top"  >
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar" style="border-radius:0px">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
            <a class="navbar-brand" style="font-size:22pt;color:white">netPay</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#Home">Home</a></li>
            <li><a href="#Service">Service</a></li>
            <li><a href="#About">About</a></li>
             <li><a href="Contact.html" onclick="OnButton3();">Contact</a></li>
            
          </ul>
          
          <script>
            function OnButton1() {
            document.Form1.action = "signup.jsp"
            document.Form1.submit();             // Submit the page
            }
            function OnButton3()
            {
            document.Form1.action = "Contact.html"
            document.Form1.submit();             // Submit the page
            }
          </script>
          <form name="Form1" method="post">
          <ul class="nav navbar-nav navbar-right" style="margin-top:13px">
           <a href="signup.jsp" style="text-decoration:none;margin-left:13px" style="color:black" onclick="OnButton1();"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;Sign up</a></form>
          <button type="button" id="myBtn"  class="btn btn-info btn-md" style="text-decoration:none;margin-left:13px;background: transparent"><span class="glyphicon glyphicon-log-in" ></span>&nbsp;&nbsp;Login</button>
          </ul>

        </div><!--/.nav-collapse -->
      </div>
    </nav>


  <div class="container">
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content" style="background:url(img/login.jpg)">
        <div class="modal-header" style="padding:35px 50px;background:#0E1331">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form" action="Login" method="POST">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input  type="email" maxlength="25" minlength="7" autofocus required class="form-control login" id="usrname" name="txtlogusername" placeholder="Enter email" style="border:none;border-bottom:2px solid;border-color:#FF0258;border-radius:0px">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="password"  maxlength="25" minlength="8"  required class="form-control login" id="psw" name="txtlogpassword" placeholder="Enter password" style="border:none;border-bottom:2px solid;border-color:#FF0258;border-radius:0px">
            </div>
              <br>
              <button type="submit" class="btn btn-success btn-block" style="background:#FF0057;border:#FF0057;border-radius:0px"><span class="glyphicon glyphicon-off"></span> Login</button>
          </form>
        </div>
        <div class="modal-footer" style="background:#0E1331">
            <form name="Form2" method="POST">
                <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal" style="background:#5E981A;border:#5E981A;border-radius:0px"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                 <p style="color:#FFEB3B">Forgot <a href="#" style="text-decoration:none" onclick="OnButton2();">Password?</a></p>

            </form>
            <script>
                
                function OnButton2() {
            document.Form2.action = "OTP1.html"
            document.Form2.submit();    // Submit the page
            }
            </script>
        </div>
      </div>
      
    </div>
  </div> 
</div>
 
<script>
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal();
    });
});
</script>




      <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel" style="margin-top:85px;width:85%;margin-left:7%">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
     </ol>
      <div class="carousel-inner" id="Home"  role="listbox">
        <div class="item active">
          <img class="first-slide" src="img/test.png" alt="First slide">
        </div>

        <div class="item">
          <img class="second-slide" src="img/test1.png" alt="Second slide">
        </div>
       </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->



    

      <div class="col-lg-12" style="margin-top:-2%;margin-bottom:4%">

    <div style="margin-left:22%" class="mar">
    <div class="divh2">
        <h2 class="welcome wel" style="float:left;margin-top:1%">Welcome</h2>
    </div>
      
      <h3 class="pos" style="margin-top:2%;color:white;border-left:1px solid;border-color:#61615E;padding-left:17px;padding-top:8px"><a href="#About" style="color:#E91E63;text-decoration:none"> Click here </a>for more info and this application is created by me. This is a Bootstrap Application that<br> goes with several layout options (for desktop, tablet, smartphone landscape and portrait) to fit<br> all popular screen resolutions.</h3>

    </div>
    
  </div>

  

  <div class="col-lg-12 linklg" style=" padding-left: 0%;padding-right: 0%;background:#A3AF29;color:white;padding-bottom: 5%">
    <div class="col-lg-6" style="margin-top: 5%">
      <div>
        <h2>Link your Card</h2>
        <div class="para">
             <h3>  Sign up for your free netPay personal account using your email and password.<br><br>
             Link your credit and debit cards to your netPay account.<br>You'll only need to do this once.</h3>
        </div>
       
      </div> 

    </div>
    <div class="col-lg-4 col-lg-offset-1 linklgimg" style="margin-top: 5%">
      <img src="img/credit2.png" alt="Responsive Image" class="img-responsive">
    </div>
  </div>

  <div class="col-lg-12 servicelg" id="Service" style=" padding-left: 0%;padding-right: 0%;background:#D40C50;color:white">
    <div class="col-lg-6 col-lg-offset-6" style="margin-top: 3%;padding-bottom: 3%">
      <div>
        <h2>Buyer protection</h2>
        <h3>
          The netPay Buyer Protection Policy states that the customer may file a buyer complaint if he or she did not receive an item<br><br>
        </h3>
        <h2>Two Factor Authentication</h2>
        <h3>
          It is also possible to use a mobile phone to receive an mTAN (Mobile Transaction Authentication Number) via SMS.<br> Use of a security code that is sent to the account holder's mobile phone is currently free.
        </h3>
      </div> 

    </div>
      <div class="col-lg-4 " style="margin-top:-22%">
        <img src="img/buyerprotection.png" alt="Responsive Image" class="img-responsive buyerimg">
      </div>
  </div>

  <div class="col-lg-12 saferlg" style=" padding-left: 0%;padding-right: 0%;background:#510544;color:white;padding-bottom: 5%" >
    <div class="col-lg-6" style="margin-top: 5%">
      <div>
        <h2>The safer way to pay.</h2>
        <h3>We don't share your financial details with sellers, so you can shop with confidence. Plus, every transaction is guarded behind our advanced encryption.<br><br>
         The user (or malicious third party) can alternatively authenticate by providing the credit card or bank account number listed on his or her account.</h3>

      </div> 
    </div>
    <div class="col-lg-3 col-lg-offset-1 saferlgimg" style="margin-top: 2%">
      <img src="img/pro2.png" alt="Responsive Image" class="img-responsive">
    </div>
  </div>

  <div class="col-lg-12 epaylg" style=" padding-left: 0%;padding-right: 0%;background:#FF9800;color:white">
    <div class="col-lg-6 col-lg-offset-6" style="margin-top:6%;padding-bottom: 3%">
      <div>
        <h2>netPay simplify your shopping</h2>
        <h3>
          The netPay Buyer Protection Policy states that the customer may file a buyer complaint if he or she did not receive an item<br><br>
        </h3>
      </div> 

    </div>
      <div class="col-lg-4 epaylgimg" style="margin-top:-17%;padding-bottom: 25px">
        <img src="img/7.png" alt="Responsive Image" class="img-responsive">
      </div>
  </div>

  <div class="col-lg-12 " id="About">
    <div class="col-lg-offset-1 col-lg-3 epaylgabout" style="margin-top:2%;margin-left: 15%">
      <h2 style="color:aliceblue;font-family:'Segoe UI';font-weight: lighter">Shortly About me</h2>
      <img src="img/small200.jpg" class="img-responsive myprofile" style="margin-top:6%;margin-bottom:25%;padding-left:4%">
    </div>
    <div class="col-lg-5 shortlgborder" style="margin-top:2%;border-left:2px solid;padding-left:3%">
      <h2 style="color:aliceblue;font-family:'Segoe UI';font-weight:lighter;">Experience</h2>
      <p style="color:#E50C84;font-family:'Segoe UI';font-weight:lighter;padding-bottom:7px">Software Developer</p>

       <p style="color:#928F8F;font-family:'Segoe UI';font-weight:lighter"> I'm Working as a Free Lancer in private ERP company.<br><br>I have held a number of Online Certification Course and Intenships.<br><br>I'm comfortable with structured code, databases and OO programming.<br><br>I am quite experienced with Windows Application and Web Application.</p>
     
    </div>

    
  </div>

  <div class="col-lg-12 footlg"  style="background:black;padding:50px 50px 50px 50px;border-top: 1px solid">
    <div class="mar">
      <p style="color:#928F8F;float:left;padding-top:4px">Copyright</p>
      <p class="footerfont" style="color:white">netPay.com</p>
      <p>All Rights Reserved.<br>Developed by manohar- Software Developer</p>
    </div>  

  </div>
  </body>
</html>