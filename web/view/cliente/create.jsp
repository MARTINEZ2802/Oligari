<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="edu.cientifica.model.Indumentaria"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Indumentaria</title>
        <%@include file="..\..\template\head_refs.jsp"%>
    </head>
    <body class="hold-transition sidebar-mini">

        <h1>Registrar Cliente</h1>
        <form action="<%=request.getContextPath()%>/cliente/store" method="post" >
            Nombre <input type="text" name="nombre"><br>
            Apellido <input type="text" name="apellido"><br>
            DNI <input type="text" name="dni" ><br>
            Celular <input type="text" name="celular"><br>
            Correo <input type="text" name="correo"><br>
            <input type="submit" value="enviar">
        </form>  

    </body>
</html>
