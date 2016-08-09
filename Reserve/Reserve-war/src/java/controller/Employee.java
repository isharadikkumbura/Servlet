/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.EmployeeDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.EmployeeModel;

/**
 *
 * @author Nimesha
 */
public class Employee extends HttpServlet {

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
            if(request.getParameter("addid") !=null){
                try {
                    if(EmployeeDAO.addEmployee(new EmployeeModel(Integer.parseInt(request.getParameter("addid")), request.getParameter("name"), request.getParameter("address"), request.getParameter("email"),Integer.parseInt(request.getParameter("age").equals("") ? "0":request.getParameter("age")),request.getParameter("phone"),request.getParameter("job"),request.getParameter("section"),request.getParameter("skills"),request.getParameter("desc")))){
                        request.setAttribute("eRes", "Added Successfully");
//                        out.print("true");
                    }else{
                        request.setAttribute("eRes", "Adding Failed");
//                        out.print("false");
                    }
                } catch (SQLException | ClassNotFoundException ex) {
                    out.print(ex.toString());
                    
                    request.setAttribute("eRes", ex.toString());
                }
                finally{
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            } else if (request.getParameter("updateid") != null) {
                try {
                    if (EmployeeDAO.updateEmployee(new EmployeeModel(Integer.parseInt(request.getParameter("updateid")), request.getParameter("name"), request.getParameter("address"), request.getParameter("email"),Integer.parseInt(request.getParameter("age")),request.getParameter("phone"),request.getParameter("job"),request.getParameter("section"),request.getParameter("skills"),request.getParameter("desc")))) {
                        request.setAttribute("updateEmployee", "Updated Successfully");
//                        out.print("true");
                    }else{
                        request.setAttribute("updateEmployee", "Employee does not exist");
//                        out.print("true");
                    }
               } catch (SQLException | ClassNotFoundException ex) {
                    out.print(ex.toString());     
                    request.setAttribute("eRes", ex.toString());
                }
                finally{
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            }else if(request.getParameter("eDeleteID")!=null){
                try {
                    if(EmployeeDAO.deleteEmployee(Integer.parseInt(request.getParameter("eDeleteID")))){
                        request.setAttribute("resDelete", "Deleted Successfully");
                        //out.print("true");
                    }else{
                        request.setAttribute("resDelete", "Book ID does not exist");
                        // out.print("true");
                    }
                } catch (ClassNotFoundException | SQLException ex) {
                    request.setAttribute("resDelete", ex.toString());
                }
                finally {
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            
           
            
            //Following code is for manage employee UI. The same thing happens as above.
                
                
            }else if(request.getParameter("Manageaddid") !=null){
                try {
                    if(EmployeeDAO.addEmployee(new EmployeeModel(Integer.parseInt(request.getParameter("Manageaddid")), request.getParameter("name"), request.getParameter("address"), request.getParameter("email"),Integer.parseInt(request.getParameter("age").equals("") ? "0":request.getParameter("age")),request.getParameter("phone"),request.getParameter("job"),request.getParameter("section"),request.getParameter("skills"),request.getParameter("desc")))){
                        request.setAttribute("eRes", "Added Successfully");
//                        out.print("true");
                    }else{
                        request.setAttribute("eRes", "Adding Failed");
//                        out.print("false");
                    }
                } catch (SQLException | ClassNotFoundException ex) {
                    out.print(ex.toString());
                    
                    request.setAttribute("eRes", ex.toString());
                }
                finally{
                    request.getRequestDispatcher("fullform.jsp").forward(request, response);
                }
            } else if (request.getParameter("Manageupdateid") != null) {
                try {
                    if (EmployeeDAO.updateEmployee(new EmployeeModel(Integer.parseInt(request.getParameter("Manageupdateid")), request.getParameter("name"), request.getParameter("address"), request.getParameter("email"),Integer.parseInt(request.getParameter("age")),request.getParameter("phone"),request.getParameter("job"),request.getParameter("section"),request.getParameter("skills"),request.getParameter("desc")))) {
                        request.setAttribute("updateEmployee", "Updated Successfully");
//                        out.print("true");
                    }else{
                        request.setAttribute("updateEmployee", "Employee does not exist");
//                        out.print("true");
                    }
               } catch (SQLException | ClassNotFoundException ex) {
                    out.print(ex.toString());     
                    request.setAttribute("eRes", ex.toString());
                }
                finally{
                    request.getRequestDispatcher("fullform.jsp").forward(request, response);
                }
            }else if(request.getParameter("ManageDeleteID")!=null){
                try {
                    if(EmployeeDAO.deleteEmployee(Integer.parseInt(request.getParameter("ManageDeleteID")))){
                        request.setAttribute("resDelete", "Deleted Successfully");
                        //out.print("true");
                    }else{
                        request.setAttribute("resDelete", "Employee ID does not exist");
                         //out.print("true");
                    }
                } catch (ClassNotFoundException | SQLException ex) {
                    request.setAttribute("resDelete", ex.toString());
                }
                finally {
                    request.getRequestDispatcher("fullform.jsp").forward(request, response);
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
