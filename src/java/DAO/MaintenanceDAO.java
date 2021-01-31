/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;


import bean.Maintenance;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author pharveish
 */
public class MaintenanceDAO {
    public String maintainCar(Maintenance m)
    {
        String issue= m.getIssue();
        String dateSent = m.getDateSent();
        String timeSent = m.getTimeSent();
        int fk_carNo = m.getFk_carNo();
   
       
     
        
        String url = "jdbc:mysql://localhost:3306/CRS_project";
        String uname="root";
        String pass = "";
        
        
        
        try
        {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,uname,pass);
            
            
      
            
            PreparedStatement pstmt2 = null;
            pstmt2=con.prepareStatement("update car set maintenance=true where carNo=?");
            pstmt2.setInt(1, fk_carNo);
            
            
            
            
            
            pstmt2.executeUpdate();
            
         
            pstmt2.close();
            
            PreparedStatement pstmt3 = null;
            pstmt3=con.prepareStatement("insert into maintenance(issue, timeSent, dateSent, fk_carNo) values (?,?,?,?);");
            pstmt3.setString(1, issue);
            pstmt3.setString(2, timeSent);
            pstmt3.setString(3, dateSent);
            pstmt3.setInt(4, fk_carNo);
            pstmt3.executeUpdate();
            pstmt3.close();
            
            con.close();
            return "maintenanceSuccess";
            
            
        }
        catch(Exception e)
                {
                 
                    e.printStackTrace();
                     return "maintenanceFail";
                }
        
        
       
    }
}
