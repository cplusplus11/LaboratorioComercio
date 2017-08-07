/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import shop.entities.Account;
import shop.entities.Consumer;
import shop.service.AccountService;
import shop.service.ShippingService;

/**
 *
 * @author luis
 */
@Controller
@RequestMapping("/consumer")
public class ConsumerController {

    @Autowired
    private AccountService accountService;
    
    @Autowired
    private ShippingService shippingService;

    @RequestMapping(value = "registerConsumer", method = RequestMethod.GET)
    public String checkout1(ModelMap modelMap) {
        modelMap.put("title", "Checkout1");
        modelMap.put("accion", "registerConsumer");
        modelMap.put("consumer", new Consumer());
        return "cart.checkout1";
    }

    @RequestMapping(value = "registerConsumer", method = RequestMethod.POST)
    public String registerConsumer(@ModelAttribute("consumer") Consumer consumer, ModelMap modelMap, HttpServletRequest request,
            HttpSession session) {
        modelMap.put("title", "Register Consumer");
        modelMap.put("action", "registerConsumer");
        
        try {
            
            HttpSession sesion = request.getSession();
            String username = sesion.getAttribute("username").toString();
        
            Account account = null;
            account= this.accountService.find(username);
                        
            if (account != null) {

                sesion.setAttribute("firstname", request.getParameter("firstname"));
                sesion.setAttribute("lastname", request.getParameter("lastname"));
                sesion.setAttribute("address", request.getParameter("address"));
                sesion.setAttribute("telephone", request.getParameter("telephone"));
                sesion.setAttribute("email", request.getParameter("email"));
                
                
                /*consumer.setFirstname(request.getParameter("firstname"));
                consumer.setLastname(request.getParameter("lastname"));
                consumer.setAddress(request.getParameter("address"));
                consumer.setTelephone(request.getParameter("telephone"));
                consumer.setEmail(request.getParameter("email"));
                consumer.setAccount(account);*/

                //consumerService.create(consumer);
                modelMap.put("listShipping", shippingService.findAll());
                return "cart.checkout2";

            } else {
                modelMap.put("error", "Los datos ya existen");
                return "cart.checkout1";
            }

        } catch (Exception e) {
            modelMap.put("error", "error catch");
            return "cart.checkout1";
        }

    }
    
}
