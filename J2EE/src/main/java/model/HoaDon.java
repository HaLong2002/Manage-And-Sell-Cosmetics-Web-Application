package model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="HoaDon") 

public class HoaDon implements Serializable{
    
    @Id
    @Column(name = "MaHD")
    String mahd;
    @Column(name = "Username")
    String username;
    @Column(name = "HoTen")
    String hoten;
    @Column(name = "SDT")
    String sdt;
    @Column(name = "DiaChi")
    String diachi;
    @Column(name = "NgayLap")
    String ngaylap;
    @Column(name = "NgayHoanThanh")
    String ngayhoanthanh;
    @Column(name = "TongTienHang")
    String tongtienhang;
    @Column(name = "PhiVanChuyen")
    String phivanchuyen;
    @Column(name = "ThanhTien")
    String thanhtien;
    @Column(name = "PhuongThucThanhToan")
    String phuongthuc_thanhtoan;
    @Column(name = "TinhTrang")
    String tinhtrang;
    
    public HoaDon(){}
    
    public HoaDon(String mahd, String username, String hoten, String sdt, String diachi, String ngaylap, String ngayhoanthanh, String tongtienhang, String phivanchuyen, String thanhtien, String phuongthuc_thanhtoan, String tinhtrang) {
        this.mahd = mahd;
        this.username = username;
        this.hoten = hoten;
        this.sdt = sdt;
        this.diachi = diachi;
        this.ngaylap = ngaylap;
        this.ngayhoanthanh = ngayhoanthanh;
        this.tongtienhang = tongtienhang;
        this.phivanchuyen = phivanchuyen;
        this.thanhtien = thanhtien;
        this.phuongthuc_thanhtoan = phuongthuc_thanhtoan;
        this.tinhtrang = tinhtrang;
    }

    public String getMahd() {
        return mahd;
    }

    public void setMahd(String mahd) {
        this.mahd = mahd;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }
    
    public String getNgaylap() {
        return ngaylap;
    }

    public void setNgaylap(String ngaylap) {
        this.ngaylap = ngaylap;
    }
    
    public String getNgayhoanthanh() {
        return ngayhoanthanh;
    }

    public void setNgayhoanthanh(String ngayhoanthanh) {
        this.ngayhoanthanh = ngayhoanthanh;
    }

    public String getTongtienhang() {
        return tongtienhang;
    }

    public void setTongtienhang(String tongtienhang) {
        this.tongtienhang = tongtienhang;
    }

    public String getPhivanchuyen() {
        return phivanchuyen;
    }

    public void setPhivanchuyen(String phivanchuyen) {
        this.phivanchuyen = phivanchuyen;
    }

    public String getThanhtien() {
        return thanhtien;
    }

    public void setThanhtien(String thanhtien) {
        this.thanhtien = thanhtien;
    }

    public String getPhuongthuc_thanhtoan() {
        return phuongthuc_thanhtoan;
    }

    public void setPhuongthuc_thanhtoan(String phuongthuc_thanhtoan) {
        this.phuongthuc_thanhtoan = phuongthuc_thanhtoan;
    }

    public String getTinhtrang() {
        return tinhtrang;
    }

    public void setTinhtrang(String tinhtrang) {
        this.tinhtrang = tinhtrang;
    }
    
    
}
