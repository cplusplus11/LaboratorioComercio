<%-- 
    Document   : checkout4
    Created on : 30/07/2017, 12:36:57 AM
    Author     : Usuario
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
                        <li>Revision de Orden</li>
                    </ul>
                </div>

                <div class="col-md-9" id="checkout">

                    <div class="box">
                        <p class="danger"><font color="red">${error}</font></p>
                        <s:form method="post" commandName="pay" 
                        action="${pageContext.request.contextPath }/cart/registerOrder.htm">
                            <h1>Revision de Orden</h1>
                            <ul class="nav nav-pills nav-justified">
                                <li><a href="checkout1.html"><i class="fa fa-map-marker"></i><br>Datos</a>
                                </li>
                                <li><a href="checkout2.html"><i class="fa fa-truck"></i><br>Metodo de Envio</a>
                                </li>
                                <li><a href="checkout3.html"><i class="fa fa-money"></i><br>Metodo de Pago</a>
                                </li>
                                <li class="active"><a href="#"><i class="fa fa-eye"></i><br>Orden</a>
                                </li>
                            </ul>

                            <div class="content">
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
                                                
                                                <td>${item.quantity}</td>
                                                <td>S./${item.product.price}</td>
                                                <td>$0.00</td>
                                                <td><span>S./${item.product.price * item.quantity}</span></td>
                                            </tr>
                                        </c:forEach>    
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th colspan="5">Total</th>
                                                <th>S./${s}</th>
                                            </tr>
                                        </tfoot>
                                    </table>

                                </div>
                                <!-- /.table-responsive -->
                            </div>
                            <!-- /.content -->

                            <div class="box-footer">
                                <div class="pull-left">
                                    <a href="${pageContext.servletContext.contextPath }/consumer/registerConsumer.htm" class="btn btn-default"><i class="fa fa-chevron-left"></i>Volver</a>
                                </div>
                                <div class="pull-right">
                                    <button type="submit" class="btn btn-primary">Confirmar<i class="fa fa-check"></i>
                                    </button>
                                </div>
                            </div>
                        </s:form>
                    </div>
                    <!-- /.box -->


                </div>
                <!-- /.col-md-9 -->

                <div class="col-md-3">

                    <div class="box" id="order-summary">

                <h3 align='center'>Resumen</h3>
                <p align='justify' class="text-muted">Al continuar con la compra usted esta aceptando los <a href="#">Terminos y condiciones</a>.</p>

                <div class="table-responsive">
                    <table class="table">
                        <tbody>
                            <tr>
                                <td>Subtotal</td>
                                <th>S./${s}</th>
                            </tr>
                            <tr>
                                <td>Costo de envio</td>
                                <th>S./0.00</th>
                            </tr>
                            <tr>
                                <td>Impuestos</td>
                                <th>$0.00</th>
                            </tr>
                            <tr class="total">
                                <td>Total</td>
                                <th>S./${s}</th>
                            </tr>
                        </tbody>
                    </table>
                </div>

            </div>

                </div>
                <!-- /.col-md-3 -->

            </div>
            <!-- /.container -->
        </div>