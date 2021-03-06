<%-- 
    Document   : category
    Created on : 19/07/2017, 03:23:19 PM
    Author     : Fredy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="false"%>
<div id="content">



    <div class="container">

        <div class="col-md-12">

            <ul class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/home.htm">Inicio</a>
                </li>
                <li>Candelabros y Veleros</li>
            </ul>

            <div class="box">
                <h1>${category.name}</h1>
                <p>${category.description}</p>
            </div>

            <div class="box info-bar">
                <div class="row">
                    <div class="col-sm-12 col-md-4 products-showing">
                        Showing <strong>12</strong> of <strong>25</strong> products
                    </div>

                    <div class="col-sm-12 col-md-8  products-number-sort">
                        <div class="row">
                            <form class="form-inline">
                                <div class="col-md-6 col-sm-6">
                                    <div class="products-number">
                                        <strong>Show</strong>  <a href="#" class="btn btn-default btn-sm btn-primary">12</a>  <a href="#" class="btn btn-default btn-sm">24</a>  <a href="#" class="btn btn-default btn-sm">All</a> products
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <div class="products-sort-by">
                                        <strong>Sort by</strong>
                                        <select name="sort-by" class="form-control">
                                            <option>Price</option>
                                            <option>Name</option>
                                            <option>Sales first</option>
                                        </select>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row products">
                
                <c:forEach var="product" items="${products}">
                    <div class="col-md-3 col-sm-4">
                        <div class="product">

                            <div class="flip-container">
                                <div class="flipper">
                                    <div class="front">
                                        <a href="${pageContext.request.contextPath}/product/detail/${product.id}.htm">
                                            <img src="${pageContext.servletContext.contextPath }/assets/img/${product.photo}" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                    <div class="back">
                                        <a href="${pageContext.request.contextPath}/product/detail/${product.id}.htm">
                                            <img src="${pageContext.servletContext.contextPath }/assets/img/${product.photo}" alt="" class="img-responsive">
                                        </a>
                                    </div> 
                                </div>    
                            </div>
                            <a href="${pageContext.request.contextPath}/product/detail/${product.id}.htm" class="invisible">
                                <img src="${pageContext.servletContext.contextPath }/assets/img/${product.photo}" alt="" class="img-responsive">
                            </a> 
                            <div class="text">
                                <h3><a href="${pageContext.request.contextPath}/product/detail/${product.id}.htm">${product.name}</a></h3>
                                <p class="price">S./${product.price}</p>
                                <p class="buttons">
                                    <a href="${pageContext.request.contextPath}/product/detail/${product.id}.htm" class="btn btn-default">Ver Detalles</a>
                                    <a href="${pageContext.servletContext.contextPath }/cart/buy/${product.id}.htm" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Agregar</a>
                                </p>
                            </div>


                            <!-- avisos -->
                            <div class="ribbon sale">
                                <div class="theribbon">STOCK</div>
                                <div class="ribbon-background"></div>
                            </div>
                            <div class="ribbon gift">
                                <div class="theribbon">OFERTA</div>
                                <div class="ribbon-background"></div>
                            </div>
                            <div class="ribbon new">
                                <div class="theribbon">NUEVO</div>
                                <div class="ribbon-background"></div>
                            </div>
                            <!-- /avisos -->                
                        </div>
                        <!-- /.product -->
                    </div>

                </c:forEach> 
                </div>

                <div class="pages">

                    <p class="loadMore">
                        <a href="#" class="btn btn-primary btn-lg"><i class="fa fa-chevron-down"></i> Mostrar</a>
                    </p>

                    <ul class="pagination">
                        <li><a href="#">«</a>
                        </li>
                        <li class="active"><a href="#">1</a>
                        </li>
                        <li><a href="#">2</a>
                        </li>
                        <li><a href="#">3</a>
                        </li>
                        <li><a href="#">4</a>
                        </li>
                        <li><a href="#">5</a>
                        </li>
                        <li><a href="#">»</a>
                        </li>
                    </ul>
                </div>


            </div>
            <!-- /.col-md-9 -->

        </div>
