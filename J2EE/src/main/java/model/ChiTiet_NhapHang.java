/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author HP
 */
@Entity
@Table(name = "ChiTiet_NhapHang")
public class ChiTiet_NhapHang implements Serializable {

    @Id
    @Column(name = "STT")
    private String stt;
    @Column(name = "MaNH")
    private String maNH;
    @Column(name = "MaNCC")
    private String maNCC;
    @Column(name = "MaSP")
    private String maSP;
    @Column(name = "SoLuong")
    private String soluong;
    @Column(name = "Gia")
    private String gia;
    @Column(name = "ThanhTien")
    private String thanhtien;

    public String getStt() {
        return stt;
    }

    public void setStt(String stt) {
        this.stt = stt;
    }

    
    public String getMaNH() {
        return maNH;
    }

    public void setMaNH(String maNH) {
        this.maNH = maNH;
    }

    public String getMaNCC() {
        return maNCC;
    }

    public void setMaNCC(String maNCC) {
        this.maNCC = maNCC;
    }

    public String getMaSP() {
        return maSP;
    }

    public void setMaSP(String maSP) {
        this.maSP = maSP;
    }

    public String getSoluong() {
        return soluong;
    }

    public void setSoluong(String soluong) {
        this.soluong = soluong;
    }

    public String getGia() {
        return gia;
    }

    public void setGia(String gia) {
        this.gia = gia;
    }

    public String getThanhtien() {
        return thanhtien;
    }

    public void setThanhtien(String thanhtien) {
        this.thanhtien = thanhtien;
    }

    public ChiTiet_NhapHang() {
    }

    @Override
    public String toString() {
        return "ChiTiet_NhapHang{" + "stt=" + stt + ", maNH=" + maNH + ", maNCC=" + maNCC + ", maSP=" + maSP + ", soluong=" + soluong + ", gia=" + gia + ", thanhtien=" + thanhtien + '}';
    }
    
    
}
