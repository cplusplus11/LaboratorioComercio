/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.service;

import java.util.List;
import shop.entities.Shipping;

/**
 *
 * @author luis
 */
public interface ShippingService {
    public List<Shipping> findAll();
    public Shipping find(Integer id);
}
