/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import bean.Car;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author pharveish
 */
public class EditCarDAO {
     public String editCar(Car car)
    {
        int carNo= car.getCarNo();
        String model= car.getModel();
        String type=car.getType();
        String filename=car.getFile();
        String path=car.getPath();
    
       
     
        
        String url = "jdbc:mysql://localhost:3306/CRS_project";
        String uname="root";
        String pass = "";
        
        
        
        try
        {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,uname,pass);
            
            PreparedStatement pstmt = null;
            
            pstmt=con.prepareStatement("update car set model=?, type=?, filename=?, path=? where carNo=?");
            pstmt.setString(1, model);
            pstmt.setString(2, type);
            pstmt.setString(3, filename);
            pstmt.setString(4, path);
            pstmt.setInt(5, carNo);
            
            
            pstmt.executeUpdate();
            
            pstmt.close();
            
            con.close();
            
            return "SUCCESS EDIT CAR";
            
            
        }
        catch(Exception e)
                {
                    e.printStackTrace();
                }
        
        
        return "FAIL EDIT CAR";
    }
}
