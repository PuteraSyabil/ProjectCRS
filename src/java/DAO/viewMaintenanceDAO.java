/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import bean.Maintenance;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author USER
 */
public class viewMaintenanceDAO {
    public ArrayList<Maintenance> getMaintenanceCar() throws ClassNotFoundException, SQLException{
        ArrayList<Maintenance> carlist = new ArrayList<Maintenance>();
            String driver = "com.mysql.jdbc.Driver";
            String dbName = "CRS_project";
            String url = "jdbc:mysql://localhost/"+dbName+"?";
            String userName = "root";
            String password = "void";
            String query = "SELECT maintenance.mid, maintenance.issue, maintenance.dateSent, maintenance.timeSent, maintenance.fk_carNo ,car.carNo, car.model, car.type "
                           + "FROM maintenance, car WHERE maintenance.fk_carNo = car.carNo;";
            
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, userName, password);
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(query);
            while(rs.next()){
                Maintenance car = new Maintenance();
                car.setMid(rs.getInt(1));
                car.setFk_carNo(rs.getInt(5));
                car.setTimeSent(rs.getString(4));
                car.setDateSent(rs.getString(3));
                car.setIssue(rs.getString(2));
                car.setModel(rs.getString(7));
                car.setType(rs.getString(8));
                carlist.add(car);
            }
            return carlist;
    
    
    }
}
