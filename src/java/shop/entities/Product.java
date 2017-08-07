package shop.entities;
// Generated 03/08/2017 12:24:02 PM by Hibernate Tools 4.3.1


import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

/**
 * Product generated by hbm2java
 */
public class Product  implements java.io.Serializable {


     private int id;
     private Category category;
     private Partner partner;
     private String name;
     private BigDecimal price;
     private Integer quantity;
     private String description;
     private String photo;
     private String photo02;
     private Boolean feature;
     private Set orderdetails = new HashSet(0);

    public Product() {
    }

	
    public Product(int id) {
        this.id = id;
    }
    public Product(int id, Category category, Partner partner, String name, BigDecimal price, Integer quantity, String description, String photo, String photo02, Boolean feature, Set orderdetails) {
       this.id = id;
       this.category = category;
       this.partner = partner;
       this.name = name;
       this.price = price;
       this.quantity = quantity;
       this.description = description;
       this.photo = photo;
       this.photo02 = photo02;
       this.feature = feature;
       this.orderdetails = orderdetails;
    }
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public Category getCategory() {
        return this.category;
    }
    
    public void setCategory(Category category) {
        this.category = category;
    }
    public Partner getPartner() {
        return this.partner;
    }
    
    public void setPartner(Partner partner) {
        this.partner = partner;
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
    public Integer getQuantity() {
        return this.quantity;
    }
    
    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    public String getPhoto() {
        return this.photo;
    }
    
    public void setPhoto(String photo) {
        this.photo = photo;
    }
    public String getPhoto02() {
        return this.photo02;
    }
    
    public void setPhoto02(String photo02) {
        this.photo02 = photo02;
    }
    public Boolean getFeature() {
        return this.feature;
    }
    
    public void setFeature(Boolean feature) {
        this.feature = feature;
    }
    public Set getOrderdetails() {
        return this.orderdetails;
    }
    
    public void setOrderdetails(Set orderdetails) {
        this.orderdetails = orderdetails;
    }




}


