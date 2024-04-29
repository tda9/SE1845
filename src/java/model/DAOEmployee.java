/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import entity.Employee;

import java.util.List;
import java.sql.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author TD
 */
public class DAOEmployee extends DBConnect {

//    public List<Employee> getAllEmployee() {
//        List<Employee> list = new ArrayList<>();
//        try {
//            String sql = "Select*from Employee";
//            PreparedStatement st = con.prepareCall(sql);
//            ResultSet rs = st.executeQuery();
//            while (rs.next()) {
//                list.add(new Employee(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getDouble(5),
//                        rs.getBoolean(6),
//                        rs.getString(7),
//                        rs.getString(8)));
//
//            }
//        } catch (Exception e) {
//        }
//        return list;
//    }
    public int insertEmployee(Employee emp) {
        int n = 0;
        String sql = "INSERT INTO [dbo].[Employee]\n"
                + "           ([SSN]\n"
                + "           ,[FName]\n"
                + "           ,[LName]\n"
                + "           ,[Address]\n"
                + "           ,[Salary]\n"
                + "           ,[Sex]\n"
                + "           ,[DeptNo]\n"
                + "           ,[SSNSupervisor])\n"
                + "     VALUES\n"
                + "           ('" + emp.getSSN() + "','" + emp.getFName() + "','" + emp.getLName() + "','" + emp.getAddress() + "'," + emp.getSalary() + "," + (emp.isSex() == true ? 1 : 0) + ",'" + emp.getDeptNo() + "','" + emp.getSSNSupervisor() + "')";
        try {
            //PreparedStatement stm = con.prepareCall(sql);
            Statement stm = con.createStatement();
            n = stm.executeUpdate(sql);
        } catch (SQLException ex) {
            //Logger.getLogger(DAOEMployee.class.getName()).log(Level.SEVERE, null, ex);
        }

        return n;
    }

    public String countEmployee() {

        String sql = "select *  from Employee ";
        try {
            //PreparedStatement stm = con.prepareStatement(sql);
            Statement stm = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
             ResultSet n = stm.executeQuery(sql);
             if(n!=null){
                 n.absolute(15);
                 return n.getString(1);
             }
//            Statement stm = con.createStatement();
//            ResultSet n = stm.executeQuery(sql);
//            if (n.next()) {
//
//                return n.getInt(1);
//            }
        } catch (SQLException ex) {
            //Logger.getLogger(DAOEMployee.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex);
        }

        return null;
    }
    
    public void deleteEmployee(String SSN){
        String sql = "delete from Employee where SSN = ?";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, SSN);
            stm.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        
    }
    public Employee findEmployee(String SSN){
        String sql = "select * from Employee where SSN = ?";
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, SSN);
            ResultSet rs = stm.executeQuery();
            if(rs.next()){
                return new Employee(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getBoolean(6), rs.getString(7), rs.getString(8));
            }
        } catch (SQLException ex) {
            //Logger.getLogger(DAOEmployee.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex);
        }
       return null; 
    }

}
