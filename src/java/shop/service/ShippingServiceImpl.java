/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.service;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import shop.dao.ShippingDAO;
import shop.entities.Shipping;

/**
 *
 * @author luis
 */
@Service("shippingService")
@Transactional
public class ShippingServiceImpl implements ShippingService {

    @Autowired
    private ShippingDAO shippingDAO;
    
    @Override
    public List<Shipping> findAll() {
        return shippingDAO.findAll();
    }

    @Override
    public Shipping find(Integer id) {
        return shippingDAO.find(id);
        
    }
    
}
