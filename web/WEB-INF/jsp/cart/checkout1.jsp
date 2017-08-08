<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!--  foreach -->
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %> <!--  form -->
<div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="${pageContext.request.contextPath}/home.htm">Inicio</a>
                        </li>
                        <li>Checkout - Address</li>
                    </ul>
                </div>

                <div class="col-md-9" id="checkout">

                    <div class="box">
                        <p class="danger"><font color="red">${error}</font></p>
                        <s:form method="post" commandName="consumer" 
                        action="${pageContext.request.contextPath }/cart/registerConsumer.htm">
                            <h1>Datos</h1>
                            <ul class="nav nav-pills nav-justified">
                                <li class="active"><a href="#"><i class="fa fa-map-marker"></i><br>Datos</a>
                                </li>
                                <li class="disabled"><a href="#"><i class="fa fa-truck"></i><br>Metodo de Envio</a>
                                </li>
                                <li class="disabled"><a href="#"><i class="fa fa-money"></i><br>Metodo de Pago</a>
                                </li>
                                <li class="disabled"><a href="#"><i class="fa fa-eye"></i><br>Orden</a>
                                </li>
                            </ul>

                            <div class="content">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="firstname">Nombre(s)</label>
                                            <s:input path="firstname" class="form-control" id="firstname" type="text" ></s:input>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="lastname">Apellido(s)</label>
                                            <s:input path="lastname" class="form-control" id="lastname" type="text" ></s:input>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.row -->

                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="address">Direccion</label>
                                            <s:input path="address" class="form-control" id="address" type="text" ></s:input>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="telephone">Telefono</label>
                                            <s:input path="telephone" class="form-control" id="telephone" type="text" ></s:input>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.row -->

                                <div class="row">
                                    <div class="col-sm-6 col-md-6">
                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <s:input path="email" class="form-control" id="email" type="text" ></s:input>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-3">
                                        <div class="form-group">
                                            <label>Pais</label>
                                            <select class="form-control" id="contry" name="country">
                                                <option value='Peru'>Peru</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-3">
                                        <label>Ciudad</label>
                                            <select class="form-control" id="city" name="city">
                                                
                                                <option value='Amazonas'>Amazonas</option>
                                                <option value='Ancash'>Ancash</option>
                                                <option value='Apurímac'>Apurímac</option>
                                                <option value='Arequipa'>Arequipa</option>
                                                <option value='Ayacucho'>Ayacucho</option>
                                                <option value='Cajamarca'>Cajamarca</option>
                                                <option value='Cusco'>Cusco</option>
                                                <option value='Huancavelica'>Huancavelica</option>
                                                <option value='Huánuco'>Huánuco</option>
                                                <option value='Ica'>Ica</option>
                                                <option value='Junín'>Junín</option>
                                                <option value='La Libertad'>La Libertad</option>
                                                <option value='Lambayeque'>Lambayeque</option>
                                                <option value='Lima'>Lima</option>
                                                <option value='Loreto'>Loreto</option>
                                                <option value='Madre de Dios'>Madre de Dios</option>
                                                <option value='Moquegua'>Moquegua</option>
                                                <option value='Pasco'>Pasco</option>
                                                <option value='Piura'>Piura</option>
                                                <option value='Puno'>Puno</option>
                                                <option value='San Martín'>San Martín</option>
                                                <option value='Tacna'>Tacna</option>
                                                <option value='Tumbes'>Tumbes</option>
                                                <option value='Ucayali'>Ucayali</option>
                                                
                                            </select>
                                    </div>
                                </div>
                                
                                <!-- /.row -->
                            </div>

                            <div class="box-footer">
                                <div class="pull-left">
                                    <a href="${pageContext.servletContext.contextPath }/cart.htm" class="btn btn-default"><i class="fa fa-chevron-left"></i>Volver a pedidos</a>
                                </div>
                                <div class="pull-right">
                                    <button type="submit" class="btn btn-primary">Continuar metodo de envio<i class="fa fa-chevron-right"></i>
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