<%-- 
    Document   : SalidaUsuario
    Created on : 20 mar. 2022, 19:46:04
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Producto Registrado</title>
    </head>
    <body>
        <jsp:useBean id="pro" scope="request" class="com.emergentes.Producto" />  
        <h1>Producto Registrado</h1>
        <p>Los datos recibidos son:</p>
        <p>Producto : <jsp:getProperty name="pro" property="producto" /> </p>
        <p>Categoria : <jsp:getProperty name="pro" property="categoria" /> </p>
        <p>Existencia : <jsp:getProperty name="pro" property="existencia" /> </p>
        <p>Precio : <jsp:getProperty name="pro" property="precio" /> </p>
        <a href="index.jsp">Volver al Inicio</a>
    </body>
</html>