<%-- 
    Document   : OTPlast
    Created on : Jun 16, 2016, 11:32:46 AM
    Author     : Manohar
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.ConverttoCrypt"%>
<%@page import="Bean.LoginBean"%>
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
           
           
            String email=(String)session.getAttribute("email");
            
            String pass=request.getParameter("txtforgotpass");
            String conpass=request.getParameter("txtforgotconpass");
            
             LoginBean bean=new LoginBean();
             
             bean.setEmail(email);
             bean.setPassword(pass);
             bean.setConfirm_password(conpass);
             
           out.print(bean.getEmail()+"\t\n"+bean.getPassword()+"\t\t"+bean.getConfirm_password());
           try
            {
                    String EncryptEmail=ConverttoCrypt.encrypt(bean.getEmail());
                    String Encryptpassword=ConverttoCrypt.encrypt(bean.getPassword());
                    String Encryptconpassword=ConverttoCrypt.encrypt(bean.getConfirm_password());
                    
                    Connection conn = null;
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/webapp","root","root"); 
                    Statement st=null;
                    st=conn.createStatement();
                    int status = st.executeUpdate("update loginmaster set lm_pass='"+Encryptpassword+"',lm_conpass='"+Encryptconpassword+"' where lm_email='"+EncryptEmail+"'");
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
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
            
            %>
        <h1>Hello World!</h1>
    </body>
</html>
