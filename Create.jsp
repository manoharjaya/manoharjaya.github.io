<%-- 
    Document   : Create
    Created on : Jun 10, 2016, 8:00:14 AM
    Author     : Manohar
--%>
<%@page import="Bean.ConnectionProvider"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="shortcut icon"  href="img/lock.png" />
    </head>
    <body>   
    <%
    
    Connection conn = null;
   
    conn=ConnectionProvider.getCon();  
    Statement statement = conn.createStatement();

    String Email = (String)session.getAttribute("email");
    String password = (String)session.getAttribute("pass");
    String conpassword = (String)session.getAttribute("conpass");
    String Fname = (String)session.getAttribute("fname");
    String Lname = (String)session.getAttribute("lname");
    
    String date = (String)session.getAttribute("date");
    String Country = (String)session.getAttribute("country");
    String Add1 = (String)session.getAttribute("add1");
    String Add2 = (String)session.getAttribute("add2");
    String Town = (String)session.getAttribute("town");
    String State = (String)session.getAttribute("state");
    String Pincode = (String)session.getAttribute("pincode");
    String Mobno = (String)session.getAttribute("mobno");

    String Creditno=request.getParameter("txtcreditno");
    String Expiry=request.getParameter("txtexpiry");
    String Cvv=request.getParameter("txtcvv");
    String Add3=request.getParameter("txteditaddress");
        
   
     String EncryptEmail=com.ConverttoCrypt.encrypt(Email);
     String Encryptpassword=com.ConverttoCrypt.encrypt(password);
     String Encryptconpassword=com.ConverttoCrypt.encrypt(conpassword);
     String EncryptFname=com.ConverttoCrypt.encrypt(Fname);
     String EncryptLname=com.ConverttoCrypt.encrypt(Lname);
     String Encryptdate=com.ConverttoCrypt.encrypt(date);
     String EncryptCountry=com.ConverttoCrypt.encrypt(Country);
     String EncryptAdd1=com.ConverttoCrypt.encrypt(Add1);
     String EncryptAdd2=com.ConverttoCrypt.encrypt(Add2);
     String EncryptTown=com.ConverttoCrypt.encrypt(Town);
     String EncryptState=com.ConverttoCrypt.encrypt(State);
     String EncryptPincode=com.ConverttoCrypt.encrypt(Pincode);
     String EncryptMobno=com.ConverttoCrypt.encrypt(Mobno);
     String EncryptCreditno=com.ConverttoCrypt.encrypt(Creditno);
     String EncryptExpiry=com.ConverttoCrypt.encrypt(Expiry);
     String EncryptCvv=com.ConverttoCrypt.encrypt(Cvv);
     String EncryptAdd3=com.ConverttoCrypt.encrypt(Add3);
     
    
     String query ="INSERT INTO loginmaster(lm_email,lm_pass,lm_conpass,lm_fname,lm_lname,lm_country,lm_date,lm_add1,lm_add2,lm_town,lm_state,lm_pincode,lm_mobile,lm_expiry,lm_cvv,lm_add3,lm_creditno) VALUES ('"+EncryptEmail+"','" + Encryptpassword + "','"+Encryptconpassword+"','"+EncryptFname+"','"+EncryptLname+"','"+EncryptCountry+"','"+Encryptdate+"','"+EncryptAdd1+"','"+EncryptAdd2+"','"+EncryptTown+"','"+EncryptState+"','"+EncryptPincode+"','"+EncryptMobno+"','"+EncryptExpiry+"','"+EncryptCvv+"','"+EncryptAdd3+"','"+EncryptCreditno+"')";
     int status=statement.executeUpdate(query);
     
     if(status>0)
     {
         RequestDispatcher rd=request.getRequestDispatcher("ThankU.html");
         rd.include(request, response);
     }
     else
    {
        RequestDispatcher rd=request.getRequestDispatcher("404page.html");
        rd.forward(request, response);
    }
%>
    </body>
</html>
