/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.service;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import shop.dao.OrderDAO;
import shop.entities.Order;

/**
 *
 * @author luis
 */
@Service("OrderService")
@Transactional
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderDAO orderDAO;
    
    @Override
    public void create(Order order) {
        orderDAO.create(order);
    }
    
}
