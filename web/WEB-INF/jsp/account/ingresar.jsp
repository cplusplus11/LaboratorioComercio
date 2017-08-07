<%-- 
    Document   : ingresar
    Created on : 28/07/2017, 05:23:57 PM
    Author     : luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<div id="content">
            <div class="container">

                <div class="col-md-12">

                    <ul class="breadcrumb">
                        <li><a href="${pageContext.request.contextPath}/home.htm">Inicio</a>
                        </li>
                        <li>Ingresar</li>
                    </ul>

                </div>

                

                <div class="col-md-6">
                    <div class="box" >
                        <h2 align="center">Ingresar</h2>
                        
                        <p class="danger"><font color="red">${error}</font></p>
                       
                        <form method="post" name="register" action="${pageContext.request.contextPath}/account/ingresar.htm">
                            
                            <div class="form-group">
                                <label for="username">Username</label>
                                <input type="text" class="form-control" name="username" placeholder="username">
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" name="password" placeholder="password">
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-sign-in"></i> Ingresar</button>
                            </div>
                        </form>
                    </div>
                </div>


            </div>
            <!-- /.container -->
        </div>