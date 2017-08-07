/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import shop.entities.Category;
import shop.service.CategoryService;
import shop.service.ProductService;


/**
 *
 * @author Fredy
 */
@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private CategoryService categoryService;
    
    @Autowired
    private ProductService productService;

    @RequestMapping(value = "category/{id}", method = RequestMethod.GET)
    public String category(@PathVariable("id") Integer id, ModelMap modelMap) {
        Category category = categoryService.find(id);
        modelMap.put("title", "Category products");
        modelMap.put("category", category);
        modelMap.put("products", category.getProducts());
        modelMap.put("action", "list");
        return "product.category";
    }

    @RequestMapping(value = "detail/{id}", method = RequestMethod.GET)
    public String detail(@PathVariable("id") Integer id, ModelMap modelMap) {
        modelMap.put("title", "Product detail");
        modelMap.put("product", productService.find(id));
        return "product.detail";
    }
}
