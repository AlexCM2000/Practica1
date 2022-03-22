<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Libros</title>
    </head>
    <body>
        <h1>Registro de Libros</h1>

        <form action="ServletLibro" method="POST">

            <table>
                <tr>
                    <td align="right"><label>Titulo : </label></td>
                    <td align="left"><input type="text" name="titulo"/></td>

                </tr>
                <tr><td rowspan= “2”></td></tr>

               <tr>
                    <td align="right"><label>Autor : </label></td> 
                    <td align="left"><input type="text" name="autor"/></td>
                </tr>
                <tr><td rowspan= “2”></td></tr>
                <tr>
                    <td align="right"><label>Resumen : </label></td>

                    <td align="left"><textarea type="text" name="resumen" rows="5" cols="30"></textarea></td>

                </tr>
                <tr><td rowspan= “2”></td></tr>
                 <tr>
                    <td align="right"><label>Medio : </label></td>
                    
                    <td align="left"><br> <input type="radio" name="medio"
                        value="fisico"> Físico<br>
                         <input type="radio" name="medio"
                        value="magnetico"> Magnético<br>
                    </td>
                </tr>
                <tr>
                    <td></td><td align="right"><input type="submit" value="Enviar" /></td>
                </tr>
            </table>

        </form>

    </body>
</html>