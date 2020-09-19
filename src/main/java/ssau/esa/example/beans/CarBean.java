package ssau.esa.example.beans;

import ssau.esa.example.entity.Car;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.Collection;

@Stateless
public class CarBean {

    @PersistenceContext(unitName = "esa")
    private EntityManager em;

    public Collection<Car> findAll(){
        return em.createQuery("SELECT c FROM Car c", Car.class).getResultList();
    }
}
