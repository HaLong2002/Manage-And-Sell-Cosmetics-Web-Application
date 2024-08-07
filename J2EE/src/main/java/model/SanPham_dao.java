package  model;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
public class SanPham_dao {

  private final EntityManager em = JpaUtils.getEntityManager();

    @Override
    protected void finalize() throws Throwable {
        em.close();
        super.finalize();
    }

    public SanPham create(SanPham entity) {
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
    public SanPham update(SanPham entity) {
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

    public SanPham remove(String ma) {
        try{
            SanPham entity = this.findByMa(ma);
            em.getTransaction().begin();
            em.remove(entity);
            em.getTransaction().commit();
            return entity;
        } catch (Exception e) {
            em.getTransaction().rollback();
            throw new RuntimeException(e);
        }
    }

    public SanPham findByMa(String ma) {
        return em.find(SanPham.class, ma);
    }
    
    public List<SanPham> findAll() {
        String jpql = "SELECT s FROM SanPham s";
        TypedQuery<SanPham> query = em.createQuery(jpql, SanPham.class);
        System.out.println("thanh cong");
        return query.getResultList();
    }
}

