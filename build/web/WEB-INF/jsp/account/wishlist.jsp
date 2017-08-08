<%-- 
    Document   : wishlist
    Created on : 07/08/2017, 10:09:39 PM
    Author     : luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!--  foreach -->
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %> <!--  form -->
<script src="${pageContext.servletContext.contextPath }/assets/js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script language="javascript">
function contador()
{
var total = 0;
var contador = parseInt($('#contador').val());
var valor2 = parseInt($('#cantidad').val());


var total = document.getElementById("total");
total.innerHTML = valor1 * valor2;
}
</script>
<div id="content">
            <div class="container">

                <div class="col-md-12">

                    <ul class="breadcrumb">
                        <li><a href="${pageContext.request.contextPath}/home.htm">Inicio</a>
                        </li>
                        <li>Mi lista de deseos</li>
                    </ul>

                </div>

                <div class="col-md-3">
                    <!-- *** CUSTOMER MENU ***
 _________________________________________________________ -->
                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Seccion del Consumidor</h3>
                        </div>

                        <div class="panel-body">

                            <ul class="nav nav-pills nav-stacked">
                                <li>
                                    <a href="#"><i class="fa fa-list"></i> Mis Ordenes</a>
                                </li>
                                <li class="active">
                                    <a href="#"><i class="fa fa-heart"></i> Mi lista de deseos</a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-user"></i> Mi cuenta</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/account/logout.htm"><i class="fa fa-sign-out"></i> Salir</a>
                                </li>
                            </ul>
                        </div>

                    </div>
                    <!-- /.col-md-3 -->

                    <!-- *** CUSTOMER MENU END *** -->
                </div>

                <div class="col-md-9" id="wishlist">

                    <ul class="breadcrumb">
                        <li><a href="#">Home</a>
                        </li>
                        <li>Ladies</li>
                    </ul>

                    <div class="box">
                        <h1>My wishlist</h1>
                        <p class="lead">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
                    </div>

                    <div class="row products">

                        <!--<div class="col-md-3 col-sm-4">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="img/product1.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/product1_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/product1.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Fur coat with very but very very long name</a></h3>
                                    <p class="price">$143.00</p>
                                    <p class="buttons">
                                        <a href="detail.html" class="btn btn-default">View detail</a>
                                        <a href="basket.html" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                    </p>
                                </div>
                            
                            </div>
                            
                        </div>-->

                        <table class="table">
                            <thead>
                                <tr>

                                    <th colspan="2">Producto</th>
                                    <th>Borrar</th>
                                    <th>Agregar</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                
                                <c:set var="s" value="0"></c:set>
                                
                                <c:forEach var="item" items="${sessionScope.wish}" varStatus="i">
                                    <c:set var="s" value="${s + item.product.price * item.quantity}"></c:set>
                                        <tr>

                                            <td>
                                                <a href="${pageContext.request.contextPath}/product/detail/${item.product.id}.htm">
                                                <img src="${pageContext.servletContext.contextPath }/assets/img/${item.product.photo}" alt="White Blouse Armani">
                                               </a>
                                            </td>
                                        <td><a href="${pageContext.request.contextPath}/product/detail/${item.product.id}.htm">${item.product.name}</a>
                                        </td>
                                        
                                        <td><a href="#"><i class="fa fa-trash-o"></i></a>
                                        </td>
                                        <td><a href="#"><i class="fa fa-list"></i></a>
                                        </td>
                                    </tr>
                                    
                                </c:forEach>

                            </tbody>
                            <tfoot>
                                
                            </tfoot>
                        </table>                        

                    </div>
                    <!-- /.products -->

                </div>
            </div>
            <!-- /.container -->
        </div>