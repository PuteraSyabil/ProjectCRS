/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import bean.Car;
import bean.RegisterBean;
import bean.Rent;
import bean.RentedBean;
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
       public ArrayList<RentedBean> rentedCarList() throws SQLException {
        try {
            ArrayList<RentedBean> rentlist = new ArrayList<RentedBean>();
            String driver = "com.mysql.jdbc.Driver";
            String dbName = "CRS_project";
            String url = "jdbc:mysql://localhost/"+dbName+"?";
            String userName = "root";

            String password = "void";
            String query = "select rent.rentID, rent.duration, rent.totalPrice, rent.rentDate, rent.rentTime, car.model, car.type, car.carNo, user.firstname, user.lastname, user.ic from rent join car on rent.fk_carNo=car.carNo join user on rent.fk_userID=user.id;";

            
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, userName, password);
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(query);
            while(rs.next()){
                RentedBean rentdetail = new RentedBean();
                rentdetail.setRentID(rs.getInt(1));
                rentdetail.setDuration(rs.getDouble(2));
                rentdetail.setTotalPrice(rs.getDouble(3));
                rentdetail.setRentDate(rs.getString(4));
                rentdetail.setRentTime(rs.getString(5));
                rentdetail.setModel(rs.getString(6));
                rentdetail.setType(rs.getString(7));
                rentdetail.setCarNo(rs.getInt(8));
                rentdetail.setFirstname(rs.getString(9));
                rentdetail.setLastname(rs.getString(10));
                rentdetail.setIc(rs.getString(11));
                rentlist.add(rentdetail);
            }
            return rentlist;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CarListDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
}
