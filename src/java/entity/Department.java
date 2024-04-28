/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author DELL
 */
public class Department {
    String DeptNo;String Name;String Location;

    public Department() {
    }

    public Department(String DeptNo, String Name, String Location) {
        this.DeptNo = DeptNo;
        this.Name = Name;
        this.Location = Location;
    }

    public String getDeptNo() {
        return DeptNo;
    }

    public void setDeptNo(String DeptNo) {
        this.DeptNo = DeptNo;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getLocation() {
        return Location;
    }

    public void setLocation(String Location) {
        this.Location = Location;
    }
    
}
