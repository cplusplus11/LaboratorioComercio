/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.service;

import java.util.List;
import shop.entities.Category;

/**
 *
 * @author luis
 */
public interface CategoryService {
    public List<Category> findAll();
    public Category find(Integer id);
}
