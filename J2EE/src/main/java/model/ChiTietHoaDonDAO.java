package model;

import model.ChiTietHoaDon;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

public class ChiTietHoaDonDAO {

    private EntityManager em = JpaUtils.getEntityManager();

    @Override
    protected void finalize() throws Throwable {
        em.close(); // đóng EntityManager khi DAO bị giải phóng
        super.finalize();
    }

    public ChiTietHoaDon create(ChiTietHoaDon entity) {

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

    public ChiTietHoaDon update(ChiTietHoaDon entity) {
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

    public ChiTietHoaDon remove(String id) {
        try {
            em.getTransaction().begin();

            ChiTietHoaDon entity = this.findById(id);

            em.remove(entity);
            em.getTransaction().commit();
            return entity;
        } catch (Exception e) {
            em.getTransaction().rollback();
            throw new RuntimeException(e);
        }
    }

    public List<ChiTietHoaDon> CTDH(String id) {
        try {
            String jpql = "SELECT o FROM ChiTietHoaDon o WHERE o.mahd = :id";
            TypedQuery<ChiTietHoaDon> query = em.createQuery(jpql, ChiTietHoaDon.class);
            query.setParameter("id", id);
            List<ChiTietHoaDon> list = query.getResultList();
            return list;
        } catch (Exception e) {
            em.getTransaction().rollback();
            throw new RuntimeException(e);
        }
    }

    public ChiTietHoaDon findById(String id) {
        // ChiTietHoaDon entity = em.find(ChiTietHoaDon.class, id);
        //  return entity;
        return em.find(ChiTietHoaDon.class, id);
    }

    public List<ChiTietHoaDon> findAll() {

        String jpql = "SELECT o FROM ChiTietHoaDon o";
        TypedQuery<ChiTietHoaDon> query = em.createQuery(jpql, ChiTietHoaDon.class);
        List<ChiTietHoaDon> list = query.getResultList();
        return list;
    }

    public ChiTietHoaDon findMaHD(String id) {
        String jpql = "SELECT o FROM ChiTietHoaDon o WHERE o.mahd = :id";
        TypedQuery<ChiTietHoaDon> query = em.createQuery(jpql, ChiTietHoaDon.class);
        query.setParameter("id", id);
        return query.getSingleResult();

    }
    
    public List<ChiTietHoaDon> findByRole(String role) {
        try {
            em.getTransaction().begin();
            String jpql = "SELECT o FROM ChiTietHoaDon o WHERE o.mahd=:role";
            TypedQuery<ChiTietHoaDon> query = em.createQuery(jpql, ChiTietHoaDon.class);
            query.setParameter("role", role);
            List<ChiTietHoaDon> list = query.getResultList();
            em.getTransaction().commit();
            return list;
        } catch (Exception e) {
            em.getTransaction().rollback(); // Hủy thao tác
            throw new RuntimeException(e);
        }

    }


    /*  public List<ChiTietHoaDon> findByRole(String role) {
        try {
            em.getTransaction().begin();
            String jpql = "SELECT o FROM ChiTietHoaDon o WHERE o.loaisp=:role";
            TypedQuery<ChiTietHoaDon> query = em.createQuery(jpql, ChiTietHoaDon.class);
            query.setParameter("role", role);
            List<ChiTietHoaDon> list = query.getResultList();
            em.getTransaction().commit();
            return list;
        } catch (Exception e) {
            em.getTransaction().rollback(); // Hủy thao tác
            throw new RuntimeException(e);
        }

    }

    public List<ChiTietHoaDon> findByKeyword(String keyword) {

        em.getTransaction().begin();
        String jpql = "SELECT o FROM ChiTietHoaDon o WHERE o.LoaiSP LIKE ?0";
        TypedQuery<ChiTietHoaDon> query = em.createQuery(jpql, ChiTietHoaDon.class);
        query.setParameter(0, keyword);

        List<ChiTietHoaDon> list = query.getResultList();
        em.getTransaction().commit();
        return list;
    }*/
}
