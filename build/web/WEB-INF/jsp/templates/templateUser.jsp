<%-- 
    

<property name="hibernate.enable_lazy_load_no_trans">true</property>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="shop.service.*" %>
<%@ page import="org.springframework.web.servlet.support.RequestContextUtils" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<!DOCTYPE html>
<html lang="en">

<head>

    
    
    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Obaju e-commerce template">
    <meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
    <meta name="keywords" content="">

    <title>
        Hojalateria - Araujo
    </title>

    <meta name="keywords" content="">

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100' rel='stylesheet' type='text/css'>

    <!-- styles -->
    <link href="${pageContext.servletContext.contextPath }/assets/css/font-awesome.css" rel="stylesheet">
    <link href="${pageContext.servletContext.contextPath }/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.servletContext.contextPath }/assets/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.servletContext.contextPath }/assets/css/owl.carousel.css" rel="stylesheet">
    <link href="${pageContext.servletContext.contextPath }/assets/css/owl.theme.css" rel="stylesheet">

    <!-- theme stylesheet -->
    <link href="${pageContext.servletContext.contextPath }/assets/css/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <!-- your stylesheet with modifications -->
    <link href="${pageContext.servletContext.contextPath }/assets/css/custom.css" rel="stylesheet">

    <script src="${pageContext.servletContext.contextPath }/assets/js/respond.min.js"></script>

    <!-- LOGO -->
    <link rel="shortcut icon" type="image/png" href="${pageContext.servletContext.contextPath }/assets/img/logo-small.png" />


</head>

