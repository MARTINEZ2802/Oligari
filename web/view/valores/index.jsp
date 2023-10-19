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
              <h1 class="m-0"><b>Valores de la empresa</b></h1>
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

            <ul>
                <li><b>Respeto</b></li>
                “Respetamos y valoramos a todas las personas en la empresa, por ello cumplimos con las normas y políticas internas, 
                velando por el buen clima laboral”.<br>
                <li><b>Calidad</b></li>
                “Buscamos la calidad integral de nuestros colaboradores, procesos y productos, de acuerdo a las actuales exigencias 
                del mercado y la globalización”. <br>
                <li><b>Innovación</b></li>
                “Somos abiertos a los cambios, buscamos la mejora continua y diferenciación competitiva a partir de la investigación, 
                análisis y creatividad”<br>
                <li><b>Trabajo en equipo</b></li>
                “Ponemos a disposición del equipo nuestra confianza, talentos y entusiasmo para alcanzar los objetivos comunes con 
                resultados superiores”.<br>
                <li><b>Responsabilidad social</b></li>
                “Estamos comprometidos con el uso racional y responsable de los recursos, generando productos que mejoren la calidad 
                de vida de nuestros colaboradores, clientes, sociedad y el cuidado del medio ambiente, a través del crecimiento económico 
                y competitividad de nuestra empresa”.
            </ul>

        <br>
        <center><img src="dist/img/equipo.jpg" height="350" width="550"></center>
        
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