package shop.entities;
// Generated 03/08/2017 12:24:02 PM by Hibernate Tools 4.3.1


import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

/**
 * Shipping generated by hbm2java
 */
public class Shipping  implements java.io.Serializable {


     private Integer id;
     private String name;
     private BigDecimal price;
     private String description;
     private Set orders = new HashSet(0);

    public Shipping() {
    }

    public Shipping(String name, BigDecimal price, String description, Set orders) {
       this.name = name;
       this.price = price;
       this.description = description;
       this.orders = orders;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public BigDecimal getPrice() {
        return this.price;
    }
    
    public void setPrice(BigDecimal price) {
        this.price = price;
    }
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    public Set getOrders() {
        return this.orders;
    }
    
    public void setOrders(Set orders) {
        this.orders = orders;
    }




}


