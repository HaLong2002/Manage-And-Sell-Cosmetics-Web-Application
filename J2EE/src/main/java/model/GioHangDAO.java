package model;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

public class GioHangDAO {
    
    private EntityManager em = JpaUtils.getEntityManager();

    @Override
    protected void finalize() throws Throwable {
        em.close(); // đóng EntityManager khi DAO bị giải phóng
        super.finalize();
    }

    public GioHang create(GioHang entity) {

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

    public GioHang update(GioHang entity) {
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

    public GioHang remove(String id) {
        try {
            em.getTransaction().begin();

            GioHang entity = this.findById(id);

            em.remove(entity);
            em.getTransaction().commit();
            return entity;
        } catch (Exception e) {
            em.getTransaction().rollback();
            throw new RuntimeException(e);
        }
    }

    public GioHang findById(String id) {
        GioHang entity = em.find(GioHang.class, id);
        return entity;
    }

    public List<GioHang> findAll() {

        String jpql = "SELECT o FROM GioHang o";
        TypedQuery<GioHang> query = em.createQuery(jpql, GioHang.class);
        List<GioHang> list = query.getResultList();
        return list;
    }

    public List<GioHang> findByRole(String role) {
        try {
            em.getTransaction().begin();
            String jpql = "SELECT o FROM GioHang o WHERE o.username=:role";
            TypedQuery<GioHang> query = em.createQuery(jpql, GioHang.class);
            query.setParameter("role", role);
            List<GioHang> list = query.getResultList();
            em.getTransaction().commit();
            return list;
        } catch (Exception e) {
            em.getTransaction().rollback(); // Hủy thao tác
            throw new RuntimeException(e);
        }

    }

    public List<GioHang> findByKeyword(String keyword) {

        em.getTransaction().begin();
        String jpql = "SELECT o FROM GioHang o WHERE o.LoaiSP LIKE ?0";
        TypedQuery<GioHang> query = em.createQuery(jpql, GioHang.class);
        query.setParameter(0, keyword);

        List<GioHang> list = query.getResultList();
        em.getTransaction().commit();
        return list;
    }
}
