/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.service;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import shop.dao.AccountDAO;
import shop.entities.Account;

/**
 *
 * @author luis
 */
@Service("accountService")
@Transactional
public class AccountServiceImpl implements AccountService{
    
    @Autowired
    private AccountDAO accountDAO;

    @Override
    public void create(Account account) {
        accountDAO.create(account);
    }

    @Override
    public Account login(String name, String password) {
        return accountDAO.login(name, password);
    }

    @Override
    public Account find(String name) {
       return accountDAO.find(name); 
    }
    
    
    
}
