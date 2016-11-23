/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Bean.LoginBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Manohar
 */
public class OTP_First extends HttpServlet {

    
     String code;
     public static String random(int size)
     {

        StringBuilder generatedToken = new StringBuilder();
        try
        {
            SecureRandom number = SecureRandom.getInstance("SHA1PRNG");
            // Generate 20 integers 0..20
            for (int i = 0; i < size; i++)
            {
                generatedToken.append(number.nextInt(9));
            }
        }   
        catch (NoSuchAlgorithmException e)
        {
            e.printStackTrace();
        }

        return generatedToken.toString();
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          
            
            
       code=random(6);
        
       HttpSession sess=request.getSession();  
       sess.setAttribute("OTP", code);
             
       
      
  
        LoginBean bean=(LoginBean)request.getAttribute("bean");  
       
        String to=bean.getEmail();//change accordingly  
        sess.setAttribute("email", to);
        
        //Get the session object  
        Properties props = new Properties();  
        props.put("mail.smtp.host", "smtp.gmail.com");  
        props.put("mail.smtp.socketFactory.port", "465");  
        props.put("mail.smtp.socketFactory.class",  
                  "javax.net.ssl.SSLSocketFactory");  
        props.put("mail.smtp.auth", "true");  
        props.put("mail.smtp.port", "465");  
        
        
         Session session = Session.getDefaultInstance(props,  
         new javax.mail.Authenticator() {  
         protected PasswordAuthentication getPasswordAuthentication() {  
         return new PasswordAuthentication("netpay.org@gmail.com","!@12QWqw");//change accordingly  
         }  
        });  
        
        
         try 
         {  
         MimeMessage message = new MimeMessage(session);  
         message.setFrom(new InternetAddress("netpay.org@gmail.com"));//change accordingly  
         message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
         message.setSubject("Hello");  
         message.setText("Your One Time Password(OTP) is "+code);  
 
         //send message  
         Transport.send(message);  

        
         }catch(MessagingException e) {throw new RuntimeException(e);}    
         
         
         
        if(code!=null)
        {
            RequestDispatcher rd=request.getRequestDispatcher("OTP2.html");
            rd.forward(request, response);
        }
        else
        {
             RequestDispatcher rd=request.getRequestDispatcher("404page.html");
             rd.include(request, response);
        }
        
        
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
