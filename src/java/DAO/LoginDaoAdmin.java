/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import java.sql.*;
import bean.LoginBeanAdmin;

/**
 *
 * @author user
 */
public class LoginDaoAdmin {
    public String authorizeLogin(LoginBeanAdmin loginBean)// authorize func
    {
        //get username & password from logibBeanObject
        String username = loginBean.getUsername(); 
        String password = loginBean.getPassword();
        
        
        String dbusername= "";
        String dbpassword="";
        String uname="root";
        String pass = "";
        
        String url = "jdbc:mysql://localhost:3306/CRS_project";
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,uname,pass);
            PreparedStatement pstmt = null;
            
            pstmt = con.prepareStatement("select * from useradmin where username=? and password=?");
            pstmt.setString(1,username);
            pstmt.setString(2,password);
            ResultSet rs = pstmt.executeQuery();
            
            while(rs.next())
            {
                dbusername=rs.getString("username");
                dbpassword=rs.getString("password");
                
                if(username.equals(dbusername)&&password.equals(dbpassword))
                {
                    return "SUCCESS LOGIN";
                }
            }
            
            pstmt.close();
            con.close();
            
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return "Wrong username or password";
    }
}
