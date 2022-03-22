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
        <title>Usuario Registrado</title>
    </head>
    <body>
        <jsp:useBean id="use" scope="request" class="com.emergentes.Usuario" />  
        <h1>Gracias por Registrase</h1>
        <p>Los datos recibidos son:</p>
        <p>Su nombre es: <jsp:getProperty name="use" property="nombre" /> </p>
        <p>Sus apellidos son: <jsp:getProperty name="use" property="apellidos" /> </p>
        <p>Su correo es: <jsp:getProperty name="use" property="correo" /> </p>
        <p>Su clave es: <jsp:getProperty name="use" property="clave" /> </p>
        
        <a href="index.jsp">Volver al Inicio</a>
    </body>
</html>