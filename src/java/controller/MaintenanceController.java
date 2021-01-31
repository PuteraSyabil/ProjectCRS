/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.MaintenanceDAO;
import bean.Maintenance;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author pharveish
 */
@WebServlet(name = "MaintenanceController", urlPatterns = {"/MaintenanceController"})
public class MaintenanceController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");  
            DateTimeFormatter dtf2 = DateTimeFormatter.ofPattern("HH:mm:ss"); 
            LocalDateTime now = LocalDateTime.now();  
            if(request.getParameter("btn_maintenance")!=null) //check button click event not null from register.jsp page button
            {
            
            int carNo=Integer.parseInt(request.getParameter("carNo"));
            String issue = request.getParameter("issue");
           
         
            Maintenance m=new Maintenance();
            
            m.setIssue(issue);
     
            m.setDateSent(dtf.format(now));
            m.setTimeSent(dtf2.format(now));
            m.setFk_carNo(carNo);
            
       
            
            
            
            MaintenanceDAO mDAO=new MaintenanceDAO(); //this class contain main logic to perform function calling and database operation
            
            String carMaintenance=mDAO.maintainCar(m); //send registerBean object values into authorizeRegister() function in RegisterDao class
            
            if(carMaintenance.equals("maintenanceSuccess")) //check calling authorizeRegister() function receive "SUCCESS REGISTER" string message after redirect to index.jsp page
            {
                request.setAttribute("maintainCar",carMaintenance); //apply register successfully message "RegiseterSuccessMsg"
                RequestDispatcher rd=request.getRequestDispatcher("welcomeAdmin.jsp"); //redirect to index.jsp page
                rd.forward(request, response);
            }
            else if(carMaintenance.equals("maintenanceFail"))
            {
                out.println(m.getIssue());
                out.println(m.getDateSent());
                out.println(m.getTimeSent());
                out.println(m.getFk_carNo());
                out.println("fail");
//                request.setAttribute("RentCarFail",maintainCar); // apply register error message "RegiseterErrorMsg"
//                RequestDispatcher rd=request.getRequestDispatcher("manageCarAdmin.jsp"); //show error same page register.jsp page
//                rd.include(request, response);
            }
            
        }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
