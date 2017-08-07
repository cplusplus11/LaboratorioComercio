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

import shop.entities.Shipping;

/**
 *
 * @author luis
 */
@Repository("shippingDAO")
public class ShippingDAOImpl implements ShippingDAO{

    @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    public List<Shipping> findAll() {
        return sessionFactory.getCurrentSession()
                .createCriteria(Shipping.class).list();
    }

    @Override
    public Shipping find(Integer id) {
        return (Shipping) sessionFactory.getCurrentSession().get(Shipping.class, id);
    }
    
}
