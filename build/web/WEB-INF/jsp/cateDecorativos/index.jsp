<%-- 
    Document   : index
    Created on : 05/07/2017, 04:44:25 PM
    Author     : luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="#">Home</a>
                        </li>
                        <li>Ladies</li>
                    </ul>
                </div>

                <div class="col-md-3">
                    <!-- *** MENUS AND FILTERS ***
 _________________________________________________________ -->
                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Categories</h3>
                        </div>

                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked category-menu">
                                <li>
                                    <a href="category.html">Men <span class="badge pull-right">42</span></a>
                                    <ul>
                                        <li><a href="category.html">T-shirts</a>
                                        </li>
                                        <li><a href="category.html">Shirts</a>
                                        </li>
                                        <li><a href="category.html">Pants</a>
                                        </li>
                                        <li><a href="category.html">Accessories</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="active">
                                    <a href="category.html">Ladies  <span class="badge pull-right">123</span></a>
                                    <ul>
                                        <li><a href="category.html">T-shirts</a>
                                        </li>
                                        <li><a href="category.html">Skirts</a>
                                        </li>
                                        <li><a href="category.html">Pants</a>
                                        </li>
                                        <li><a href="category.html">Accessories</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="category.html">Kids  <span class="badge pull-right">11</span></a>
                                    <ul>
                                        <li><a href="category.html">T-shirts</a>
                                        </li>
                                        <li><a href="category.html">Skirts</a>
                                        </li>
                                        <li><a href="category.html">Pants</a>
                                        </li>
                                        <li><a href="category.html">Accessories</a>
                                        </li>
                                    </ul>
                                </li>

                            </ul>

                        </div>
                    </div>

                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Brands <a class="btn btn-xs btn-danger pull-right" href="#"><i class="fa fa-times-circle"></i> Clear</a></h3>
                        </div>

                        <div class="panel-body">

                            <form>
                                <div class="form-group">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">Armani (10)
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">Versace (12)
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">Carlo Bruni (15)
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox">Jack Honey (14)
                                        </label>
                                    </div>
                                </div>

                                <button class="btn btn-default btn-sm btn-primary"><i class="fa fa-pencil"></i> Apply</button>

                            </form>

                        </div>
                    </div>

                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Colours <a class="btn btn-xs btn-danger pull-right" href="#"><i class="fa fa-times-circle"></i> Clear</a></h3>
                        </div>

                        <div class="panel-body">

                            <form>
                                <div class="form-group">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox"> <span class="colour white"></span> White (14)
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox"> <span class="colour blue"></span> Blue (10)
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox"> <span class="colour green"></span> Green (20)
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox"> <span class="colour yellow"></span> Yellow (13)
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox"> <span class="colour red"></span> Red (10)
                                        </label>
                                    </div>
                                </div>

                                <button class="btn btn-default btn-sm btn-primary"><i class="fa fa-pencil"></i> Apply</button>

                            </form>

                        </div>
                    </div>

                    <!-- *** MENUS AND FILTERS END *** -->

                    <div class="banner">
                        <a href="#">
                            <img src="assets/img/banner.jpg" alt="sales 2014" class="img-responsive">
                        </a>
                    </div>
                </div>

                <div class="col-md-9">
                    <div class="box">
                        <h1>Decorativos</h1>
                        <p>Nuestros asociados elaboran objetos como porta lapiceros de todo tipo y en variados diseños que bien pueden realzar y relucir su escritorio. Otro producto es la porta servilleta para decorar el comedor o lugar favorito y disfrutar un suculento almuerzo.</p>
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

                        <div class="col-md-4 col-sm-6">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="assets/img/dp01.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="assets/img/dp01_01.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="assets/img/dp01.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Flor Azul</a></h3>
                                    <p class="price">S./20.00</p>
                                    <p class="buttons">
                                        <a href="detail.html" class="btn btn-default">Ver Detalles</a>
                                        <a href="basket.html" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Agregar</a>
                                    </p>
                                </div>
                                <!-- /.text -->
                                <div class="ribbon sale">
                                    <div class="theribbon">STOCK</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                
                                <div class="ribbon new">
                                    <div class="theribbon">NUEVO</div>
                                    <div class="ribbon-background"></div>
                                </div>
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="col-md-4 col-sm-6">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="assets/img/dp02.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="assets/img/dp02_02.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="assets/img/dp02.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Flor Rosada</a></h3>
                                    <p class="price"><del>$280</del> S/20.00</p>
                                    <p class="buttons">
                                        <a href="detail.html" class="btn btn-default">Ver Detalles</a>
                                        <a href="basket.html" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Agregar</a>
                                    </p>
                                </div>
                                <!-- /.text -->

                                <div class="ribbon sale">
                                    <div class="theribbon">STOCK</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                
                                
                                <div class="ribbon new">
                                    <div class="theribbon">NUEVO</div>
                                    <div class="ribbon-background"></div>
                                </div>
                               

                                <!-- /.ribbon -->
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="col-md-4 col-sm-6">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="assets/img/dp03.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="assets/img/dp03_03.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="assets/img/dp03.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Flor Roja</a></h3>
                                    <p class="price">S./20.00</p>
                                    <p class="buttons">
                                        <a href="detail.html" class="btn btn-default">Ver Detalles</a>
                                        <a href="basket.html" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Agregar</a>
                                    </p>

                                </div>
                                <!-- /.text -->
                                <div class="ribbon sale">
                                    <div class="theribbon">STOCK</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <div class="ribbon new">
                                    <div class="theribbon">NUEVO</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                
                                
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="col-md-4 col-sm-6">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="assets/img/dp04.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="assets/img/dp04_04.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="assets/img/dp04.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Flor Amarilla</a></h3>
                                    <p class="price">S./20.00</p>
                                    <p class="buttons">
                                        <a href="detail.html" class="btn btn-default">Ver Detalles</a>
                                        <a href="basket.html" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Agregar</a>
                                    </p>

                                </div>
                                
                                <!-- /.text -->
                                <div class="ribbon sale">
                                    <div class="theribbon">STOCK</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <div class="ribbon new">
                                    <div class="theribbon">NUEVO</div>
                                    <div class="ribbon-background"></div>
                                </div>
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="col-md-4 col-sm-6">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="assets/img/dp05.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="assets/img/dp05_05.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="assets/img/dp05.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Porta lapicero Caballo</a></h3>
                                    <p class="price">S./50.00</p>
                                    <p class="buttons">
                                        <a href="detail.html" class="btn btn-default">Ver Detalles</a>
                                        <a href="basket.html" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Agregar</a>
                                    </p>

                                </div>
                                <!-- /.text -->
                                <div class="ribbon sale">
                                    <div class="theribbon">STOCK</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <div class="ribbon new">
                                    <div class="theribbon">NUEVO</div>
                                    <div class="ribbon-background"></div>
                                </div>
                               
                                <!-- /.ribbon -->
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="col-md-4 col-sm-6">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="assets/img/dp06.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="assets/img/dp06_06.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="assets/img/dp06.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">Regadera Verde</a></h3>
                                    <p class="price">S./ 100.00</p>
                                    <p class="buttons">
                                        <a href="detail.html" class="btn btn-default">Ver Detalles</a>
                                        <a href="basket.html" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Agregar</a>
                                    </p>
                                    
                                

                                </div>
                                <!-- /.text -->
                                <div class="ribbon sale">
                                    <div class="theribbon">STOCK</div>
                                    <div class="ribbon-background"></div>
                                </div>
                                <div class="ribbon new">
                                    <div class="theribbon">NUEVO</div>
                                    <div class="ribbon-background"></div>
                                </div>

                            </div>
                            <!-- /.product -->
                        </div>
                        <!-- /.col-md-4 -->
                    </div>
                    <!-- /.products -->

                    <div class="pages">

                        <p class="loadMore">
                            <a href="#" class="btn btn-primary btn-lg"><i class="fa fa-chevron-down"></i> Load more</a>
                        </p>

                        <ul class="pagination">
                            <li><a href="#">&laquo;</a>
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
                            <li><a href="#">&raquo;</a>
                            </li>
                        </ul>
                    </div>


                </div>
                <!-- /.col-md-9 -->
            </div>
