<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inscripción en Curso</title>
    </head>
    <body>
        <h1>Inscripción en Curso</h1>

        <form action="ServletCurso" method="POST">

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
                    <td align="right"><label>Curso : </label></td>
                    <td align="left"><select name="curso">
                         <option value="1ro">1ro</option>
                         <option value="2do" selected>2do</option>
                         <option value="3ro">3ro</option>
</select></td>
                </tr>
                <tr><td rowspan= “2”></td></tr>
                <tr>
                    <td></td><td align="right"><input type="submit" value="Enviar" /></td>
                </tr>
            </table>

        </form>

    </body>
</html>