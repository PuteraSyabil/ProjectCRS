/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import bean.Car;
import bean.Rent;
import bean.LoginBean;
import bean.RentedBean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;


/**
 *
 * @author Taufiiq Azman
 */
public class CurrentRentedDAO {
     public ArrayList<RentedBean> getCarList(int LoginID) throws SQLException {
        
        ArrayList<RentedBean> carlist = new ArrayList<RentedBean>();
        String uname="root";
        String pass = "void";
        String url = "jdbc:mysql://localhost:3306/CRS_project";
    
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,uname,pass);
            PreparedStatement pstmt = null;
            
            pstmt = con.prepareStatement("select car.carNo, car.model, car.filename, rent.rentDate, rent.rentTime, rent.duration from rent join car on rent.fk_carNo=car.carNo where car.rentStatus=true and rent.fk_userID=?");
            
            pstmt.setInt(1,LoginID);
            ResultSet rs = pstmt.executeQuery();
            
            while(rs.next()){
                RentedBean rent= new RentedBean();
                rent.setCarNo(rs.getInt(1));
                rent.setModel(rs.getString(2));
                rent.setFilename(rs.getString(3));
                rent.setRentDate(rs.getString(4));
                rent.setRentTime(rs.getString(5));
                rent.setDuration(rs.getDouble(6));
                carlist.add(rent);
            }
            pstmt.close();
            con.close();
            return carlist;
            
            }
                  
                catch (ClassNotFoundException ex) 
                {
                Logger.getLogger(CarListDAO.class.getName()).log(Level.SEVERE, null, ex);
                return null;
                }
            
           
            
            
        }
        
       
            
            
//            String query = "select * from rent where fk_userID=?";
//            
//            Class.forName(driver);
//            Connection con = DriverManager.getConnection(url, userName, password);
//            Statement st = con.createStatement();
//            ResultSet rs = st.executeQuery(query);
//            
//            while(rs.next()){
//                Rent rent= new Rent();
//                rent.setRentID(rs.getInt(1));
//                rent.setDuration(rs.getDouble(2));
//                rent.setTotalPrice(rs.getDouble(3));
//                rent.setFk_carNo(rs.getInt(4));
//                rent.setRentDate(rs.getString(6));
//                rent.setRentTime(rs.getString(7));
//                carlist.add(rent);
//            }
//            return carlist;
//        } catch (ClassNotFoundException ex) {
//            Logger.getLogger(CarListDAO.class.getName()).log(Level.SEVERE, null, ex);
//            return null;
//        }
    }
    
        

