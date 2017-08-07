<%-- 
    Document   : index
    Created on : 16/07/2017, 03:31:41 PM
    Author     : luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li ${action eq 'presentacion' ? 'class="active"' : ''}><a href="${pageContext.request.contextPath}/aboutus/presentacion.htm">Nosotros</a></li>
                        
                        <li>Mision y Vision</li>
                    </ul>
                </div>

                <div class="col-md-9">

                    <div class="box" id="text-page">
                        <h1>Misión</h1>

                        <p class="lead" align="justify">La Hojalatería Araujo  busca mejorar la calidad de vida de los productores hojalateros de Ayacucho, en el aspecto social y económico. Desarrollamos objetos de arte para el regalo y decoración de interiores.  Promovemos los valores de la comunidad andina de generosidad y reciprocidad, preservando nuestra herencia cultural y creando productos de extraordinaria belleza que celebran nuestro pasado, presente y futuro.</p>

                        <h1>Visión</h1>

                        <p class="lead" align="justify">La Hojalatería Araujo  busca mejorar la calidad de vida de los productores hojalateros de Ayacucho, en el aspecto social y económico. Desarrollamos objetos de arte para el regalo y decoración de interiores.  Promovemos los valores de la comunidad andina de generosidad y reciprocidad, preservando nuestra herencia cultural y creando productos de extraordinaria belleza que celebran nuestro pasado, presente y futuro.</p>

                        <h1>Objetivos</h1>

                        <p class="lead" align="justify">La Hojalatería Araujo busca mejorar las condiciones de vida de los artesanos (as) de la región Ayacucho.</p>
                        <ul class="lead" >
                            <li>Defender la vida de la hojalatería en Ayacucho.</li>
                            <li>Generar propuestas e iniciativas para el desarrollo de capacidades competitivas de la artesanía.</li>
                            <li>Contribuir al fortalecimiento de la comercialización de la artesanía.</li>
                        </ul>
                        

                    </div>


                </div>
                <!-- /.col-md-9 -->

                <div class="col-md-3">
                    <!-- *** PAGES MENU ***
 _________________________________________________________ -->
                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Pages</h3>
                        </div>

                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked">
                                <li>
                                    <a href="text.html">Text page</a>
                                </li>
                                <li>
                                    <a href="contact.html">Contact page</a>
                                </li>
                                <li>
                                    <a href="faq.html">FAQ</a>
                                </li>

                            </ul>

                        </div>
                    </div>

                    <!-- *** PAGES MENU END *** -->


                    <div class="banner">
                        <a href="#">
                            <img src="img/banner.jpg" alt="sales 2014" class="img-responsive">
                        </a>
                    </div>
                </div>

            </div>
            <!-- /.container -->