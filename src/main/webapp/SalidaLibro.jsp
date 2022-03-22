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
        <title>Libro Registrado</title>
    </head>
    <body>
        <jsp:useBean id="lib" scope="request" class="com.emergentes.Libro" />  
        <h1>Libro Registrado</h1>
        <p>Los datos recibidos son:</p>
        <p>Titulo : <jsp:getProperty name="lib" property="titulo" /> </p>
        <p>Autor : <jsp:getProperty name="lib" property="autor" /> </p>
        <p>Resumen : <jsp:getProperty name="lib" property="resumen" /> </p>
        <p>Medio : <jsp:getProperty name="lib" property="medio" /> </p>
        <a href="index.jsp">Volver al Inicio</a>
    </body>
</html>