package model;


import java.util.List;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

public class UserDAO {
 

    
  private final EntityManager em = JpaUtils.getEntityManager();

    @Override
    protected void finalize() throws Throwable {
        em.close();
        super.finalize();
    }

        public User create(User entity) {
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
  
            
        

    public User update(User entity) {
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

    public User remove(String id) {
        try{
            User entity = this.findById(id);
            em.getTransaction().begin();
            em.remove(entity);
            em.getTransaction().commit();
            return entity;
        } catch (Exception e) {
            em.getTransaction().rollback();
            throw new RuntimeException(e);
        }
    }

    public User findById(String id) {
        return em.find(User.class, id);
    }

    public List<User> findAll() {
        String jpql = "Select o from User o";
        TypedQuery<User> query = em.createQuery(jpql, User.class);
        return query.getResultList();
    }
    public String getEmail(String email) {
    String jpql = "SELECT o.email FROM User o WHERE o.email = :email";
    TypedQuery<String> query = em.createQuery(jpql, String.class);
    query.setParameter("email", email); // Set the value of the parameter
    return query.getSingleResult();
}
    public User getUser(String email) {
    String jpql = "SELECT o FROM User o WHERE o.email = :email";
    TypedQuery<User> query = em.createQuery(jpql, User.class);
    query.setParameter("email", email); // Set the value of the parameter
    return query.getSingleResult();
   
    
}
}

