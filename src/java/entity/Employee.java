/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author DELL
 */
public class Employee {
    String SSN;
    String FName;
    String LName;
    String Address;
    double Salary;
    boolean Sex;
    String DeptNo;
    String SSNSupervisor;

    public Employee() {
    }

    public Employee(String SSN, String FName, String LName, String Address, double Salary, boolean Sex, String DeptNo, String SSNSupervisor) {
        this.SSN = SSN;
        this.FName = FName;
        this.LName = LName;
        this.Address = Address;
        this.Salary = Salary;
        this.Sex = Sex;
        this.DeptNo = DeptNo;
        this.SSNSupervisor = SSNSupervisor;
    }

    public String getSSN() {
        return SSN;
    }

    public void setSSN(String SSN) {
        this.SSN = SSN;
    }

    public String getFName() {
        return FName;
    }

    public void setFName(String FName) {
        this.FName = FName;
    }

    public String getLName() {
        return LName;
    }

    public void setLName(String LName) {
        this.LName = LName;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public double getSalary() {
        return Salary;
    }

    public void setSalary(double Salary) {
        this.Salary = Salary;
    }

    public boolean isSex() {
        return Sex;
    }

    public void setSex(boolean Sex) {
        this.Sex = Sex;
    }

    public String getDeptNo() {
        return DeptNo;
    }

    public void setDeptNo(String DeptNo) {
        this.DeptNo = DeptNo;
    }

    public String getSSNSupervisor() {
        return SSNSupervisor;
    }

    public void setSSNSupervisor(String SSNSupervisor) {
        this.SSNSupervisor = SSNSupervisor;
    }

    @Override
    public String toString() {
        return this.FName + " "+this.LName;//super.toString(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }
    
    
    
    
}
