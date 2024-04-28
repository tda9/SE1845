/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author DELL
 */
public class Project {
    String ProNo;
    String Name;
    String StartDate;
    String EndDate;
    String DeptNo;

    public Project() {
    }

    public Project(String ProNo, String Name, String StartDate, String EndDate, String DeptNo) {
        this.ProNo = ProNo;
        this.Name = Name;
        this.StartDate = StartDate;
        this.EndDate = EndDate;
        this.DeptNo = DeptNo;
    }

    public String getProNo() {
        return ProNo;
    }

    public void setProNo(String ProNo) {
        this.ProNo = ProNo;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getStartDate() {
        return StartDate;
    }

    public void setStartDate(String StartDate) {
        this.StartDate = StartDate;
    }

    public String getEndDate() {
        return EndDate;
    }

    public void setEndDate(String EndDate) {
        this.EndDate = EndDate;
    }

    public String getDeptNo() {
        return DeptNo;
    }

    public void setDeptNo(String DeptNo) {
        this.DeptNo = DeptNo;
    }
    
    
}
