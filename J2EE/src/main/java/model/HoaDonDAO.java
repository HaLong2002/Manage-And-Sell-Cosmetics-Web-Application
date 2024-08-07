package model;

import model.HoaDon;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

public class HoaDonDAO {

    private EntityManager em = JpaUtils.getEntityManager();

    @Override
    protected void finalize() throws Throwable {
        em.close(); // đóng EntityManager khi DAO bị giải phóng
        super.finalize();
    }

    public HoaDon create(HoaDon entity) {

        try {
            em.getTransaction().begin();
            em.persist(entity);
            em.getTransaction().commit();

            return entity;
        } catch (Exception e) {
            em.getTransaction().rollback();
            throw new RuntimeException(e);
        }

    }

    public HoaDon update(HoaDon entity) {
        try {
            em.getTransaction().begin();
            em.merge(entity);
            em.getTransaction().commit();
            return entity;
        } catch (Exception e) {
            em.getTransaction().rollback();
            throw new RuntimeException(e);
        }
    }

    public HoaDon remove(String id) {
        try {
            em.getTransaction().begin();

            HoaDon entity = this.findById(id);

            em.remove(entity);
            em.getTransaction().commit();
            return entity;
        } catch (Exception e) {
            em.getTransaction().rollback();
            throw new RuntimeException(e);
        }
    }

    public HoaDon findById(String id) {
        HoaDon entity = em.find(HoaDon.class, id);
        return entity;
    }

    public List<HoaDon> findAll() {
         
        String jpql = "SELECT h FROM HoaDon h";
        TypedQuery<HoaDon> query = em.createQuery(jpql, HoaDon.class);
        List<HoaDon> list = query.getResultList();
        return list;
    }

    public List<HoaDon> findByRole(String role) {
        try {
            em.getTransaction().begin();
            String jpql = "SELECT h FROM HoaDon h WHERE h.username=:role";
            TypedQuery<HoaDon> query = em.createQuery(jpql, HoaDon.class);
            query.setParameter("role", role);
            List<HoaDon> list = query.getResultList();
            em.getTransaction().commit();
            return list;
        } catch (Exception e) {
            em.getTransaction().rollback(); // Hủy thao tác
            throw new RuntimeException(e);
        }

    }

    public List<HoaDon> findByKeyword(String keyword) {

        em.getTransaction().begin();
        String jpql = "SELECT o FROM HoaDon o WHERE o.MaHD LIKE ?0";
        TypedQuery<HoaDon> query = em.createQuery(jpql, HoaDon.class);
        query.setParameter(0, keyword);

        List<HoaDon> list = query.getResultList();
        em.getTransaction().commit();
        return list;
    }

    public List<HoaDon> getTinhTrang_ChuaXuLy() {
        try {
        em.getTransaction().begin();
        String tinhtrang = "Đơn hàng đang được chuẩn bị";
        String jpql = "SELECT o FROM HoaDon o WHERE o.tinhtrang = :tinhtrang";
        TypedQuery<HoaDon> query = em.createQuery(jpql, HoaDon.class);
        query.setParameter("tinhtrang", tinhtrang);
        List<HoaDon> list = query.getResultList();

        return list;
    } catch (Exception e) {
        em.getTransaction().rollback(); // Hủy thao tác
        throw new RuntimeException(e);
    }

    }
     public List<HoaDon> getTinhTrang_HoanThanh() {
       // try {
    //    em.getTransaction().begin();
        String tinhtrang = "Đơn hàng đã được giao thành công";
        String jpql = "SELECT o FROM HoaDon o WHERE o.tinhtrang = :tinhtrang";
        TypedQuery<HoaDon> query = em.createQuery(jpql, HoaDon.class);
        query.setParameter("tinhtrang", tinhtrang);
        List<HoaDon> list = query.getResultList();

        return list;
    //} catch (Exception e) {
     //   em.getTransaction().rollback(); // Hủy thao tác
     //   throw new RuntimeException(e);
   // }

    }
      
     }


