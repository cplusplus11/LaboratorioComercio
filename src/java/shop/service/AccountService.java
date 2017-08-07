/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.service;

import shop.entities.Account;

/**
 *
 * @author luis
 */
public interface AccountService {
    public void create(Account account);
    public Account login(String name, String password);
    public Account find(String name);
}
