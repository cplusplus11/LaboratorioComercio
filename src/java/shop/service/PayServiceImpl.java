/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.service;

/**
 *
 * @author luis
 */
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import shop.dao.PayDAO;
import shop.entities.Pay;


@Service("payService")
@Transactional
public class PayServiceImpl implements PayService{

    @Autowired
    private PayDAO payDAO;
    
    @Override
    public List<Pay> findAll() {
        return payDAO.findAll();
    }

    @Override
    public Pay find(Integer id) {
        return payDAO.find(id);
    }
   
}
