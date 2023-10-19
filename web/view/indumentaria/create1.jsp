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
                        
                        <form action="<%=request.getContextPath()%>/indumentaria/store" method="post" >
                            Código: <input type="text" name="codigo"><br>
                            Nombre: <input type="text" name="nombre"><br>
                            Material: <input type="text" name="meterial" ><br>
                            Color: <input type="text" name="color"><br>
                            Talla: <input type="text" name="talla"><br>
                            Cantidad <input type="text" name="cantidad"><br>
                            Precio <input type="text" name="precio"><br>
                            Imagen <input type="text" name="imagen"><br>
                            Descripción <input type="text" name="descripcion"><br>
                            <input type="submit" value="enviar">
                        </form>  
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
