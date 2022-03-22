<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Productos</title>
    </head>
    <body>
        <h1>Registro de Productos</h1>

        <form action="ServletProducto" method="POST">

            <table>
                <tr>
                    <td align="right"><label>Producto : </label></td>
                    <td align="left"><input type="text" name="producto"/></td>

                </tr>
                <tr><td rowspan= “2”></td></tr>
                  <tr>
                    <td align="right"><label>Categoria : </label></td>
                    <td align="left"><select select style="width: 177px" name="categoria">
                         <option value="lacteos"selected>lacteos</option>
                         <option value="frutas">frutas</option>
                         <option value="legumbres">legumbres</option>
                         <option value="cereales">cereales</option>
                    </select></td>
                </tr>
                <tr><td rowspan= “2”></td></tr>
               <tr>
                    <td align="right"><label>Existencia : </label></td>
                    <td align="left"><input type="text" name="existencia"/></td>
                </tr>
                <tr><td rowspan= “2”></td></tr>
                <tr>
                    <td align="right"><label>Precio : </label></td>
                    <td align="left"><input type="text" name="precio"/></td>
                </tr>
                <tr><td rowspan= “2”></td></tr>
                <tr>
                    <td></td><td align="right"><input type="submit" value="Enviar" /></td>
                </tr>
            </table>

        </form>

    </body>
</html>