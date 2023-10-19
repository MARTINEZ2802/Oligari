<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="edu.cientifica.model.Mat_Prima"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Indumentaria</title>
        <%@include file="..\..\template\head_refs.jsp"%>
    </head>
    <body class="hold-transition sidebar-mini">


        <h1>Actualizar Materia Prima</h1>
        <%
            Mat_Prima mat = (Mat_Prima) request.getAttribute("mat_prima");
        %>
        <form action="<%=request.getContextPath()%>/mat_prima/update" method="post" >

            Código: <input type="text" name="codigo" value="<%=mat.getCodigo()%>"><br>
            Proveedor <input type="text" name="proveedor" value="<%=mat.getProveedor()%>"><br>
            Material <input type="text" name="material" value="<%=mat.getMaterial()%>"><br>
            Monto <input type="text" name="monto" value="<%=mat.getMonto()%>"><br>
            Medidas <input type="text" name="medidas" value="<%=mat.getMedidas()%>"><br>
            Color <input type="text" name="color" value="<%=mat.getColor()%>"><br>
            Cantidad <input type="text" name="cantidad" value="<%=mat.getCantidad()%>"><br>
            Imagen <input type="text" name="imagen" value="<%=mat.getImagen()%>"><br>
            Descripción <input type="text" name="descripcion" value="<%=mat.getDescripcion()%>"><br>
            <input type="submit" value="enviar">
        </form>


    </body>
</html>

