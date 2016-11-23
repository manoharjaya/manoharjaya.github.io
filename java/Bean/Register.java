/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

import java.sql.*;

/**
 *
 * @author Manohar
 */
public class Register {
    
    public static boolean Select(LoginBean lb)
    {  
    boolean status=false;  
    ResultSet rs;
    String email = null;
    String password = null;
        try
        {  
                        Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/webapp","root","root");
			Statement stat=conn.createStatement();
			rs=stat.executeQuery("select lm_email,lm_pass from loginmaster");
			while (rs.next()) 
                        {
                                email=rs.getString(1);
                                password=rs.getString(2);
                                String decryptEmail=com.ConverttoCrypt.decrypt(email);
                                String decryptpassword=com.ConverttoCrypt.decrypt(password);

				if(decryptEmail.equals(lb.getEmail())&&decryptpassword.equals(lb.getPassword()))
                                {
                                   conn.close();
                                   return true;
                                }
			}
			conn.close();
                    
//                String decryptEmail=com.ConverttoCrypt.decrypt(email);
//                String decryptpassword=com.ConverttoCrypt.decrypt(password);

               
           }
            catch(Exception e){}  
            
    return status;  
    }
    
    
    
    public static boolean checkmail(LoginBean lb)
    {  
    boolean status=false;  
    ResultSet rs;
    String email = null;
   
        try
        {  
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/webapp","root","root");
                Statement stat=conn.createStatement();
                rs=stat.executeQuery("select lm_email from loginmaster");
		
                while (rs.next()) 
                {
                        email=rs.getString(1);
                        
                        String decryptEmail=com.ConverttoCrypt.decrypt(email);
                        
                        if(decryptEmail.equals(lb.getEmail()))
                        {
                           conn.close();
                           return true;
                        }
                }
                conn.close();
           }
            catch(Exception e){}  

    return status;  
    }

    
    
    public static boolean Updatepassword(LoginBean lb)
    {  
    boolean status=false;  
    String email = null;
   
        try
        {  
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/webapp","root","root");
                Statement st=null;
                st=conn.createStatement();
                st.executeUpdate("update loginmaster set lm_pass='"+lb.getPassword()+"',lm_conpass='"+lb.getConfirm_password()+"' where lm_email='"+lb.getEmail()+"'");
                conn.close();
                return true;
        }
        catch(Exception e){}  

    return status;  
    }
    
    
}
