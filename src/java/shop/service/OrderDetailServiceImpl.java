/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.service;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import shop.dao.OrderDetailDAO;
import shop.entities.Orderdetail;

/**
 *
 * @author luis
 */
@Service("OrderDetailService")
@Transactional
public class OrderDetailServiceImpl implements OrderDetailService{

    @Autowired
    private OrderDetailDAO orderDetailDAO;
    
    @Override
    public void create(Orderdetail orderdetail) {
        orderDetailDAO.create(orderdetail);
    }
    
}
