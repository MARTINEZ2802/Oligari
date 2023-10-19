<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Starter</title>
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
              <h1 class="m-0"><b>Situación Actual de la Empresa Oliari</b></h1>
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
        
        <center><font>Actualmente la empresa Oliari viene realizando todas sus actividades de manera manual, lo cual 
            genera ciertos retrasos e inconvenientes debido al tiempo que lleva a cabo registrar una venta de clientes
            o realizar un reporte de ventas mensuales o semanales.
            Aquí se muestran algunas imagenes de los registros manuales:</font></center>
        <br>
        <br>
        <center><img src="dist/img/manual5.jpg" height="350" width="700"></center><br>
        <center><img src="dist/img/manual4.jpg" height="350" width="700"></center>
        
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

