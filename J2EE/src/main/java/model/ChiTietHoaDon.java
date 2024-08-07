package model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ChiTietHoaDon")

public class ChiTietHoaDon implements Serializable{
    
    @Id
    @Column(name = "MaCT")
    String mact;
    @Column(name = "MaHD")
    String mahd;
    @Column(name = "NgayDat")
    String ngaydat;
    @Column(name = "NgayHoanThanh")
    String ngayhoanthanh;
    @Column(name = "Username")
    String username;
    @Column(name = "MaSP")
    String masp;
    @Column(name = "SoLuong")
    String soluong;
    @Column(name = "ThanhTien")
    String thanhtien;
    
    public ChiTietHoaDon() {}
    
    public ChiTietHoaDon(String mact, String mahd, String ngaydat, String ngayhoanthanh, String username, String masp, String soluong, String thanhtien) {
        this.mact = mact;
        this.mahd = mahd;
        this.username = username;
        this.ngaydat = ngaydat;
        this.ngayhoanthanh = ngayhoanthanh;
        this.masp = masp;
        this.soluong = soluong;
        this.thanhtien = thanhtien;
    }

    public String getMact() {
        return mact;
    }

    public void setMact(String mact) {
        this.mact = mact;
    }
        
    public String getMahd() {
        return mahd;
    }

    public void setMahd(String mahd) {
        this.mahd = mahd;
    }

    public String getNgaydat() {
        return ngaydat;
    }

    public void setNgaydat(String ngaydat) {
        this.ngaydat = ngaydat;
    }

    public String getNgayhoanthanh() {
        return ngayhoanthanh;
    }

    public void setNgayhoanthanh(String ngayhoanthanh) {
        this.ngayhoanthanh = ngayhoanthanh;
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

    public String getSoluong() {
        return soluong;
    }

    public void setSoluong(String soluong) {
        this.soluong = soluong;
    }

    public String getThanhtien() {
        return thanhtien;
    }

    public void setThanhtien(String thanhtien) {
        this.thanhtien = thanhtien;
    }
    
    
}
