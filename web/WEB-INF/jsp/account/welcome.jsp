<%-- 
    Document   : welcome
    Created on : 27/07/2017, 05:17:18 PM
    Author     : luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="content">
    <div class="container">

        <div class="col-md-12">

            <ul class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/home.htm">Inicio</a>
                </li>
                <li>Bienvenido</li>
            </ul>
            Welcome ${sessionScope.username}
            <br>
            <a href="${pageContext.request.contextPath}/account/logout.htm">Logout</a>
        </div>


    </div>