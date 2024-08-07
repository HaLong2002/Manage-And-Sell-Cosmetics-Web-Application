/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author HP
 */
@Entity
@Table(name = "SanPham")
public class SanPham {

    @Id
    @Column(name = "MaSP")
    private String maSP;
    @Column(name = "TenSP")
    private String tenSP;
    @Column(name = "LoaiSP")
    private String loaiSP;
    @Column(name = "GiaBan")
    private String giaBan;
    @Column(name = "SoLuong")
    private String soLuong;
    @Column(name = "DonViTinh")
    private String donViTinh;
    @Column(name = "HinhAnh")
    private String hinhAnh;

    public SanPham(String masp, String tensp, String loaisp, String giaban, String soluong, String donvitinh, String hinhanh) {
        this.maSP = masp;
        this.tenSP = tensp;
        this.loaiSP = loaisp;
        this.giaBan = giaban;
        this.soLuong = soluong;
        this.donViTinh = donvitinh;
        this.hinhAnh = hinhanh;
    }
    
    public SanPham() {
    }

//    public SanPham(String maSP) {
//        this.maSP = maSP;
//    }

    public String getMaSP() {
        return maSP;
    }

    public void setMaSP(String maSP) {
        this.maSP = maSP;
    }

    public String getTenSP() {
        return tenSP;
    }

    public void setTenSP(String tenSP) {
        this.tenSP = tenSP;
    }

    public String getLoaiSP() {
        return loaiSP;
    }

    public void setLoaiSP(String loaiSP) {
        this.loaiSP = loaiSP;
    }

    public String getGiaBan() {
        return giaBan;
    }

    public void setGiaBan(String giaBan) {
        this.giaBan = giaBan;
    }

    public String getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(String soLuong) {
        this.soLuong = soLuong;
    }

    public String getDonViTinh() {
        return donViTinh;
    }

    public void setDonViTinh(String donViTinh) {
        this.donViTinh = donViTinh;
    }

    public String getHinhAnh() {
        return hinhAnh;
    }

    public void setHinhAnh(String hinhAnh) {
        this.hinhAnh = hinhAnh;
    }

    
}
