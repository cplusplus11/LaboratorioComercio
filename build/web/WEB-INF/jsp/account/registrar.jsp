<%-- 
    Document   : register
    Created on : 27/07/2017, 05:17:36 PM
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
                        <li>Register</li>
                    </ul>

                </div>

                <div class="col-md-6">
                    <div class="box">
                        <h1>Nueva cuenta</h1>

                        <p class="danger"><font color="red">${error}</font></p>
                        
                        <s:form method="post" commandName="account" 
                        action="${pageContext.request.contextPath }/account/register.htm">
                        
                            <div class="form-group">
                                <label for="username">Username</label>
                                <s:input path="username" class="form-control" id="username" type="text" ></s:input>
                                <!--<input class="form-control" id="username" type="text"> -->
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <s:input path="password" class="form-control" id="password" type="password" ></s:input>
                                <!--<input class="form-control" id="password" type="password">-->
                            </div>
                            <div class="form-group">
                                <label for="fullname">Nombre completo</label>
                                <s:input path="fullname" class="form-control" id="fullname" type="text" ></s:input>
                                <!--<input class="form-control" id="fullname" type="text">-->
                            </div>
                            <div class="form-group">
                                <label for="email">E-mail</label>
                                <s:input path="email" class="form-control" id="email" type="text" ></s:input>
                                <!--<input class="form-control" id="email" type="text">-->
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-user-md"></i> Registrar</button>
                            </div>
                        </s:form>
                    </div>
                </div>
                
            </div>
            <!-- /.container -->
        </div>