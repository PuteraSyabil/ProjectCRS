/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import bean.Car;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author pharveish
 */
public class RentedCarDAO {
       public ArrayList<Car> getCarList() throws SQLException {
        try {
            ArrayList<Car> rentedCarlist = new ArrayList<Car>();
            String driver = "com.mysql.jdbc.Driver";
            String dbName = "CRS_project";
            String url = "jdbc:mysql://localhost/"+dbName+"?";
            String userName = "root";
            String password = "root";
            String query = "select * from car where rentStatus=true;";
            
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, userName, password);
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(query);
            while(rs.next()){
                Car car = new Car();
                car.setCarNo(rs.getInt(1));
                car.setModel(rs.getString(2));
                car.setType(rs.getString(3));
                car.setDateReceived(rs.getString(4));
                car.setRentStatus(rs.getBoolean(5));
                rentedCarlist.add(car);
            }
            return rentedCarlist;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CarListDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
}
