/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

/**
 *
 * @author Manohar
 */
public class LoginBean {
    private String email;
    private String password;
    private String confirm_password;
    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }
    
     public String getConfirm_password() {
        return confirm_password;
    }

    /**
     * @param confirm_password the confirm_password to set
     */
    public void setConfirm_password(String confirm_password) {
        this.confirm_password = confirm_password;
    }
    
    public boolean validate()
    {  
        if(Register.Select(this))
        {
            return true;
        }
        else
        {
            return false;
        }
    }  
    
    public boolean validatemail()
    {  
        if(Register.checkmail(this))
        {
            return true;
        }
        else
        {
            return false;
        }
    }  

     
    public boolean validatepassword()
    {  
        if(Register.Updatepassword(this))
        {
            return true;
        }
        else
        {
            return false;
        }
    }  

}
