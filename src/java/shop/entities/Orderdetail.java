package shop.entities;
// Generated 03/08/2017 12:24:02 PM by Hibernate Tools 4.3.1



/**
 * Orderdetail generated by hbm2java
 */
public class Orderdetail  implements java.io.Serializable {


     private Integer id;
     private Order order;
     private Product product;
     private Float price;
     private Integer quantity;

    public Orderdetail() {
    }

    public Orderdetail(Order order, Product product, Float price, Integer quantity) {
       this.order = order;
       this.product = product;
       this.price = price;
       this.quantity = quantity;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Order getOrder() {
        return this.order;
    }
    
    public void setOrder(Order order) {
        this.order = order;
    }
    public Product getProduct() {
        return this.product;
    }
    
    public void setProduct(Product product) {
        this.product = product;
    }
    public Float getPrice() {
        return this.price;
    }
    
    public void setPrice(Float price) {
        this.price = price;
    }
    public Integer getQuantity() {
        return this.quantity;
    }
    
    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }




}


