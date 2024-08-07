package model;

public class ChiTietHoaDonDTO {
    
    public SanPham sanpham;
    public ChiTietHoaDon chitiethoadon;
    
    public ChiTietHoaDonDTO(){}
    
    public ChiTietHoaDonDTO(SanPham sp, ChiTietHoaDon cthd) {
        this.sanpham = sp;
        this.chitiethoadon = cthd;
    }

    public SanPham getSanpham() {
        return sanpham;
    }

    public void setSanpham(SanPham sanpham) {
        this.sanpham = sanpham;
    }

    public ChiTietHoaDon getChitiethoadon() {
        return chitiethoadon;
    }

    public void setChitiethoadon(ChiTietHoaDon chitiethoadon) {
        this.chitiethoadon = chitiethoadon;
    }
    
    
    
}
