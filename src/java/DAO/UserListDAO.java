/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import bean.Car;
import bean.User;
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
public class UserListDAO {
    public ArrayList<User> getUserList() throws SQLException, ClassNotFoundException{
        
            ArrayList<User> userlist = new ArrayList<User>();
            String driver = "com.mysql.jdbc.Driver";
            String dbName = "CRS_project";
            String url = "jdbc:mysql://localhost/"+dbName+"?";
            String userName = "root";
            String password = "";
            String query = "select * from user";
            
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, userName, password);
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(query);
            while(rs.next()){
                User user = new User();
                user.setId(rs.getInt(1));
                user.setFirstname(rs.getString(2));
                user.setLastname(rs.getString(3));
                user.setPhonenum(rs.getString(5));
                user.setEmail(rs.getString(7));
                userlist.add(user);
        
        }

        return userlist;
    
    }
    
}
