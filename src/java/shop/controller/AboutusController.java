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
import shop.service.ProductService;

@Controller
@RequestMapping("/aboutus")
public class AboutusController {

    @Autowired
    private ProductService productService;
    
    @RequestMapping(value = "misionyvision", method = RequestMethod.GET)
    public String misionyvision(ModelMap modelMap) {
        modelMap.put("title", "Mision y Vision");
        modelMap.put("accion", "misionyvision");
        return "aboutus.misionyvision";
    }
    
    @RequestMapping(value = "presentacion", method = RequestMethod.GET)
    public String presentacion(ModelMap modelMap) {
        modelMap.put("title", "Mision y Vision");
        modelMap.put("accion", "presentacion");
        return "aboutus.presentacion";
    }
    
    
    
}