<body>
    <%
        ApplicationContext applicationContext = RequestContextUtils.getWebApplicationContext(request);
        CategoryService categoryService = (CategoryService) applicationContext.getBean("categoryService");
    %>    
    <!-- *** TOPBAR ***
 _________________________________________________________ -->
    <div id="top">
        <div class="container">
            <div class="col-md-6 offer" data-animate="fadeInDown">
                <a href="#" class="btn btn-success btn-sm" data-animate-hover="shake">Oferta de la semana</a>  <a href="#">Ten un 25% de dscto. en costo de envio con la compra mayor a S./200</a>
            </div>
            <div class="col-md-6" data-animate="fadeInDown">
                <ul class="menu">
                    
            <%
                HttpSession sesion = request.getSession();
                String username;
                
                if(sesion.getAttribute("username")!=null){
                username = sesion.getAttribute("username").toString();
                                
            %>
            <li><i class="fa fa-fw fa-user"></i><a href="${pageContext.request.contextPath}/account/logout.htm">Salir</a></li>
            <li><i class="fa fa-fw fa-user"></i><a href="">Hola <% out.print(username); %></a></li>
            <% }else{ %>
                    
                    <li><i class="fa fa-fw fa-user"></i><a href="${pageContext.request.contextPath}/account/ingresar.htm">Ingresar</a>
                    </li>
                    <li><i class="fa fa-fw fa-user"></i><a href="${pageContext.request.contextPath}/account/register.htm">Registrar</a></li>
            <%} %> 
                    <li><a href="${pageContext.request.contextPath}/aboutus/contact.htm">Contacto</a>
                    </li>
                    <!--<li><a href="#">Visualizaciones recientes</a></li>-->
                    
                </ul>
            </div>
        </div>
        <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
            <div class="modal-dialog modal-sm">

                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="Login">Customer login</h4>
                    </div>
                    <div class="modal-body">
                        <form action="customer-orders.html" method="post">
                            <div class="form-group">
                                <input type="text" class="form-control" id="email-modal" placeholder="email">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" id="password-modal" placeholder="password">
                            </div>

                            <p class="text-center">
                                <button class="btn btn-primary"><i class="fa fa-sign-in"></i> Log in</button>
                            </p>

                        </form>

                        <p class="text-center text-muted">Not registered yet?</p>
                        <p class="text-center text-muted"><a href="register.html"><strong>Register now</strong></a>! It is easy and done in 1&nbsp;minute and gives you access to special discounts and much more!</p>

                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- *** TOP BAR END *** -->

    <!-- *** NAVBAR ***
 _________________________________________________________ -->

    <div class="navbar navbar-default yamm" role="navigation" id="navbar">
        <div class="container">
            <div class="navbar-header">

                <a class="navbar-brand home" href="index.html" data-animate-hover="bounce">
                    <img src="${pageContext.servletContext.contextPath }/assets/img/logo.png" alt="Obaju logo" class="hidden-xs">
                    <img src="${pageContext.servletContext.contextPath }/assets/img/logo-small.png" alt="Obaju logo" class="visible-xs"><span class="sr-only">Obaju - go to homepage</span>
                </a>
                <div class="navbar-buttons">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <i class="fa fa-align-justify"></i>
                    </button>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#search">
                        <span class="sr-only">Toggle search</span>
                        <i class="fa fa-search"></i>
                    </button>
                    <a class="btn btn-default navbar-toggle" href="basket.html">
                        <i class="fa fa-shopping-cart"></i>  <span class="hidden-xs">3 items in cart</span>
                    </a>
                </div>
            </div>
            <!--/.navbar-header -->

            <div class="navbar-collapse collapse" id="navigation">

                <ul class="nav navbar-nav navbar-left">
                    <li ${action eq 'home' ? 'class="active"' : ''}><a href="${pageContext.request.contextPath}/home.htm">Inicio</a></li>
                    <!--<li class="active"><a href="index.html">Home</a>
                    </li>-->
                    <li class="dropdown yamm-fw">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Productos<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <div class="yamm-content">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h5>Productos</h5>
                                            <ul>
                                                <c:forEach var="category" items="<%= categoryService.findAll()%>">
                                                    <li><a href="${pageContext.request.contextPath }/product/category/${category.id}.htm">${category.name }</a></li>
                                                </c:forEach>
                                                    
                                            </ul>
                                        </div>
                                        
                                    </div>
                                </div>
                                <!-- /.yamm-content -->
                            </li>
                        </ul>
                    </li>

                    <li class="dropdown yamm-fw">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Nosotros<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <div class="yamm-content">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h5>Acerca de Nosotros</h5>
                                            <ul>
                                                <li ${action eq 'presentacion' ? 'class="active"' : ''}><a href="${pageContext.request.contextPath}/aboutus/presentacion.htm">Presentación</a></li>
                                                <li ${action eq 'misionyvision' ? 'class="active"' : ''}><a href="${pageContext.request.contextPath}/aboutus/misionyvision.htm">Misión y Visión</a></li>
                                                
                                            </ul>
                                        </div>
                                        
                                    </div>
                                </div>
                                <!-- /.yamm-content -->
                            </li>
                        </ul>
                    </li>

                    <!--<li class="dropdown yamm-fw">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Template <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <div class="yamm-content">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h5>Shop</h5>
                                            <ul>
                                                <li><a href="index.html">Homepage</a>
                                                </li>
                                                <li><a href="category.html">Category - sidebar left</a>
                                                </li>
                                                <li><a href="category-right.html">Category - sidebar right</a>
                                                </li>
                                                <li><a href="category-full.html">Category - full width</a>
                                                </li>
                                                <li><a href="detail.html">Product detail</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-3">
                                            <h5>User</h5>
                                            <ul>
                                                <li><a href="register.html">Register / login</a>
                                                </li>
                                                <li><a href="customer-orders.html">Orders history</a>
                                                </li>
                                                <li><a href="customer-order.html">Order history detail</a>
                                                </li>
                                                <li><a href="customer-wishlist.html">Wishlist</a>
                                                </li>
                                                <li><a href="customer-account.html">Customer account / change password</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-3">
                                            <h5>Order process</h5>
                                            <ul>
                                                <li><a href="basket.html">Shopping cart</a>
                                                </li>
                                                <li><a href="checkout1.html">Checkout - step 1</a>
                                                </li>
                                                <li><a href="checkout2.html">Checkout - step 2</a>
                                                </li>
                                                <li><a href="checkout3.html">Checkout - step 3</a>
                                                </li>
                                                <li><a href="checkout4.html">Checkout - step 4</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-3">
                                            <h5>Pages and blog</h5>
                                            <ul>
                                                <li><a href="blog.html">Blog listing</a>
                                                </li>
                                                <li><a href="post.html">Blog Post</a>
                                                </li>
                                                <li><a href="faq.html">FAQ</a>
                                                </li>
                                                <li><a href="text.html">Text page</a>
                                                </li>
                                                <li><a href="text-right.html">Text page - right sidebar</a>
                                                </li>
                                                <li><a href="404.html">404 page</a>
                                                </li>
                                                <li><a href="${pageContext.request.contextPath}/aboutus/contact.htm">Contact</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                
                            </li>
                        </ul>
                    </li>-->
                </ul>

            </div>
            <!--/.nav-collapse -->

            <div class="navbar-buttons">

                <div class="navbar-collapse collapse right" id="basket-overview">
                    <a href="${pageContext.servletContext.contextPath }/cart.htm" class="btn btn-primary navbar-btn"><i class="fa fa-shopping-cart"></i><span class="hidden-sm">${sessionScope.cart != null ? sessionScope.cart.size() : 0 } tipo(s) de producto(s)</span></a>
                </div>
                <!--/.nav-collapse -->

                <div class="navbar-collapse collapse right" id="search-not-mobile">
                    <button type="button" class="btn navbar-btn btn-primary" data-toggle="collapse" data-target="#search">
                        <span class="sr-only">Toggle search</span>
                        <i class="fa fa-search"></i>
                    </button>
                </div>

            </div>

            <div class="collapse clearfix" id="search">

                <form class="navbar-form" role="search">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search">
                        <span class="input-group-btn">

			<button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>

		    </span>
                    </div>
                </form>

            </div>
            <!--/.nav-collapse -->

        </div>
        <!-- /.container -->
    </div>
    <!-- /#navbar -->

    <!-- *** NAVBAR END *** -->



    <div id="all">

        <div id="content">
            <tiles:insertAttribute name="content"></tiles:insertAttribute>
        </div>
        <!-- /#content -->

        <!-- *** FOOTER ***
 _________________________________________________________ -->
        <div id="footer" data-animate="fadeInUp">
            <div class="container">
                <div class="row">
                    
                    <!-- /.col-md-3 -->

                    
                    <!-- /.col-md-3 -->

                    <div class="col-md-3 col-sm-6">

                        <h4>Encuentranos</h4>

                        <p><strong>Teófilo Araujo Choque y familia</strong>
                            <br>Asociación de Artesanos en Hojalatería Eslabón Araujo
                            <br>Jr. las Dalias N.385 Miraflores
                            <br>San Juan Bautista
                            <br>Ayacucho
                            <br>
                            <strong>Peru</strong>
                        </p>

                        <a href="www.google.com">Vamos a la Pagina</a>

                        <hr class="hidden-md hidden-lg">

                    </div>
                    <!-- /.col-md-3 -->



                    <div class="col-md-3 col-sm-6">

                        <h4>Get the news</h4>

                        <p class="text-muted">Deja tu email y te mandaremos mayor informacion.</p>

                        <form>
                            <div class="input-group">

                                <input type="text" class="form-control">

                                <span class="input-group-btn">

			    <button class="btn btn-default" type="button">Subscribete!</button>

			</span>

                            </div>
                            <!-- /input-group -->
                        </form>

                        <hr>

                        <h4>Estar en contacto</h4>

                        <p class="social">
                            <a href="#" class="facebook external" data-animate-hover="shake"><i class="fa fa-facebook"></i></a>
                            <a href="#" class="twitter external" data-animate-hover="shake"><i class="fa fa-twitter"></i></a>
                            <a href="#" class="instagram external" data-animate-hover="shake"><i class="fa fa-instagram"></i></a>
                            <a href="#" class="gplus external" data-animate-hover="shake"><i class="fa fa-google-plus"></i></a>
                            <a href="#" class="email external" data-animate-hover="shake"><i class="fa fa-envelope"></i></a>
                        </p>


                    </div>
                    <!-- /.col-md-3 -->

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container -->
        </div>
        <!-- /#footer -->

        <!-- *** FOOTER END *** -->




        <!-- *** COPYRIGHT ***
 _________________________________________________________ -->
        <div id="copyright">
            <div class="container">
                <div class="col-md-6">
                    <p class="pull-left">© 2017</p>

                </div>
                <div class="col-md-6">
                    <p class="pull-right">Template by <a href="https://bootstrapious.com/e-commerce-templates">Bootstrapious.com</a>
                         <!-- Not removing these links is part of the license conditions of the template. Thanks for understanding :) If you want to use the template without the attribution links, you can do so after supporting further themes development at https://bootstrapious.com/donate  -->
                    </p>
                </div>
            </div>
        </div>
        <!-- *** COPYRIGHT END *** -->



    </div>
    <!-- /#all -->


    

    <!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->
    <script src="${pageContext.servletContext.contextPath }/assets/js/jquery-1.11.0.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/assets/js/bootstrap.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/assets/js/jquery.cookie.js"></script>
    <script src="${pageContext.servletContext.contextPath }/assets/js/waypoints.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/assets/js/modernizr.js"></script>
    <script src="${pageContext.servletContext.contextPath }/assets/js/bootstrap-hover-dropdown.js"></script>
    <script src="${pageContext.servletContext.contextPath }/assets/js/owl.carousel.min.js"></script>
    <script src="${pageContext.servletContext.contextPath }/assets/js/front.js"></script>


</body>

</html>