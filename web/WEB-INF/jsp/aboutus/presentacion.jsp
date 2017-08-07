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

                        <li>Presentación</li>
                    </ul>
                </div>

                <div class="col-md-9">

                    <div class="box" id="text-page">
                        <h1>Presentación</h1>

                        <p class="lead" align="justify">La Hojalatería Araujo es una asociación empresarial integrado por artesanos productores que desarrollan la hojalatería artística. Estamos ubicados en la región Ayacucho - Perú y nos especializamos en desarrollar productos artesanales como los candelabros, veleros, espejos, cruces, en variedad de tamaños y colores. Asimismo desarrollamos aretes, collares, figuritas y todo tipo de objetos de regalo y decoración de interiores. La materia prima que usamos es la hojalata, calamina plana galvanizada, especialmente reciclada.</p>

                        <div class="row">
                            <div class="col-md-4">
                                <p class="text-center">
                                    <img src="${pageContext.servletContext.contextPath }/assets/img/01.jpg" class="img-circle img-responsive" alt="">
                                </p>
                                <p class="text-center"></p>
                            </div>
                            <div class="col-md-4">
                                <p class="text-center">
                                    <img src="${pageContext.servletContext.contextPath }/assets/img/02.png" class="img-thumbnail  img-responsive" alt="">
                                </p>
                                <p class="text-center"></p>
                            </div>
                            <div class="col-md-4">
                                <p class="text-center">
                                    <img src="${pageContext.servletContext.contextPath }/assets/img/03.png" class="img-rounded img-responsive" alt="">
                                </p>
                                <p class="text-center"></p>
                            </div>
                        </div>

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


                </div>

            </div>
            <!-- /.container -->