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
import shop.entities.Orderdetail;

/**
 *
 * @author luis
 */
@Repository("orderDetailDAO")
public class OrderDetailDAOImpl implements OrderDetailDAO{
    
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void create(Orderdetail orderdetail) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.save(orderdetail);
        transaction.commit();
        session.close();
    }
    
}
