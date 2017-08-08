/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import shop.entities.Account;
import shop.entities.Consumer;
import shop.entities.Item;
import shop.entities.Order;
import shop.entities.Orderdetail;
import shop.entities.Pay;
import shop.entities.Shipping;
import shop.service.AccountService;
import shop.service.ConsumerService;
import shop.service.OrderDetailService;
import shop.service.OrderService;
import shop.service.PayService;
import shop.service.ProductService;
import shop.service.ShippingService;

/**
 *
 * @author luis
 */
@Controller
@RequestMapping("/cart")
public class CartController {
    
    @Autowired
    private ProductService productService;
    
    @Autowired
    private ConsumerService consumerService;
    
    @Autowired
    private ShippingService shippingService;
    
    @Autowired
    private AccountService accountService;
    
    @Autowired
    private PayService payService;
    
    @Autowired
    private OrderService orderService;
    
    @Autowired
    private OrderDetailService orderDetailService;
    
    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap modelMap){
        modelMap.put("title","Cart");
        modelMap.put("action","cart");
        
        return "cart.index";
    }
    

    @RequestMapping(value = "buy/{id}", method = RequestMethod.GET)
    public String buy(@PathVariable("id") int id, HttpSession session, ModelMap modelMap){
        modelMap.put("title","Cart");
        if(session.getAttribute("cart")==null){
            List<Item> cart = new ArrayList<Item>();
            cart.add(new Item(productService.find(id),1));
            session.setAttribute("cart", cart);
        }else{
            List<Item> cart = (List<Item>)session.getAttribute("cart");
            int index = isExists(id, session);
            if(index == -1){
                cart.add(new Item(productService.find(id), 1));
            }else{
                int quantity = cart.get(index).getQuantity() +1 ;
                cart.get(index).setQuantity(quantity);
                session.setAttribute("cart", cart);
            }
            session.setAttribute("cart", cart);
        }
        return "cart.index";
    }
    
    @RequestMapping(value = "delete/{index}", method = RequestMethod.GET)
    public String delete(@PathVariable("index") int index, HttpSession session){
        List<Item> cart = (List<Item>) session.getAttribute("cart");
        cart.remove(index);
        session.setAttribute("cart", cart);
        return "redirect:/cart.htm";
    }
    
    private int isExists(int id, HttpSession session){
        List<Item> cart = (List<Item>)session.getAttribute("cart");
        for(int i = 0; i < cart.size(); i++){
            if(cart.get(i).getProduct().getId() == id){
                return i;
            }    
        } 
        return -1;
    }
    
        @RequestMapping(value = "wish/{id}", method = RequestMethod.GET)
    public String wishlist(@PathVariable("id") int id, HttpSession session, ModelMap modelMap){
        modelMap.put("title","Wish List");
        if(session.getAttribute("wish")==null){
            List<Item> wish = new ArrayList<Item>();
            wish.add(new Item(productService.find(id),1));
            session.setAttribute("wish", wish);
        }else{
            List<Item> wish = (List<Item>)session.getAttribute("wish");
            int index = isExistswish(id, session);
            if(index == -1){
                wish.add(new Item(productService.find(id), 1));
            }else{
                int quantity = wish.get(index).getQuantity() +1 ;
                wish.get(index).setQuantity(quantity);
                session.setAttribute("wish", wish);
            }
            session.setAttribute("wish", wish);
        }
        return "account.wishlist";
    }
    
    /*@RequestMapping(value = "deletewish/{index}", method = RequestMethod.GET)
    public String deletewish(@PathVariable("index") int index, HttpSession session){
        List<Item> wish = (List<Item>) session.getAttribute("wish");
        wish.remove(index);
        session.setAttribute("wish", wish);
        return "redirect:/wish2.htm";
    } */
    
    private int isExistswish(int id, HttpSession session){
        List<Item> wish = (List<Item>)session.getAttribute("wish");
        for(int i = 0; i < wish.size(); i++){
            if(wish.get(i).getProduct().getId() == id){
                return i;
            }    
        } 
        return -1;
    }
    
    // para mandar al checkout1 - pedido
    @RequestMapping(value = "registerPedido", method = RequestMethod.GET)
    public String registerPerdido(ModelMap modelMap) {
        modelMap.put("title", "Pedido");
        modelMap.put("accion", "registerPedido");
        modelMap.put("consumer", new Consumer());
        return "cart.checkout1";
    }
    
    
    // para mandar al checkout1 - pedido
    @RequestMapping(value = "registerPedido", method = RequestMethod.POST)
    public String registerPedido(@ModelAttribute("consumer") Consumer consumer, ModelMap modelMap, HttpServletRequest request,
            HttpSession session) {
        modelMap.put("title", "Register Consumer");
        modelMap.put("action", "registerConsumer");
        
        
        try {
            HttpSession sesion = request.getSession();
            // Valida si el usuario esta logeado
            if (sesion.getAttribute("username")!=null) {
                
                // almacena datos en sesion
                sesion.setAttribute("totalPrecio", request.getParameter("totalPrecio"));
                
                // envia al checkout2 lista de metodos de envio
                //modelMap.put("listShipping", shippingService.findAll());
               
                return "cart.checkout1";

            } else {
                
                return "account.ingresar";
            }

        } catch (Exception e) {
            modelMap.put("error", "error catch");
            return "cart.index";
        }
    }
    
    // para el mandar al checkout2 - Datos 
    @RequestMapping(value = "registerConsumer", method = RequestMethod.GET)
    public String checkout1(ModelMap modelMap) {
        modelMap.put("title", "Checkout1");
        modelMap.put("accion", "registerConsumer");
        modelMap.put("consumer", new Consumer());
        return "cart.checkout1";
    }
    
    // para mandar al checkout2 - Datos, almacena atributos del consumer en una sesion
    @RequestMapping(value = "registerConsumer", method = RequestMethod.POST)
    public String registerConsumer(@ModelAttribute("consumer") Consumer consumer, ModelMap modelMap, HttpServletRequest request,
            HttpSession session) {
        modelMap.put("title", "Register Consumer");
        modelMap.put("action", "registerConsumer");
        
        try {
            
            HttpSession sesion = request.getSession();
            String username = sesion.getAttribute("username").toString();
            
            // Valida si el usuario esta logeado
            Account account = null;
            account= this.accountService.find(username);
                        
            if (account != null) {
                
                // almacena datos en sesion
                sesion.setAttribute("firstname", request.getParameter("firstname"));
                sesion.setAttribute("lastname", request.getParameter("lastname"));
                sesion.setAttribute("address", request.getParameter("address"));
                sesion.setAttribute("telephone", request.getParameter("telephone"));
                sesion.setAttribute("email", request.getParameter("email"));
                sesion.setAttribute("country", request.getParameter("country"));
                sesion.setAttribute("city", request.getParameter("city"));
                
                // envia al checkout2 lista de metodos de envio
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
    
    // para mandar al  checkout3 - Metodo de envio
    @RequestMapping(value = "registerShipping", method = RequestMethod.GET)
    public String checkout2(ModelMap modelMap) {
        modelMap.put("title", "Register Shipping");
        modelMap.put("accion", "registerShipping");
        modelMap.put("shipping", new Shipping());
        return "cart.checkout2";
    }
    
    // para mandar al checkout3 - Metodo de envio, almacenamiento del tipo de envio en sesion
        @RequestMapping(value = "registerShipping", method = RequestMethod.POST)
    public String registerShipping(@ModelAttribute("shipping") Shipping shipping, ModelMap modelMap, HttpServletRequest request,
            HttpSession session) {
        modelMap.put("title", "Register Shipping");
        modelMap.put("action", "registerShipping");
        
        try {
            
            HttpSession sesion = request.getSession();
            String username = sesion.getAttribute("username").toString();
            
            // comprueba si el usuario esta logeado
            Account account = null;
            account= this.accountService.find(username);
                        
            if (account != null) {
                
                // almacena el idShipping en una sesion y envia la lista de metodos
                // de pago a la vista checkout3
                sesion.setAttribute("idShipping", request.getParameter("idShipping"));
                modelMap.put("listPay", payService.findAll());
                return "cart.checkout3";

            } else {
                modelMap.put("error", "Error else ShippingController");
                return "cart.checkout2";
            }

        } catch (Exception e) {
            modelMap.put("error", "Error catch ShippingController");
            return "cart.checkout2";
        }

    }
    
    // para mandar al checkout4 - Metodo de pago
    @RequestMapping(value = "registerPay", method = RequestMethod.GET)
    public String Pay(ModelMap modelMap) {
        modelMap.put("title", "Register Pay");
        modelMap.put("accion", "registerPay");
        modelMap.put("pay", new Pay());
        return "cart.checkout3";
    }

    // para mandar al checkout4 - Metodo de pago, almacenamiento del tipo depago en sesion
    @RequestMapping(value = "registerPay", method = RequestMethod.POST)
    public String registerPay(@ModelAttribute("pay") Pay pay, ModelMap modelMap, HttpServletRequest request,
            HttpSession session) {
        modelMap.put("title", "Register Pay");
        modelMap.put("action", "registerPay");
        
        try {
            
            HttpSession sesion = request.getSession();
            String username = sesion.getAttribute("username").toString();
            
            // verifica si el usuario esta logeado
            Account account = null;
            account= this.accountService.find(username);
                        
            if (account != null) {
                
                // almacena el metodo de pago en session y redirecciona a vista orden
                sesion.setAttribute("idPay", request.getParameter("idPay"));
                return "cart.checkout4";

            } else {
                modelMap.put("error", "Los datos ya existen");
                return "cart.checkout3";
            }

        } catch (Exception e) {
            modelMap.put("error", "error catch");
            return "cart.checkout3";
        }

    }
    
    
    // para mandar al consumer-order - Revision de orden
    @RequestMapping(value = "registerOrder", method = RequestMethod.GET)
    public String Order(ModelMap modelMap) {
        modelMap.put("title", "Register Pay");
        modelMap.put("accion", "registerPay");
        modelMap.put("order", new Pay());
        return "cart.consumer-order";
    }
    
    // para mandar al consumer-order- Revision de orden
    @RequestMapping(value = "registerOrder", method = RequestMethod.POST)
    public String registerOrder(@ModelAttribute("order") Order order, ModelMap modelMap, HttpServletRequest request,
            HttpSession session) {
        modelMap.put("title", "Register Order");
        modelMap.put("action", "registerOrder");
        HttpSession sesion = request.getSession();
            
            Consumer consumer = new Consumer();
        try {
            
            // verifica si el usuario esta logeado
            String username = sesion.getAttribute("username").toString();
            Account account = null;
            account= this.accountService.find(username);
            
            if (account != null) {
                
                // recoge los datos del consumidor que se guardaron en sesion
                consumer.setFirstname(sesion.getAttribute("firstname").toString());
                consumer.setLastname(sesion.getAttribute("lastname").toString());
                consumer.setAddress(sesion.getAttribute("address").toString());
                consumer.setTelephone(sesion.getAttribute("telephone").toString());
                consumer.setEmail(sesion.getAttribute("email").toString());
                consumer.setCountry(sesion.getAttribute("country").toString());
                consumer.setCity(sesion.getAttribute("city").toString());
                consumer.setAccount(account);
                
                // crea un objeto de tipo consumidor
                consumerService.create(consumer);
                
                // recoge el idShipping de la sesion 
                int idShipping = Integer.parseInt(sesion.getAttribute("idShipping").toString());
                // recoge el idPay de la sesion 
                int idPay = Integer.parseInt(sesion.getAttribute("idPay").toString());
                
                // Busca el 2 objetos en la bd de las tablas shipping y pay
                Shipping shipping = this.shippingService.find(idShipping);
                Pay pay = this.payService.find(idPay); 
                
                // crea una orden
                order.setNumber(null);
                
                //fecha
                Calendar fecha = new GregorianCalendar();
                order.setFecha(fecha.getTime());
                order.setShipping(shipping);
                order.setPay(pay);
                order.setConsumer(consumer);
                orderService.create(order);
                
                // crear orden detalle
                Orderdetail orderDetail = new Orderdetail();
                orderDetail.setOrder(order);
                orderDetail.setProduct(null);
                orderDetail.setPrice(Float.parseFloat(sesion.getAttribute("totalPrecio").toString()));
                orderDetail.setQuantity(null);
                
                orderDetailService.create(orderDetail);
                
                // mapear
                modelMap.put("shipping", shipping);
                modelMap.put("pay", pay);
                modelMap.put("consumer", consumer);
                modelMap.put("order", order);
                return "cart.consumer-order";

            } else {
                modelMap.put("error", "Error else ordercontroller");
                return "cart.checkout4";
            }

        } catch (Exception e) {
            modelMap.put("error", e.getMessage()  + " ademas " + e + " " + sesion.getAttribute("username").toString());
            return "cart.checkout4";
        }

    }
    
    
}