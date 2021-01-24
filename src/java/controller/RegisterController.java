/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.RegisterDao;
import bean.RegisterBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "RegisterController", urlPatterns = {"/RegisterController"})
public class RegisterController extends HttpServlet {

    
     
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        if(request.getParameter("btn_register")!=null) //check button click event not null from register.jsp page button
        {
            String firstname=request.getParameter("txt_firstname");
            String lastname=request.getParameter("txt_lastname");
            String email=request.getParameter("txt_email");  //get all textbox name from register.jsp page
            String password=request.getParameter("txt_password");
            String ic = request.getParameter("txt_icnum");
            String pnum= request.getParameter("txt_pnum");
            
            RegisterBean registerBean=new RegisterBean(); //this class contain  seeting up all received values from register.jsp page to setter and getter method for application require effectively
            
            registerBean.setFirstname(firstname);
            registerBean.setLastname(lastname);
            registerBean.setEmail(email);  //set the all value through registerBean object
            registerBean.setPassword(password);
            registerBean.setIc(ic);
            registerBean.setPnum(pnum);
            
            
            RegisterDao registerdao=new RegisterDao(); //this class contain main logic to perform function calling and database operation
            
            String registerValidate=registerdao.authorizeRegister(registerBean); //send registerBean object values into authorizeRegister() function in RegisterDao class
            
            if(registerValidate.equals("SUCCESS REGISTER")) //check calling authorizeRegister() function receive "SUCCESS REGISTER" string message after redirect to index.jsp page
            {
                request.setAttribute("RegiseterSuccessMsg",registerValidate); //apply register successfully message "RegiseterSuccessMsg"
                RequestDispatcher rd=request.getRequestDispatcher("index.jsp"); //redirect to index.jsp page
                rd.forward(request, response);
            }
            else
            {
                request.setAttribute("RegisterErrorMsg",registerValidate); // apply register error message "RegiseterErrorMsg"
                RequestDispatcher rd=request.getRequestDispatcher("register.jsp"); //show error same page register.jsp page
                rd.include(request, response);
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
