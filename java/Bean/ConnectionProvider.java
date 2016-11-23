/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

import java.sql.*;
import static Bean.Provider.*;  
  


public class ConnectionProvider {
   private static Connection conn=null;  
    static
    {  
        try
        {  
            Class.forName(DRIVER);  
            conn=DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);  
        }
        catch(Exception e){}  
    }  

    public static Connection getCon(){  
        return conn;  
    }   
}
