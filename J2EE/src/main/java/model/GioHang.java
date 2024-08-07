package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "GioHang")

public class GioHang {
    
    @Id
    @Column(name = "MaGH")
    private String magh;
    @Column(name = "Username")
    private String username;
    @Column(name = "MaSP")
    private String masp;
    @Column(name = "SoLuong")
    private int soluong;
    @Column(name = "ThanhTien")
    private String thanhtien;
    
    public GioHang(String magh, String username, String masp, int soluong, String thanhtien) {
        this.magh = magh;
        this.username = username;
        this.masp = masp;
        this.soluong = soluong;
        this.thanhtien = thanhtien;
    }
    
    public GioHang() {
        
    }

    public String getMagh() {
        return magh;
    }

    public void setMagh(String magh) {
        this.magh = magh;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getMasp() {
        return masp;
    }

    public void setMasp(String masp) {
        this.masp = masp;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public String getThanhtien() {
        return thanhtien;
    }

    public void setThanhtien(String thanhtien) {
        this.thanhtien = thanhtien;
    }
    
    
}
