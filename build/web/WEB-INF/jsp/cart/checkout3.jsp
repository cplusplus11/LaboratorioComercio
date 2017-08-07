<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!--  foreach -->
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %> <!--  form -->
<div id="content">
    
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="${pageContext.request.contextPath}/home.htm">Inicio</a>
                        </li>
                        <li>Metodo de pago</li>
                    </ul>
                </div>

                <div class="col-md-9" id="checkout">

                    <div class="box">
                        <p class="danger"><font color="red">${error}</font></p>
                        <s:form method="post" commandName="shipping" 
                        action="${pageContext.request.contextPath }/cart/registerPay.htm">
                            <h1>Metodo de pago</h1>
                            <ul class="nav nav-pills nav-justified">
                                <li><a href="checkout1.html"><i class="fa fa-map-marker"></i><br>Datos</a>
                                </li>
                                <li><a href="checkout2.html"><i class="fa fa-truck"></i><br>Metodo de Envio</a>
                                </li>
                                <li class="active"><a href="#"><i class="fa fa-money"></i><br>Metdo de Pago</a>
                                </li>
                                <li class="disabled"><a href="checkout4.html"><i class="fa fa-eye"></i><br>Orden</a>
                                </li>
                            </ul>

                            <div class="content">
                                <div class="row">
                                    <p class="danger"><font color="red">${error}</font></p>
                                    <!--<c:forEach var="pay" items="${listPay}">
                                    <div class="col-sm-6">
                                        <div class="box shipping-method">

                                            <h4>${pay.name}</h4>

                                            <div class="box-footer text-center">
                                                
                                                <input type="radio" name="idPay" id="idPay" value="${pay.id}">
                                            </div>
                                        </div>
                                    </div>
                                    </c:forEach>-->
                                    <c:forEach var="pay" items="${listPay}" >
                                        <div class="col-sm-6">
                                        <div class="box shipping-method">

                                            <h4>${pay.name}</h4>
                                        
                                        <div class="box-footer text-center">
                                        <input type="radio" name="idPay" value="${pay.id}"/>
                                        </div>
                                        </div>
                                    </div>
                                        
                                    </c:forEach>
                                </div>
                                <!-- /.row -->

                            </div>
                            <!-- /.content -->

                            <div class="box-footer">
                                <div class="pull-left">
                                    <a href="${pageContext.servletContext.contextPath }/consumer/registerConsumer.htm" class="btn btn-default"  ><i class="fa fa-chevron-left"></i>Volver</a>
                                </div>
                                <div class="pull-right">
                                    <button type="submit" class="btn btn-primary">Continuar a la orden<i class="fa fa-chevron-right"></i>
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
                        <div class="box-header">
                            <h3>Order summary</h3>
                        </div>
                        <p class="text-muted">Shipping and additional costs are calculated based on the values you have entered.</p>

                        <div class="table-responsive">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <td>Order subtotal</td>
                                        <th>$446.00</th>
                                    </tr>
                                    <tr>
                                        <td>Shipping and handling</td>
                                        <th>$10.00</th>
                                    </tr>
                                    <tr>
                                        <td>Tax</td>
                                        <th>$0.00</th>
                                    </tr>
                                    <tr class="total">
                                        <td>Total</td>
                                        <th>$456.00</th>
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
