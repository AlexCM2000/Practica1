<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Usuarios</title>
    </head>
    <body>
        <h1>Registro de Usuarios</h1>

        <form action="MainServlet" method="POST">

            <table>
                <tr>
                    <td align="right"><label>Nombre : </label></td>
                    <td align="left"><input type="text" name="nombre"/></td>

                </tr>
                <tr><td rowspan= “2”></td></tr>
                <tr>
                    <td align="right"><label>Apellidos : </label></td>
                    <td align="left"><input type="text" name="apellidos"/></td>
                </tr>
                <tr><td rowspan= “2”></td></tr>
                <tr>
                    <td align="right"><label>Correo Electrónico : </label></td>
                    <td align="left"><input type="text" name="correo"/></td>
                </tr>
                <tr><td rowspan= “2”></td></tr>
                <tr>
                    <td align="right"><label>Contraseña : </label></td>
                    <td align="left"><input type="text" name="clave"/></td>
                </tr>
                <tr><td rowspan= “2”></td></tr>
                <tr>
                    <td></td><td align="right"><input type="submit" value="Procesar" /></td>
                </tr>
            </table>

        </form>

    </body>
</html>