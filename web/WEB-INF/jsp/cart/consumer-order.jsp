<%-- 
    Document   : consumer-order
    Created on : 03/08/2017, 12:59:26 AM
    Author     : luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!--  foreach -->
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %> <!--  form -->
<div id="content">
            <div class="container">

                <div class="col-md-12">

                    <ul class="breadcrumb">
                        <li><a href="${pageContext.request.contextPath}/home.htm">Inicio</a>
                        </li>
                        <li><a href="#">Mis ordenes</a>
                        </li>
                        <li>Order #00${order.id} </li>
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
                                <li class="active">
                                    <a href="customer-orders.html"><i class="fa fa-list"></i> Mis Ordenes</a>
                                </li>
                                <li>
                                    <a href="customer-wishlist.html"><i class="fa fa-heart"></i> Mi lista de deseos</a>
                                </li>
                                <li>
                                    <a href="customer-account.html"><i class="fa fa-user"></i> Mi cuenta</a>
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

                <div class="col-md-9" id="customer-order">
                    <div class="box">
                        <h1>Order #${order.id} </h1>

                        <p class="lead">Order #${order.id}  fue hecha el <strong>${order.fecha}</strong> y ahora está <strong>en espera</strong>.</p>
                        <p class="text-muted">Si tienes una pregunta, porfavor entra gratis aquí <a href="#">contactanos</a>, nuestro servicio al consumidor está abierto las 24 horas 24/7.</p>

                        <hr>

                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th colspan="2">Producto</th>
                                        <th>Cantidad</th>
                                        <th>Precio unitario</th>
                                        <th>Descuento</th>
                                        <th colspan="2">Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                        <c:set var="s" value="0"></c:set>
                                        <c:forEach var="item" items="${sessionScope.cart}" varStatus="i">
                                        <c:set var="s" value="${s + item.product.price * item.quantity}"></c:set>
                                    <tr>
                                        <td>
                                                <a href="${pageContext.request.contextPath}/product/detail/${item.product.id}.htm">
                                                <img src="${pageContext.servletContext.contextPath }/assets/img/${item.product.photo}" alt="White Blouse Armani">
                                               </a>
                                        </td>
                                        <td><a href="${pageContext.request.contextPath}/product/detail/${item.product.id}.htm">${item.product.name}</a>
                                        </td>
                                        <td>
                                            ${item.quantity}
                                            <label for="cantidad"></label>
                                        </td>
                                        <td>
                                            S./${item.product.price}
                                        </td>
                                        <td>S./0.00</td>
                                        <td><td><span>S./${item.product.price * item.quantity}</span></td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                                <tfoot>
                                    
                                    <tr>
                                        <th colspan="5" class="text-right">Orden subtotal</th>
                                        <th>$446.00</th>
                                    </tr>
                                    <tr>
                                        <th colspan="5" class="text-right">Costo de envio</th>
                                        <th>S./${shipping.price}</th>
                                    </tr>
                                    <tr>
                                        <th colspan="5" class="text-right">Impuestos</th>
                                        <th>S./0.00</th>
                                    </tr>
                                    <tr>
                                        <th colspan="5" class="text-right">Total</th>
                                        <th>S./</th>
                                    </tr>
                                </tfoot>
                            </table>

                        </div>
                        <!-- /.table-responsive -->

                        <div class="row addresses">
                            <div class="col-md-6">
                                <h2>Datos de la compra</h2>
                                <p>${shipping.name}
                                    <br>S./${shipping.price}
                                    <br>${pay.name}
                                    
                            </div>
                            <div class="col-md-6">
                                <h2>Datos del comprador</h2>
                                <p>${consumer.firstname} ${consumer.lastname}
                                    <br>${consumer.address}
                                    <br>${consumer.telephone}
                                    <br>${consumer.email}
                                    
                                
                            </div>
                        </div>

                    </div>
                </div>

            </div>
            <!-- /.container -->
        </div>