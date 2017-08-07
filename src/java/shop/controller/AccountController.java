/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import shop.entities.Account;
import shop.entities.Consumer;
import shop.service.AccountService;

/**
 *
 * @author Luis
 */
@Controller
@RequestMapping("/account")
public class AccountController {

    @Autowired
    private AccountService accountService;

    @RequestMapping(value = "ingresar", method = RequestMethod.GET)
    public String myaccount(ModelMap modelMap) {
        modelMap.put("title", "Ingresar");
        modelMap.put("action", "ingresar");
        return "account.ingresar";
    }

    @RequestMapping(value = "ingresar", method = RequestMethod.POST)
    public String myaccount(HttpServletRequest request, HttpSession session, ModelMap modelMap) {
        modelMap.put("title", "Ingresar");
        Account account = this.accountService.login(request.getParameter("username"), request.getParameter("password"));
        if (account != null) {
            session.setAttribute("username", request.getParameter("username"));
            return "account.welcome";
        } else {
            modelMap.put("error", "Usuario y/o password incorrecto.");
            return "account.ingresar";
        }
    }

    @RequestMapping(value = "register", method = RequestMethod.GET)
    public String register(ModelMap modelMap) {
        modelMap.put("title", "Register");
        modelMap.put("action", "register");
        modelMap.put("account", new Account());
        return "account.registrar";
    }

    @RequestMapping(value = "register", method = RequestMethod.POST)
    public String register(@ModelAttribute("account") Account account, ModelMap modelMap) {
        modelMap.put("title", "Register");
        modelMap.put("action", "register");
        try {
            accountService.create(account);
            return "home.index";
        } catch (Exception e) {
            modelMap.put("error", "No puede registrar nueva cuenta.");
            return "account.registrar";
        }
    }

    // logout
    @RequestMapping(value = "logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {
        session.removeAttribute("username");
        return "redirect:/home.htm";
    }
    
    
}
