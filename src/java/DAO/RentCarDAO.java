/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import bean.Rent;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author pharveish
 */
public class RentCarDAO {
    public String authorizeRentCar(Rent rent)
    {
        double duration= rent.getDuration();
        double totalprice=rent.getTotalPrice();
        String rentDate = rent.getRentDate();
        String rentTime = rent.getRentTime();
        int fk_carNo = rent.getFk_carNo();
        int fk_userID = rent.getFk_userID();
       
     
        
        String url = "jdbc:mysql://localhost:3306/CRS_project";
        String uname="root";
        String pass = "void";
        
        
        
        try
        {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,uname,pass);
            
            PreparedStatement pstmt = null;
            
            pstmt=con.prepareStatement("insert into rent(duration, totalPrice, fk_carNo, fk_userID, rentDate, rentTime) values(?,?,?,?,?,?)");
            pstmt.setDouble(1, duration);
            pstmt.setDouble(2, totalprice);
            pstmt.setInt(3, fk_carNo);
            pstmt.setInt(4, fk_userID);
            pstmt.setString(5, rentDate);
            pstmt.setString(6, rentTime);
            
            PreparedStatement pstmt2 = null;
            pstmt2=con.prepareStatement("update car set rentStatus=true where carNo=?");
            pstmt2.setInt(1, fk_carNo);
            
            
            
            pstmt.executeUpdate();
            pstmt2.executeUpdate();
            
            pstmt.close();
            pstmt2.close();
            
            PreparedStatement pstmt3 = null;
            pstmt3=con.prepareStatement("update rent set currentlyRented=true order by rentID desc limit 1;");
      
            
            
            
            pstmt3.executeUpdate();
          
            pstmt3.close();
            
            con.close();
            return "SUCCESS RENT CAR";
            
            
        }
        catch(Exception e)
                {
                    e.printStackTrace();
                }
        
        
        return "FAIL RENT CAR";
    }
}
