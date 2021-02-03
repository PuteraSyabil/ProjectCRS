/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import DAO.RentedCarDAO;
import bean.RentedBean;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author pharveish
 */
@WebServlet(name = "JsonDataServlet", urlPatterns = {"/JsonDataServlet"})
public class JsonDataServlet extends HttpServlet {

  
    private static final long serialVersionUID = 1L;
    
    public JsonDataServlet(){
        super();
    }


  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List <RentedBean> rentData = getRentData();
     
        request.setAttribute("rentData", rentData);
        
        List <RentedBean> pie = getTypePrice();
     
        request.setAttribute("pie", pie);
         RequestDispatcher requestDispatcher = request.getRequestDispatcher("/analytics.jsp");
        requestDispatcher.forward(request, response);
    }
    
    private List<RentedBean> getRentData(){
        try {
            List<RentedBean> rentlist = new ArrayList<RentedBean>();
            RentedCarDAO rentDAO = new RentedCarDAO();
            rentlist = rentDAO.rentedCarList();
            
            return rentlist;
        } catch (SQLException ex) {
            Logger.getLogger(JsonDataServlet.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
     private List<RentedBean> getTypePrice(){
        try {
            List<RentedBean> rentlist = new ArrayList<RentedBean>();
            RentedCarDAO rentDAO = new RentedCarDAO();
            rentlist = rentDAO.typePrice();
            
            return rentlist;
        } catch (SQLException ex) {
            Logger.getLogger(JsonDataServlet.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
   
   

}
