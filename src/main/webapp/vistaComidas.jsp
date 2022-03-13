<%-- 
    Document   : vistaComidas
    Created on : 22-feb-2022, 21:05:01
    Author     : win10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proyecto Final Despliegue - Vista - Comidas</title>
        <link rel="stylesheet" href="resources/css.css" type="text/css">
    </head>
    <body>
        <span>vistaComidas.jsp</span>

        <%@page import="java.sql.*" %>
        
        <%
        //Cargar el driver
            Class.forName("com.mysql.jdbc.Driver").newInstance();

        //Nos conectamos a la BD
            String username = "root";
            String password = "Comecocos!29";
            String url = "jdbc:mysql://localhost/comidas";
            Connection conn = DriverManager.getConnection(url, username, password);
            
            Statement stmt=conn.createStatement();
            String sqlStr="select * from comidas";
            
            System.out.println(sqlStr);
            ResultSet rset=stmt.executeQuery(sqlStr);
            
        %>
        <hr><!-- comment -->
        <div class="contenedor-tabla">
            <table>
                <tr>
                    <th>ID</th>
                    <th>NOMBRE</th>
                    <th>PRECIO</th>
                    <th>CANTIDAD</th>
                    <th>FECHA</th>
                </tr>
                <%
                    while (rset.next()){

                %>

                <tr>
                    <td><%= rset.getInt("id") %></td>
                    <td><%= rset.getString("nombre") %></td>
                    <td><%= rset.getFloat("precio") %></td>
                    <td><%= rset.getInt("cantidad") %></td>
                    <td><%= rset.getDate("fecha_caducidad") %></td>
                </tr>


                <% } %>
                <%
                    rset.close();
                    conn.close();

                %>
            </table>
        </div>
        <a href="index.jsp">
            Regresar al inicio
        </a>
    </body>
</html>
