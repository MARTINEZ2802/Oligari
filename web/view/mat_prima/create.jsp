<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="edu.cientifica.model.Mat_Prima"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Starter</title>
  
  <%@include file="..\..\template\head_refs.jsp"%>
</head>
<body class="hold-transition sidebar-mini">
    <h1>Registro de Materia Prima</h1>
         <form action="<%=request.getContextPath()%>/mat_prima/store" method="post" >
            Código: <input type="text" name="codigo"><br>
            Material: <input type="text" name="material"><br>
            Proveedor: <input type="text" name="proveedor" ><br>
            Monto: <input type="text" name="monto"><br>
            Medidas: <input type="text" name="medidas"><br>
            Color: <input type="text" name="color"><br>
            Cantidad: <input type="text" name="cantidad"><br>
            Imagen <input type="text" name="imagen"><br>
            Descripción <input type="text" name="descripcion"><br>
            <input type="submit" value="enviar">
        </form>     
        
</body>
</html>

