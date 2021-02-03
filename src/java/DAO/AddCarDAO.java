/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import java.sql.*;
import bean.Car;

/**
 *
 * @author pharveish
 */
public class AddCarDAO {
     public String authorizeAddCar(Car car)
    {
        String model= car.getModel();
        String type=car.getType();
        String dateReceived = car.getDateReceived();
        String filename=car.getFile();
        String path=car.getPath();
     
        
        String url = "jdbc:mysql://localhost:3306/CRS_project";
        String uname="root";
        String pass = "void";
        
        
        
        try
        {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,uname,pass);
            
            PreparedStatement pstmt = null;
            
            pstmt=con.prepareStatement("insert into car(model, type, dateReceived, filename, path) values(?,?,?,?,?)");
            pstmt.setString(1, model);
            pstmt.setString(2, type);
            pstmt.setString(3, dateReceived);
            pstmt.setString(4, filename);
            pstmt.setString(5, path);
            
            pstmt.executeUpdate();
            
            pstmt.close();
            
            con.close();
            return "SUCCESS ADD CAR";
            
            
        }
        catch(Exception e)
                {
                    e.printStackTrace();
                }
        
        
        return "FAIL ADD CAR";
    }
}
