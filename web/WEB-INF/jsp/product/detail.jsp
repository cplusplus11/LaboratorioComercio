<%-- 
    Document   : details
    Created on : 20/07/2017, 12:57:58 PM
    Author     : luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="${pageContext.request.contextPath}/home.htm">Inicio</a>
                        </li>
                        
                        <li>${product.name}</li>
                    </ul>

                </div>

                <div class="col-md-12">

                    <div class="row" id="productMain">
                        <div class="col-sm-6">
                            <div id="mainImage">
                                <img src="${pageContext.servletContext.contextPath}/assets/img/${product.photo}" alt="" class="img-responsive">
                            </div>

                            <div class="ribbon sale">
                                <div class="theribbon">STOCK</div>
                                <div class="ribbon-background"></div>
                            </div>
                            <!-- /.ribbon -->

                            <div class="ribbon new">
                                <div class="theribbon">NUEVO</div>
                                <div class="ribbon-background"></div>
                            </div>
                            <!-- /.ribbon -->

                        </div>
                        <div class="col-sm-6">
                            <div class="box">
                                <h1 class="text-center">${product.name}</h1>
                                <p class="goToDescription"><a href="#details" class="scroll-to">Mostrar mas detalles</a>
                                </p>
                                <p class="price">S./${product.price}</p>

                                <p class="text-center buttons">
                                    <a href="${pageContext.servletContext.contextPath }/cart/buy/${product.id}.htm" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Agregar</a> 
                                    <a href="${pageContext.servletContext.contextPath }/cart/wish/${product.id}.htm" class="btn btn-default"><i class="fa fa-heart"></i> Deseados</a>
                                </p>


                            </div>

                            <div class="row" id="thumbs">
                                <div class="col-xs-4">
                                    <a href="${pageContext.servletContext.contextPath}/assets/img/${product.photo}" class="thumb">
                                        <img src="${pageContext.servletContext.contextPath}/assets/img/${product.photo}" alt="" class="img-responsive">
                                    </a>
                                </div>
                                <div class="col-xs-4">
                                    <a href="${pageContext.servletContext.contextPath}/assets/img/${product.photo}" class="thumb active">
                                        <img src="${pageContext.servletContext.contextPath}/assets/img/${product.photo}" alt="" class="img-responsive">
                                    </a>
                                </div>
                                <div class="col-xs-4">
                                    <a href="${pageContext.servletContext.contextPath}/assets/img/${product.photo}" class="thumb">
                                        <img src="${pageContext.servletContext.contextPath}/assets/img/${product.photo}" alt="" class="img-responsive">
                                    </a>
                                </div>
                            </div>
                        </div>

                    </div>


                    <div class="box" id="details">
                        <p>
                            </p><h4>Detalles del producto</h4>
                            <p>${product.description}</p>
                            
                            <hr>
                            <div class="social">
                                <h4>Muestralo a tus amigos</h4>
                                <p>
                                    <a href="#" class="external facebook" data-animate-hover="pulse"><i class="fa fa-facebook"></i></a>
                                    <a href="#" class="external gplus" data-animate-hover="pulse"><i class="fa fa-google-plus"></i></a>
                                    <a href="#" class="external twitter" data-animate-hover="pulse"><i class="fa fa-twitter"></i></a>
                                    <a href="#" class="email" data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>
                                </p>
                            </div>
                    </div>

                    <div class="row same-height-row">
                        <div class="col-md-3 col-sm-6">
                            <div class="box same-height" style="height: 380px;">
                                <h3>You may also like these products</h3>
                            </div>
                        </div>

                        <div class="col-md-3 col-sm-6">
                            <div class="product same-height" style="height: 380px;">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="${pageContext.servletContext.contextPath}/assets/img/product2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="${pageContext.servletContext.contextPath}/assets/img/product2_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="${pageContext.servletContext.contextPath}/assets/img/product2.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>
                                </div>
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="col-md-3 col-sm-6">
                            <div class="product same-height" style="height: 380px;">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="${pageContext.servletContext.contextPath}/assets/img/product1.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="${pageContext.servletContext.contextPath}/assets/img/product1_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="${pageContext.servletContext.contextPath}/assets/img/product1.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>
                                </div>
                            </div>
                            <!-- /.product -->
                        </div>


                        <div class="col-md-3 col-sm-6">
                            <div class="product same-height" style="height: 380px;">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="${pageContext.servletContext.contextPath}/assets/img/product3.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="${pageContext.servletContext.contextPath}/assets/img/product3_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="${pageContext.servletContext.contextPath}/assets/img/product3.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>

                                </div>
                            </div>
                            <!-- /.product -->
                        </div>

                    </div>

                    <div class="row same-height-row">
                        <div class="col-md-3 col-sm-6">
                            <div class="box same-height" style="height: 380px;">
                                <h3>Products viewed recently</h3>
                            </div>
                        </div>


                        <div class="col-md-3 col-sm-6">
                            <div class="product same-height" style="height: 380px;">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="${pageContext.servletContext.contextPath}/assets/img/product2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="${pageContext.servletContext.contextPath}/assets/img/product2_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="${pageContext.servletContext.contextPath}/assets/img/product2.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>
                                </div>
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="col-md-3 col-sm-6">
                            <div class="product same-height" style="height: 380px;">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="${pageContext.servletContext.contextPath}/assets/img/product1.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="${pageContext.servletContext.contextPath}/assets/img/product1_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="${pageContext.servletContext.contextPath}/assets/img/product1.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>
                                </div>
                            </div>
                            <!-- /.product -->
                        </div>


                        <div class="col-md-3 col-sm-6">
                            <div class="product same-height" style="height: 380px;">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="${pageContext.servletContext.contextPath}/assets/img/product3.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="${pageContext.servletContext.contextPath}/assets/img/product3_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="${pageContext.servletContext.contextPath}/assets/img/product3.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>

                                </div>
                            </div>
                            <!-- /.product -->
                        </div>

                    </div>

                </div>
                <!-- /.col-md-9 -->
            </div>
            <!-- /.container -->
        