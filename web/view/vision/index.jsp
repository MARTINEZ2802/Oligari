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
              <h1 class="m-0"><b>Visión de la empresa</b></h1>
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
        
        <center><font>Ser una empresa textil verticalmente integrada, innovadora, con productos textiles diversificados y de calidad, 
            cuya flexibilidad le permita atender a mercados de segmento alto, con diseños y colecciones. Todo ello respaldado en una 
            cultura de excelencia operativa, prontitud de respuesta, así como un alto nivel de atención a nuestros clientes; por medio 
            de personal capacitado y motivado que nos permita tener un crecimiento con rentabilidad sostenida.</font></center>
        <br>
        <center><img src="dist/img/Vision.png" height="350" width="700"></center>
        
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