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
              <h1 class="m-0"><b>Miembros del grupo</b></h1>
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
          <center>
          <table border="0">
              <tr>
                  <th colspan="5"><center><h1><b>INTEGRANTES</b></h1></center></th>

              </tr>
              <tr>
                  <td><center><img src="dist/img/grupo/julio.PNG" height="200" width="200"></center></td>
                  <td><center><img src="dist/img/grupo/xio.PNG" height="200" width="200"></center></td>
                  <td><center><img src="dist/img/grupo/daniel.PNG" height="200" width="200"></center></td>
                  <td><center><img src="dist/img/grupo/victor.PNG" height="200" width="200"></center></td>
                  <td><center><img src="dist/img/grupo/angello.PNG" height="200" width="200"></center></td>
              </tr>
              <tr>
                  <td><center><b>Julio Agurto</b></center></td>
                  <td><center><b>Xiomara Muñoz</b></center></td>
                  <td><center><b>Daniel Ramos</b></center></td>
                  <td><center><b>Víctor Rueda</b></center></td>
                  <td><center><b>Angello Velasquez</b></center></td>
              </tr>

          </table>
          </center>
        
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