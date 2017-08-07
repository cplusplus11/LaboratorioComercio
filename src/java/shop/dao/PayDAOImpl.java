/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.dao;

import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import shop.entities.Pay;

/**
 *
 * @author luis
 */
@Repository("PayDAO")
public class PayDAOImpl implements PayDAO {

    @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    public List<Pay> findAll() {
        return sessionFactory.getCurrentSession()
                .createCriteria(Pay.class).list();
    }

    @Override
    public Pay find(Integer id) {
        return (Pay) sessionFactory.getCurrentSession().get(Pay.class, id);
    }
    
}
