package model;

import java.io.Serializable;

public class SanPhamDTO implements Serializable{
    
    private SanPham sanpham;
    private int quantity;
    private int tongtien;
    
    public SanPhamDTO() {}
    
    public SanPhamDTO(SanPham sp, int quantity, int tongtien) {
        
        this.sanpham = sp;
        this.quantity = quantity;
        this.tongtien = tongtien;
    }
    
    public SanPham getSanpham() {
        return sanpham;
    }

    public void setSanpham(SanPham sanpham) {
        this.sanpham = sanpham;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getTongtien() {
        return tongtien;
    }

    public void setTongtien(int tongtien) {
        this.tongtien = tongtien;
    }
    
    
    
}

