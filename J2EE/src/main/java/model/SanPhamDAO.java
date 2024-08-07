package model;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

public class SanPhamDAO {

    private EntityManager em = JpaUtils.getEntityManager();

    @Override
    protected void finalize() throws Throwable {
        em.close(); // đóng EntityManager khi DAO bị giải phóng
        super.finalize();
    }

    public SanPham create(SanPham entity) {

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

    public SanPham update(SanPham entity) {
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

    public SanPham remove(String id) {
        try {
            em.getTransaction().begin();

            SanPham entity = this.findById(id);

            em.remove(entity);
            em.getTransaction().commit();
            return entity;
        } catch (Exception e) {
            em.getTransaction().rollback();
            throw new RuntimeException(e);
        }
    }

    public SanPham findById(String id) {
        SanPham entity = em.find(SanPham.class, id);
        return entity;
    }

    public List<SanPham> findAll() {

        String jpql = "SELECT o FROM SanPham o";
        TypedQuery<SanPham> query = em.createQuery(jpql, SanPham.class);
        List<SanPham> list = query.getResultList();
        return list;
    }

    public List<SanPham> findByRole(String role) {
        try {
            em.getTransaction().begin();
            String jpql = "SELECT o FROM SanPham o WHERE o.loaiSP=:role";
            TypedQuery<SanPham> query = em.createQuery(jpql, SanPham.class);
            query.setParameter("role", role);
            List<SanPham> list = query.getResultList();
            em.getTransaction().commit();
            return list;
        } catch (Exception e) {
            em.getTransaction().rollback(); // Hủy thao tác
            throw new RuntimeException(e);
        }

    }

    public List<SanPham> findByKeyword(String keyword) {

        em.getTransaction().begin();
        String jpql = "SELECT o FROM SanPham o WHERE o.LoaiSP LIKE ?0";
        TypedQuery<SanPham> query = em.createQuery(jpql, SanPham.class);
        query.setParameter(0, keyword);

        List<SanPham> list = query.getResultList();
        em.getTransaction().commit();
        return list;
    }

}
