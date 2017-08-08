<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!--  foreach -->
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %> <!--  form -->
<div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="${pageContext.request.contextPath}/home.htm">Inicio</a>
                        </li>
                        <li>Checkout - Metodo de envio</li>
                    </ul>
                </div>

                <div class="col-md-9" id="checkout">

                    <div class="box">
                        <p class="danger"><font color="red">${error}</font></p>
                        <s:form method="post" commandName="consumer" 
                        action="${pageContext.request.contextPath }/cart/registerShipping.htm">
                            <h1>Metodo de envio</h1>
                            <ul class="nav nav-pills nav-justified">
                                <li><a href="#"><i class="fa fa-map-marker"></i><br>Datos</a>
                                </li>
                                <li class="active"><a href="#"><i class="fa fa-truck"></i><br>Metodo de Envio</a>
                                </li>
                                <li class="disabled"><a href="#"><i class="fa fa-money"></i><br>Metodo de Pago</a>
                                </li>
                                <li class="disabled"><a href="#"><i class="fa fa-eye"></i><br>Orden</a>
                                </li>
                            </ul>

                            <div class="content">
                                <div class="row">
                                    
                                    <c:forEach var="shipping" items="${listShipping}" >
                                        <div class="col-sm-6">
                                        <div class="box shipping-method">

                                            <h4>${shipping.name}</h4>

                                            <p>Precio: S./${shipping.price}</p>
                                            <p>${shipping.description}</p>
                                        
                                        <div class="box-footer text-center">
                                        <input type="radio" name="idShipping" value="${shipping.id}"/>
                                        </div>
                                        </div>
                                    </div>
                                        
                                    </c:forEach> 
                                <!-- /.row -->
                            </div>
                                
                                <!-- /.row -->
                            </div>

                            <div class="box-footer">
                                <div class="pull-left">
                                    <a href="${pageContext.servletContext.contextPath }/consumer/registerConsumer.htm" class="btn btn-default" ><i class="fa fa-chevron-left"></i>Volver</a>
                                </div>
                                <div class="pull-right">
                                    <button type="submit" class="btn btn-primary">Continuar metodo de pago<i class="fa fa-chevron-right"></i>
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