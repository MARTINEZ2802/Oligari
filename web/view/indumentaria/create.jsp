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

        <h1>Registrar Indumentaria</h1>
        <form action="<%=request.getContextPath()%>/indumentaria/store" method="post" >
            Código: <input type="text" name="codigo"><br>
            Nombre: <input type="text" name="nombre"><br>
            Material: <input type="text" name="material" ><br>
            Color: <input type="text" name="color"><br>
            Talla: <input type="text" name="talla"><br>
            Cantidad <input type="text" name="cantidad"><br>
            Precio <input type="text" name="precio"><br>
            Imagen <input type="text" name="imagen"><br>
            Descripción <input type="text" name="descripcion"><br>
            <input type="submit" value="enviar">
        </form>  

    </body>
</html>
