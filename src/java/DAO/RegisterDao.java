
package DAO;
import bean.RegisterBean;
import java.sql.*;


public class RegisterDao {
    public String authorizeRegister(RegisterBean registerBean)
    {
        String firstname= registerBean.getFirstname();
        String lastname=registerBean.getLastname();
        String email = registerBean.getEmail();
        String password = registerBean.getPassword();
        String ic= registerBean.getIc();
        String pnum= registerBean.getPnum();
        
        String url = "jdbc:mysql://localhost:3306/CRS_project";
        String uname="root";
        String pass = "";
        
        
        
        try
        {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,uname,pass);
            
            PreparedStatement pstmt = null;
            
            pstmt=con.prepareStatement("insert into user(firstname, lastname, password, pnum, ic, email) values(?,?,?,?,?,?)");
            pstmt.setString(1, firstname);
            pstmt.setString(2, lastname);
            pstmt.setString(3, password);
            pstmt.setString(4, pnum);
            pstmt.setString(5, ic);
            pstmt.setString(6, email);
            
            pstmt.executeUpdate();
            
            pstmt.close();
            
            con.close();
            return "SUCCESS REGISTER";
            
            
        }
        catch(Exception e)
                {
                    e.printStackTrace();
                }
        
        
        return "FAIL REGISTER";
    }
    
}
