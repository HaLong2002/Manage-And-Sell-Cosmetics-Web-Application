/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "Users")
@NamedQuery(name="User.findAll", query="SELECT u FROM User u")


public class User implements Serializable {
    
    @Id
    @Column(name = "Username")
    String username;
    
    @Column(name = "Password")
    String password;
    
    @Column(name = "Role")
    String role;
    
    @Column(name = "Email")
    String email;
    
    @Column(name = "Fullname")
    String fullname;
    
    @Column(name = "Ngaysinh")
    Date date = new Date();
    
    @Column(name = "Gioitinh")
     boolean gioitinh;
    
    @Column(name = "Hinhanh")
    String hinhanh;

    public User() {
    }

    public User(String username, String password, String role, String email, String fullname, boolean gioitinh, String hinhanh) {
        this.username = username;
        this.password = password;
        this.role = role;
        this.email = email;
        this.fullname = fullname;
        this.gioitinh = gioitinh;
        this.hinhanh = hinhanh;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public boolean isGioitinh() {
        return gioitinh;
    }

    public void setGioitinh(boolean gioitinh) {
        this.gioitinh = gioitinh;
    }

    public String getHinhanh() {
        return hinhanh;
    }

    public void setHinhanh(String hinhanh) {
        this.hinhanh = hinhanh;
    }
    

}