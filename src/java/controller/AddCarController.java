/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.AddCarDAO;
import DAO.CarListDAO;
import bean.Car;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashSet;
import java.util.Set;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author pharveish
 */
@WebServlet(name = "AddCarController", urlPatterns = {"/AddCarController"})
public class AddCarController extends HttpServlet {

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
            LocalDateTime now = LocalDateTime.now();  
            if(request.getParameter("btn_addcar")!=null) //check button click event not null from register.jsp page button
        {
            String model=request.getParameter("model");
            String type=request.getParameter("type");
             Part part = request.getPart("file");
            String fileName= part.getSubmittedFileName();
            
            
            String applicationPath = getServletContext().getRealPath("/image_car");
            String path= applicationPath + File.separator+fileName;
            
            InputStream is = part.getInputStream();
            uploadFile(is,path);
            
            Car car=new Car();
            
            car.setModel(model);
            car.setType(type);
            car.setDateReceived(dtf.format(now));
            car.setFile(fileName);
            car.setPath(path);
            
            
            AddCarDAO addcardao=new AddCarDAO(); //this class contain main logic to perform function calling and database operation
            
            String addCarValidate=addcardao.authorizeAddCar(car); //send registerBean object values into authorizeRegister() function in RegisterDao class
            
            if(addCarValidate.equals("SUCCESS ADD CAR")) //check calling authorizeRegister() function receive "SUCCESS REGISTER" string message after redirect to index.jsp page
            {
                request.setAttribute("AddCarSSuccess",addCarValidate); //apply register successfully message "RegiseterSuccessMsg"
                RequestDispatcher rd=request.getRequestDispatcher("RentalHistoryController"); //redirect to index.jsp page
                rd.forward(request, response);
            }
            else
            {
                request.setAttribute("AddCarFail",addCarValidate); // apply register error message "RegiseterErrorMsg"
                RequestDispatcher rd=request.getRequestDispatcher("addCarAdmin.jsp"); //show error same page register.jsp page
                rd.include(request, response);
            }
            
        }
        }
    }
public boolean uploadFile(InputStream is, String path)
    {
        boolean test = false;
        try{
            byte[] byt= new byte[is.available()];
            is.read(byt);
            FileOutputStream fops= new FileOutputStream(path);
            fops.write(byt);
            fops.flush();
            fops.close();
            
            test= true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return test;
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
