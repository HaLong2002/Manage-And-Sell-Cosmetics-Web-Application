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
public class NhaCungCap_dao {
    private final EntityManager em = JpaUtils.getEntityManager();

    @Override
    protected void finalize() throws Throwable {
        em.close();
        super.finalize();
    }

    public NhaCungCap create(NhaCungCap entity) {
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
    public NhaCungCap update(NhaCungCap entity) {
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

    public NhaCungCap remove(String ma) {
        try{
            NhaCungCap entity = this.findByMa(ma);
            em.getTransaction().begin();
            em.remove(entity);
            em.getTransaction().commit();
            return entity;
        } catch (Exception e) {
            em.getTransaction().rollback();
            throw new RuntimeException(e);
        }
    }

    public NhaCungCap findByMa(String ma) {
        return em.find(NhaCungCap.class, ma);
    }
    
    public List<NhaCungCap> findAll() {
        String jpql = "SELECT o FROM NhaCungCap o";
        TypedQuery<NhaCungCap> query = em.createQuery(jpql, NhaCungCap.class);
        System.out.println("thanh cong");
        return query.getResultList();
    }
}
