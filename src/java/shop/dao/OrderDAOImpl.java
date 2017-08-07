/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import shop.entities.Order;

/**
 *
 * @author luis
 */
@Repository("orderDAO")
public class OrderDAOImpl implements OrderDAO{

    @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    public void create(Order order) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.save(order);
        transaction.commit();
        session.close();
    }
    
}
