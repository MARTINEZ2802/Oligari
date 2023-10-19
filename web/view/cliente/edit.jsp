<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="edu.cientifica.model.Cliente"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cliente</title>
        <%@include file="..\..\template\head_refs.jsp"%>
    </head>
    <body class="hold-transition sidebar-mini">


        <h1>Actualizar Cliente</h1>
        <%
            Cliente cli = (Cliente) request.getAttribute("cliente");
        %>
        <form action="<%=request.getContextPath()%>/cliente/update" method="post" >

            Nombre <input type="text" name="nombre" value="<%=cli.getNombre()%>"><br>
            Apellido <input type="text" name="apellido" value="<%=cli.getApellido()%>"><br>
            DNI <input type="text" name="dni" value="<%=cli.getDni()%>"><br>
            Celular <input type="text" name="celular" value="<%=cli.getCelular()%>"><br>
            Correo <input type="text" name="correo" value="<%=cli.getCorreo()%>"><br>
            <input type="submit" value="enviar">
        </form>


    </body>
</html>

