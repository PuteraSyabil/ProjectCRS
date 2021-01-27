/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.UserListDAO;
import bean.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author USER
 */
@WebServlet(name = "ManageUserController", urlPatterns = {"/ManageUserController"})
public class ManageUserController extends HttpServlet {

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
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        String url = "jdbc:mysql://localhost:3306/CRS_project";
        String uname="root";
        String pass = "root";
        try (PrintWriter out = response.getWriter()) {
            if(request.getParameter("save")!=null){
                int a = Integer.parseInt(request.getParameter("identification"));
                String b = request.getParameter("firstname");
                String c = request.getParameter("lastname");
                String d = request.getParameter("email");
                    String e = request.getParameter("phonenum");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,uname,pass);
                PreparedStatement pstmt = null;
                pstmt=con.prepareStatement("UPDATE user set firstname= ?, lastname=?, email=?, pnum=? WHERE id=?");
                pstmt.setString(1, b);
                pstmt.setString(2, c);
                pstmt.setString(3, d);
                pstmt.setString(4, e);
                pstmt.setInt(5, a);
                pstmt.executeUpdate();pstmt.close();
                response.sendRedirect("ManageUserController");
                
            }
            else if(request.getParameter("delete")!=null){
                int a = Integer.parseInt(request.getParameter("delete"));

                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,uname,pass);
                PreparedStatement pstmt = null;
                pstmt=con.prepareStatement("DELETE from user  WHERE id=?");
                pstmt.setInt(1, a);
                pstmt.executeUpdate();pstmt.close();
                response.sendRedirect("ManageUserController");
            }
            else{
            UserListDAO userlistDAO = new UserListDAO();
            ArrayList<User> userlist = userlistDAO.getUserList();
            request.setAttribute("userlist", userlist);
            request.getRequestDispatcher("/manageUser.jsp").forward(request, response);
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ManageUserController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ManageUserController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ManageUserController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ManageUserController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
