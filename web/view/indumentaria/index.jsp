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
                           List<Indumentaria> indumentaria = (List) request.getAttribute("indumentarias");
                        %>

                        <a href="<%=request.getContextPath()%>/indumentaria/create" class="btn btn-success">Añadir</a> 


                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Cod</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Material</th>
                                    <th scope="col">Color</th>
                                    <th scope="col">Talla</th>
                                    <th scope="col">Cantidad</th>
                                    <th scope="col">Precio</th>
                                    <th scope="col">Imagen</th>
                                    <th scope="col">Descripción</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%for (Indumentaria ind: indumentaria){%>
                                <tr>
                                    
                                    <th scope="row"><a href="/mvcOliari/indumentaria/details?codigo=<%=ind.getCodigo()%>"><%=ind.getCodigo()%> </a></th>
                                    <td><%=ind.getNombre()%></td>
                                    <td><%=ind.getMaterial()%></td>
                                    <td><%=ind.getColor()%></td>
                                    <td><%=ind.getTalla()%></td>
                                    <td><%=ind.getCantidad()%></td>
                                    <td><%=ind.getPrecio()%></td>
                                    <td><%=ind.getImagen()%></td>
                                    <td><%=ind.getDescripcion()%></td>

                                    <td><button type="button" class="btn btn-primary">
                                            <a href="<%=request.getContextPath()%>/indumentaria/edit?codigo=<%=ind.getCodigo()%>"><font color="white">Editar</font></a>
                                        </button>
                                    </td>
                                    <td><button type="button" class="btn btn-danger">
                                            <a href="<%=request.getContextPath()%>/indumentaria/delete?codigo=<%=ind.getCodigo()%>"><font color="white">Eliminar</font></a>
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