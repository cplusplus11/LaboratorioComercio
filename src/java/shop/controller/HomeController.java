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
import shop.service.PayService;
import shop.service.ProductService;
import shop.service.ShippingService;

@Controller
@RequestMapping("/home")
public class HomeController {

    @Autowired
    private ProductService productService;
    
        @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
        modelMap.put("title", "Home");
        modelMap.put("accion", "home");
        modelMap.put("productsLatest", productService.latest(10));
        modelMap.put("featuredProducts", productService.featured(2));
        return "home.index";
    }
    
    
}
