/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.service;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import shop.dao.ConsumerDAO;
import shop.entities.Consumer;

/**
 *
 * @author Usuario
 */
@Service("consumerService")
@Transactional
public class ConsumerServiceImpl implements ConsumerService{

    @Autowired
    private ConsumerDAO consumerDAO;
    
    @Override
    public void create(Consumer consumer) {
        consumerDAO.create(consumer);
    }

       
}
