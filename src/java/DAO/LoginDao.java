/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import bean.LoginBean;
import java.sql.*;

/**
 *
 * @author user
 */
public class LoginDao {
    public String authorizeLogin(LoginBean loginBean)// authorize func
    {
        //get username & password from logibBeanObject
        String email = loginBean.getEmail(); 
        String password = loginBean.getPassword();
        
        
        String dbemail= "";
        String dbpassword="";
        int dbid;
        String uname="root";
        String pass = "void";
        
        String url = "jdbc:mysql://localhost:3306/CRS_project";
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,uname,pass);
            PreparedStatement pstmt = null;
            
            pstmt = con.prepareStatement("select * from user where email=? and password=?");
            pstmt.setString(1,email);
            pstmt.setString(2,password);
            ResultSet rs = pstmt.executeQuery();
            
            while(rs.next())
            {
                loginBean.setID(rs.getInt(1));
                dbemail=rs.getString("email");
                dbpassword=rs.getString("password");
                
                if(email.equals(dbemail)&&password.equals(dbpassword))
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
