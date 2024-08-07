package model;

public class GioHangDTO {
    
    private GioHang giohang;
    private SanPham sanpham;
    
    public GioHangDTO() {}
    
    public GioHangDTO(GioHang gh, SanPham sp) {
        this.giohang = gh;
        this.sanpham = sp;
    }

    public GioHang getGiohang() {
        return giohang;
    }

    public void setGiohang(GioHang giohang) {
        this.giohang = giohang;
    }

    public SanPham getSanpham() {
        return sanpham;
    }

    public void setSanpham(SanPham sanpham) {
        this.sanpham = sanpham;
    }
    
    
}
