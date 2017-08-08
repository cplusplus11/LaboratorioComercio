<%-- 
    Document   : contact
    Created on : 04/08/2017, 01:32:21 AM
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
                        <li>Contacto</li>
                    </ul>

                </div>

                <div class="col-md-12">


                    <div class="box" id="contact">
                        <h1>Contacto</h1>

                        <p class="lead">Tienes alguna curiosidad sobre algo, alguna pregunta sobre algun producto?</p>
                        <p>Porfavor sientete libre de preguntar, nuestro servicio de atención se encuentra 24/7.</p>

                        <hr>

                        <div class="row">
                            <div class="col-sm-4">
                                <h3><i class="fa fa-map-marker"></i> Dirección</h3>
                                <p>Asociación de Artesanos 
                                    <br>Jr. las Dalias N.385 
                                    <br>Miraflores
                                    <br>San Juan Bautista, Ayacucho
                                    <br>
                                    <strong>Perú</strong>
                                </p>
                            </div>
                            <!-- /.col-sm-4 -->
                            <div class="col-sm-4">
                                <h3><i class="fa fa-phone"></i> Contactos</h3>
                                <p class="text-muted">Numero de contacto y comunicaciones.</p>
                                <p><strong>Cel: +51-966642075</strong>
                                <br>RPM: *935116
                                
                                </p>
                            </div>
                            <!-- /.col-sm-4 -->
                            <div class="col-sm-4">
                                <h3><i class="fa fa-envelope"></i> Soporte</h3>
                                <p class="text-muted">Porfavor mandenos un email sobre alguna duda.</p>
                                <ul>
                                    <li><strong><a href="mailto:">hojalater@live.com</a></strong>
                                    </li>
                                    
                                </ul>
                            </div>
                            <!-- /.col-sm-4 -->
                        </div>
                        <!-- /.row -->

                        <hr>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1942.4645229236703!2d-74.22512161517655!3d-13.166873684590792!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf61184cc3589324d!2sMunicipalidad+Distrital+de+San+Juan+Bautista!5e0!3m2!1ses!2spe!4v1502161300688" width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
                        <hr>
                        <h2>Formulario de Contacto</h2>

                        <form>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="firstname">Nombre</label>
                                        <input class="form-control" id="firstname" type="text">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="lastname">Apellido</label>
                                        <input class="form-control" id="lastname" type="text">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <input class="form-control" id="email" type="text">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="subject">Tema</label>
                                        <input class="form-control" id="subject" type="text">
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="message">Mensaje</label>
                                        <textarea id="message" class="form-control"></textarea>
                                    </div>
                                </div>

                                <div class="col-sm-12 text-center">
                                    <button type="submit" class="btn btn-primary"><i class="fa fa-envelope-o"></i> Enviar Mensaje</button>

                                </div>
                            </div>
                            <!-- /.row -->
                        </form>


                    </div>


                </div>
                <!-- /.col-md-9 -->
            </div>
            <!-- /.container -->
        </div>