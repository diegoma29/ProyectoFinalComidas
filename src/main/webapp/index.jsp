<%-- 
    Document   : index.jsp
    Created on : 22-feb-2022, 21:04:11
    Author     : win10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proyecto Final Despliegue - Comidas</title>
        <link rel="stylesheet" href="resources/css.css" type="text/css">
    </head>
    <body>
        
        <div class="contenedor">

            <h1>Proyecto Final Despliegue - Comidas</h1>
            <h2>Listado Comidas</h2>

            <div class="contenedor-grid">
         
                <div>  <p> Push por Mario Lara </p></div>

                <div>   <p>Push Francisco</p></div>

                <div>   <p>Push Carlos</p></div>

                <div>   <p>Push Selene</p></div>

                <div>   <p>Push de Jorge Fraile</p></div>

                <div>   <p>Push de Diego</p></div>
               
            </div>

            <h3>Comidas sanas todas las semanas!</h3>
            <a href="${pageContext.request.contextPath}/ServletControlador?operacion=redirect"> <input type="button" value="Ver listado"></a>
        </div>
    </body>
</html>
