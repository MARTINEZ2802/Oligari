<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="edu.cientifica.model.Personal"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Personal</title>
        <%@include file="..\..\template\head_refs.jsp"%>
    </head>
    <body class="hold-transition sidebar-mini">
        <div class="wrapper">

            <%@include file="..\..\template\header_inc.jsp"%>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <div class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1 class="m-0"><%=request.getAttribute("titulo")%></h1>
                            </div><!-- /.col -->
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active">Starter Page</li>
                                </ol>
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div>
                <!-- /.content-header -->

                <!-- Main content -->
                <div class="content">
                    <div class="container-fluid">

                        <%
                           List<Personal> personal = (List) request.getAttribute("personal");
                        %>

                        <a href="<%=request.getContextPath()%>/personal/create" class="btn btn-success">Añadir</a> 


                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">DNI</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Apellido</th>
                                    <th scope="col">Telefono</th>
                                    <th scope="col">Correo</th>
                                    <th scope="col">Cargo</th>
                                    <th scope="col">Sueldo</th>
                                    <th scope="col">Descripción</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%for (Personal per : personal){%>
                                <tr>
                                    <th scope="row"><%=per.getDni()%></th>
                                    <td><%=per.getNombre()%></td>
                                    <td><%=per.getApellido()%></td>
                                    <td><%=per.getTelefono()%></td>
                                    <td><%=per.getCorreo()%></td>
                                    <td><%=per.getCargo()%></td>
                                    <td><%=per.getSueldo()%></td>
                                    <td><%=per.getDescripcion()%></td>

                                    
                                    <td><button type="button" class="btn btn-primary">
                                            <a href="<%=request.getContextPath()%>/personal/edit?dni=<%=per.getDni()%>"><font color="white">Editar</font></a>
                                        </button>
                                    </td>
                                    <td><button type="button" class="btn btn-danger">
                                            <a href="<%=request.getContextPath()%>/personal/delete?dni=<%=per.getDni()%>"><font color="white">Eliminar</font></a>
                                        </button>
                                    </td>
                                    
                                    
                                    
                                    
                                    
                                </tr>
                                <%}%>

                            </tbody>
                        </table>
                    </div><!-- /.container-fluid -->
                </div>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
            <!-- Main Footer -->
            <%@include file="..\..\template\footer_inc.jsp"%>
        </div>
        <!-- ./wrapper -->

        <%@include file="..\..\template\foot_refs.jsp"%>

    </body>
</html>