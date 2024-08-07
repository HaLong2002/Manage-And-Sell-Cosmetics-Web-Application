/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

/**
 *
 * @author HP
 */
public class ChiTiet_NH_dao {
    private final EntityManager em = JpaUtils.getEntityManager();

    @Override
    protected void finalize() throws Throwable {
        em.close();
        super.finalize();
    }

    public ChiTiet_NhapHang create(ChiTiet_NhapHang entity) {
        try{
            em.getTransaction().begin();
            em.persist(entity);
            em.getTransaction().commit();
            return entity;
        } catch (Exception e) {
            em.getTransaction().rollback();
            throw new RuntimeException(e);
        }
    }
    public ChiTiet_NhapHang update(ChiTiet_NhapHang entity) {
        try{
            em.getTransaction().begin();
            em.merge(entity);
            em.getTransaction().commit();
            return entity;
        } catch (Exception e) {
            em.getTransaction().rollback();
            throw new RuntimeException(e);
        }
    }

    public ChiTiet_NhapHang remove(String stt) {
        try{
            ChiTiet_NhapHang entity = this.findByMa(stt);
            em.getTransaction().begin();
            em.remove(entity);
            em.getTransaction().commit();
            return entity;
        } catch (Exception e) {
            em.getTransaction().rollback();
            throw new RuntimeException(e);
        }
    }
    public ChiTiet_NhapHang findByMa(String stt) {
        return em.find(ChiTiet_NhapHang.class, stt);
    }
    
    public List<ChiTiet_NhapHang> findAll() {
        String jpql = "SELECT o FROM ChiTiet_NhapHang o";
        TypedQuery<ChiTiet_NhapHang> query = em.createQuery(jpql, ChiTiet_NhapHang.class);
        System.out.println("thanh cong");
        return query.getResultList();
    }
    
    public List<ChiTiet_NhapHang> findByRole(String role) {
        try {
            em.getTransaction().begin();
            String jpql = "SELECT o FROM ChiTiet_NhapHang o WHERE o.maNH=:role";
            TypedQuery<ChiTiet_NhapHang> query = em.createQuery(jpql, ChiTiet_NhapHang.class);
            query.setParameter("role", role);
            List<ChiTiet_NhapHang> list = query.getResultList();
            em.getTransaction().commit();
            return list;
        } catch (Exception e) {
            em.getTransaction().rollback(); // Hủy thao tác
            throw new RuntimeException(e);
        }

    }
}
