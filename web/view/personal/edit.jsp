<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="edu.cientifica.model.Personal"%>
<!DOCTYPE html>
<html>

    <h1>Actualizar Personal</h1>
    <%
        Personal perso = (Personal) request.getAttribute("personal");
    %>
    <form action="<%=request.getContextPath()%>/personal/update" method="post" >
        DNI <input type="text" name="dni" value="<%=perso.getDni()%>"><br>
        Nombre: <input type="text" name="nombre" value="<%=perso.getNombre()%>"><br>
        Apellido <input type="text" name="apellido" value="<%=perso.getApellido()%>"><br>
        Telefono <input type="text" name="telefono" value="<%=perso.getTelefono()%>"><br>
        Correo <input type="text" name="correo" value="<%=perso.getCorreo()%>"><br>
        Cargo <input type="text" name="cargo" value="<%=perso.getCargo()%>"><br>
        Sueldo <input type="text" name="sueldo" value="<%=perso.getSueldo()%>"><br>
        Descripción <input type="text" name="descripcion" value="<%=perso.getDescripcion()%>"><br>
        <input type="submit" value="enviar">
    </form>    


</body>
</html>

