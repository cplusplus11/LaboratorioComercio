<%-- 
    Document   : index
    Created on : 27/07/2017, 07:50:15 PM
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
                <li>Carrito de pedidos</li>
            </ul>
        </div>

        <div class="col-md-9" id="basket">

            <div class="box">

                <p class="danger"><font color="red">${error}</font></p>
                        <s:form method="post" commandName="consumer" 
                                action="${pageContext.request.contextPath }/cart/registerPedido.htm">

                    <h1>Carrito de pedido</h1>
                    <p class="text-muted">Usted tiene ${sessionScope.cart != null ? sessionScope.cart.size() : 0 } tipo(s) de producto(s) en su carrito.</p>
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
                                        <input class="invisible" value="${item.quantity}" id="contador" name="contador">
                                        <td>
                                            S./${item.product.price}
                                        </td>
                                        <td>S./0.00</td>
                                        <td><span>S./${item.product.price * item.quantity}</span></td>
                                  
                                        <td><a href="${pageContext.request.contextPath}/cart/delete/${i.index}.htm"><i class="fa fa-trash-o"></i></a>
                                        </td>
                                    </tr>
                                    
                                </c:forEach>

                            </tbody>
                            <tfoot>
                                <tr>
                                    <th colspan="5">Total ${cont}</th>
                                    <th colspan="2">S./${s}
                                        
                                    </th>
                                    <input class="invisible" value="${s}" id="totalPrecio" name="totalPrecio">
                                </tr>
                            </tfoot>
                        </table>

                    </div>
                    <!-- /.table-responsive -->

                    <div class="box-footer">
                        <div class="pull-left">
                            <a href="${pageContext.request.contextPath}/home.htm" class="btn btn-default"><i class="fa fa-chevron-left"></i> Continuar comprando</a>
                        </div>

                            <div class="pull-right">
                                <a href="${pageContext.servletContext.contextPath }/cart.htm" class="btn btn-default"><i class="fa fa-refresh"></i> Actualizar</a>
                                <button type="submit" class="btn btn-primary">Continuar<i class="fa fa-chevron-right"></i>
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


            <div class="box">
                <div class="box-header">
                    <h4>Coupon code</h4>
                </div>
                <p class="text-muted">If you have a coupon code, please enter it in the box below.</p>
                <form>
                    <div class="input-group">

                        <input class="form-control" type="text">

                        <span class="input-group-btn">

                            <button class="btn btn-primary" type="button"><i class="fa fa-gift"></i></button>

                        </span>
                    </div>
                    <!-- /input-group -->
                </form>
            </div>

        </div>
        <!-- /.col-md-3 -->

    </div>
    <!-- /.container -->
</div>