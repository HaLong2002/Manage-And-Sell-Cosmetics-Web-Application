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
public class NhapHang_dao {
    private final EntityManager em = JpaUtils.getEntityManager();

    @Override
    protected void finalize() throws Throwable {
        em.close();
        super.finalize();
    }

    public NhapHang create(NhapHang entity) {
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
    public NhapHang update(NhapHang entity) {
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

    public NhapHang remove(String ma) {
        try{
            NhapHang entity = this.findByMa(ma);
            em.getTransaction().begin();
            em.remove(entity);
            em.getTransaction().commit();
            return entity;
        } catch (Exception e) {
            em.getTransaction().rollback();
            throw new RuntimeException(e);
        }
    }

    public NhapHang findByMa(String ma) {
        return em.find(NhapHang.class, ma);
    }
    
    public List<NhapHang> findAll() {
        String jpql = "SELECT o FROM NhapHang o";
        TypedQuery<NhapHang> query = em.createQuery(jpql, NhapHang.class);
        System.out.println("thanh cong");
        return query.getResultList();
    }
}
