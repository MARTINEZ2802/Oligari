<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="edu.cientifica.model.Personal"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Starter</title>
  
  <%@include file="..\..\template\head_refs.jsp"%>
</head>
<body class="hold-transition sidebar-mini">
        <h1>Registro de Personal</h1>
         <form action="<%=request.getContextPath()%>/personal/store" method="post" >
            DNI: <input type="text" name="dni"><br>
            Nombre: <input type="text" name="nombre"><br>
            Apellido: <input type="text" name="apellido" ><br>
            Telefono: <input type="text" name="telefono"><br>
            Correo: <input type="text" name="correo"><br>
            Cargo: <input type="text" name="cargo"><br>
            Sueldo: <input type="text" name="sueldo"><br>
            Descripción: <input type="text" name="descripcion"><br>
            <input type="submit" value="enviar">
        </form>     
        
</body>
</html>

