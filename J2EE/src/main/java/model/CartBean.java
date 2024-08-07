package model;

import java.util.HashMap;

public class CartBean extends HashMap{
    
    public void addSanPham(SanPhamDTO sp, int soluong_duoc_chon, int tongtien) {
        String key = sp.getSanpham().getMaSP();
        if(this.containsKey(key)) {
            int oldQuantity = ((SanPhamDTO)this.get(key)).getQuantity();
            ((SanPhamDTO)this.get(key)).setQuantity(oldQuantity + soluong_duoc_chon);
            ((SanPhamDTO)this.get(key)).setTongtien(tongtien);
        } else {
            this.put(sp.getSanpham().getMaSP(), sp);
        }
    }
    
    public boolean removeSanPham(String code) {
        
        if(this.containsKey(code)) {
            this.remove(code);
            return true;
        }
        return false;
    }
    
    
    
    public CartBean() {
        super();
    }
}