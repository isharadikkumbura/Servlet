/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import connection.DBConnection;
import connection.DBFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.EmployeeModel;

/**
 *
 * @author Nimesha
 */
public class EmployeeDAO {
    public static boolean addEmployee(EmployeeModel model) throws SQLException, ClassNotFoundException{
        Connection conn = null;
        try {
            conn = DBFactory.getConnection().getDBConnection();
            conn.setAutoCommit(false);
             
            PreparedStatement stm =conn.prepareStatement("INSERT INTO `employee`(`id`, `name`, `address`, `email`, `phone`,`age`, `job_title`, `section`, `skills`, `description`) VALUES ( ? , ? , ? , ? , ? ,? , ? , ? , ? , ? )");
            stm.setObject(1, model.getId());
            stm.setObject(2, model.getName());
            stm.setObject(3, model.getAddress());
            stm.setObject(4, model.getEmail());
            stm.setObject(5, model.getPhone());
            stm.setObject(6, model.getAge());
            stm.setObject(7, model.getJob());
            stm.setObject(8, model.getSection());
            stm.setObject(9, model.getSkills());
            stm.setObject(10, model.getDesc());     
            
            boolean state = stm.executeUpdate() > 0 ;
            conn.commit();
            return state;
        } catch (SQLException ex) {
            conn.rollback();
            throw ex;
        }
        finally{
            conn.close();
        }
    }
    
    
    public static ArrayList<EmployeeModel> getAllEmployee() throws ClassNotFoundException, SQLException {
        Connection conn = null;
        try {
            conn = DBFactory.getConnection().getDBConnection();
            Statement stm = conn.createStatement();
            return getResult(stm.executeQuery("SELECT * FROM employee"));
        } finally {
            conn.close();
        }
    }

    public static ArrayList<EmployeeModel> getEmployee(String id) throws ClassNotFoundException, SQLException {
        Connection conn = null;
        try {
            conn = DBFactory.getConnection().getDBConnection();
            PreparedStatement stm = conn.prepareStatement("SELECT * FROM employee WHERE id= ? ");
            stm.setObject(1, id);
            return getResult(stm.executeQuery());
        } finally {
            conn.close();
        }
    }
    
    public static boolean updateEmployee(EmployeeModel model) throws ClassNotFoundException, SQLException {
        Connection conn = null;
        try {
            conn = DBFactory.getConnection().getDBConnection();
            PreparedStatement stm = conn.prepareStatement("SELECT `name` FROM `employee` WHERE `id` = ? ");
            stm.setObject(1, model.getId());
            ResultSet result = stm.executeQuery();
            
            if(result.next()){  // check if the employee is exist 
                stm = conn.prepareStatement("UPDATE `employee` SET `name`= ? ,`address`= ? ,`email`= ?,`phone`= ? ,`age`= ? ,`job_title`= ?,`section`= ? ,`skills`= ?,`description`= ? WHERE `id` = ?");
                stm.setObject(1, model.getName());
                stm.setObject(2, model.getAddress());
                stm.setObject(3, model.getEmail());
                stm.setObject(4, model.getPhone());
                stm.setObject(5, model.getAge());
                stm.setObject(6, model.getJob());
                stm.setObject(7, model.getSection());
                stm.setObject(8, model.getSkills());
                stm.setObject(9, model.getDesc());
                stm.setObject(10, model.getId());
                return stm.executeUpdate() > 0;
            }else {
                return false;
            }
        }
        finally{
            conn.close();
        }
    }
    
    public static boolean deleteEmployee(int empID) throws ClassNotFoundException, SQLException {
        Connection conn = null;
        try {
            conn = DBFactory.getConnection().getDBConnection();
            PreparedStatement stm = conn.prepareStatement("DELETE FROM `employee` WHERE `id` = ?");
            stm.setObject(1, empID);
            return stm.executeUpdate() > 0 ;
        } finally {
            conn.close();
        }
    }
    
    private static ArrayList<EmployeeModel> getResult(ResultSet rst) throws SQLException {
        ArrayList<EmployeeModel> list = new ArrayList<>();
        String  EmployeeName, EmployeeAddress,EmployeeEmail,EmployeePhone,EmployeeSection,EmployeeJob,EmployeeSkills,EmployeeDesc;
        int EmployeeId,EmployeeAge;
        while (rst.next()) {
            try {
                EmployeeId = rst.getInt("id");
            } catch (java.sql.SQLException e) {
                EmployeeId = -1;
            }
            try {
                EmployeeName = rst.getString("name");
            } catch (java.sql.SQLException e) {
                EmployeeName = null;
            }
                       
            try {
                 EmployeeAddress= rst.getString("address");
            } catch (java.sql.SQLException e) {
                EmployeeAddress = null;
            }
            try {
                EmployeeEmail = rst.getString("email");
            } catch (java.sql.SQLException e) {
                EmployeeEmail = null;
            }
            try {
                 EmployeePhone= rst.getString("phone");
            } catch (java.sql.SQLException e) {
                EmployeePhone = null;
            }
            try {
                EmployeeAge = rst.getInt("age");
            } catch (java.sql.SQLException e) {
                EmployeeAge = -1;
            }
            try {
                EmployeeJob = rst.getString("job_title");
            } catch (java.sql.SQLException e) {
                EmployeeJob = null;
            }
            try {
                 EmployeeSection= rst.getString("section");
            } catch (java.sql.SQLException e) {
                EmployeeSection = null;
            }
            try {
                EmployeeSkills = rst.getString("skills");
            } catch (java.sql.SQLException e) {
                EmployeeSkills = null;
            }
            try {
                EmployeeDesc= rst.getString("description");
            } catch (java.sql.SQLException e) {
                EmployeeDesc = null;
            }
            
            list.add(new EmployeeModel(EmployeeId,EmployeeName,EmployeeAddress ,EmployeeEmail,EmployeeAge,EmployeePhone,EmployeeJob,EmployeeSection,EmployeeSkills,EmployeeDesc));
        }
        return list;
    }
}
