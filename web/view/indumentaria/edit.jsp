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


        <h1>Actualizar Indumentaria</h1>
        <%
            Indumentaria indu = (Indumentaria) request.getAttribute("indumentaria");
        %>
        <form action="<%=request.getContextPath()%>/indumentaria/update" method="post" >

            Código: <input type="text" name="codigo" value="<%=indu.getCodigo()%>"><br>
            Nombre: <input type="text" name="nombre" value="<%=indu.getNombre()%>"><br>
            Material: <input type="text" name="material" value="<%=indu.getMaterial()%>"><br>
            Color: <input type="text" name="color" value="<%=indu.getColor()%>"><br>
            Talla: <input type="text" name="talla" value="<%=indu.getTalla()%>"><br>
            Cantidad <input type="text" name="cantidad" value="<%=indu.getCantidad()%>"><br>
            Precio <input type="text" name="precio" value="<%=indu.getPrecio()%>"><br>
            Imagen <input type="text" name="imagen" value="<%=indu.getImagen()%>"><br>
            Descripción <input type="text" name="descripcion" value="<%=indu.getDescripcion()%>"><br>
            <input type="submit" value="enviar">
        </form>


    </body>
</html>

