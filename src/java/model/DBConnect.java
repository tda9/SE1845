/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import entity.Employee;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DELL
 */
public class DBConnect {
    Connection con = null;
    public DBConnect(String url,String username,String password) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection(url, username, password);
            System.out.println("Connected");
        } catch (SQLException |ClassNotFoundException ex) {
            ex.printStackTrace();
        }
    }

    public DBConnect() {
        this("jdbc:sqlserver://DESKTOP-6JD55O4:1433;databaseName=SE1845", "sa", "godofwar");
    }
    
    public static void main(String[] args) {
        
        DAOEmployee a = new DAOEmployee();
//        List<Employee> list = a.getAllEmployee();
//        for (Employee e : list) {
//            System.out.println(e);
//        }
//        Employee anE = new Employee("SE010", "C", "B", "Ha noi", 3123, false, "SE", "AD002");
//    int n = a.insertEmployee(anE);
    Employee foundE = a.findEmployee("SE010");
       a.deleteEmployee(foundE.getSSN());

        //System.out.println(a.countEmployee());
//        SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
//        Date date = new Date();
//        try {
//            date = format.parse("20-11-2002");
//            System.out.println(date);
//        } catch (ParseException ex) {
//            //Logger.getLogger(DBConnect.class.getName()).log(Level.SEVERE, null, ex);
//            ex.printStackTrace();
//        }
    
    }
    
    
}
