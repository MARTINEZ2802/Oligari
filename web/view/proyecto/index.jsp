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
              <h1 class="m-0"><b>Información del Proyecto</b></h1>
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
        <h3>Introducción</h3>
        <font>Este Plan de Proyecto tiene por finalidad presentar la propuesta que permite el desarrollo del STOCK IQ. 
                        En este documento se identifican los elementos necesarios de toda la planificación como objetivo del proyecto, entregables, 
                        alcances, tareas, duraciones, recursos, equipo de trabajo, estrategia de control de versiones; así como otros elementos claves 
                        a ser considerados en el Proyecto.</font>
        <h3>Propósito del producto</h3>
        <font>El propósito del producto es eliminar los procesos manuales y repetitivos que realiza el emprendimiento 
                            “Confecciones Oliari” para reemplazarlo con la implementación de un software de manufactura que permita agilizar sus procesos 
                            de producción, optimizar la planificación, registro de ventas,  hacer un seguimiento en tiempo real y mejorar la calidad de los 
                            productos. Todo ello tendrá como finalidad una mayor productividad y eficiencia en sus procesos para ganar ventaja competitiva 
                            con respecto a otras empresas del mismo rubro.</font>
        
        <h3>Requisitos funcionales de alto nivel del producto</h3>
                    <table border="1" align="center" cellspacing="0" class="tabla">
                        <tr>
                            <th class="sub">ID</th>
                            <th class="sub">Descripción</th>
                        </tr>
                        <tr>
                            <td class="iz">RF01</td>
                            <td>Ingresar información de una nueva materia prima al registro.</td>
                        </tr>
                        <tr>
                            <td class="iz">RF02</td>
                            <td>Consultar el stock de materia prima para la elaboración de productos.</td>
                        </tr>
                        <tr>
                            <td class="iz">RF03</td>
                            <td>Modificar información de una materia prima en específico dentro de los registros.</td>
                        </tr>
                        <tr>
                            <td class="iz">RF04</td>
                            <td>Buscar alguna materia prima en específico a partir de algún dato que la identifique.</td>
                        </tr>
                        <tr>
                            <td class="iz">RF05</td>
                            <td>Eliminar información de alguna materia primera del registro.</td>
                        </tr>
                        <tr>
                            <td class="iz">RF06</td>
                            <td>Ingresar información de una nueva indumentaria al registro.</td>
                        </tr>
                        <tr>
                            <td class="iz">RF07</td>
                            <td>Consultar el stock de indumentarias a la fecha.</td>
                        </tr>
                        <tr>
                            <td class="iz">RF08</td>
                            <td>Modificar información de alguna indumentaria en específico dentro de los registros (talla, precio, color, cantidad, etc.).</td>
                        </tr>
                        <tr>
                            <td class="iz">RF09</td>
                            <td>Buscar alguna indumentaria en específico a partir de algún dato que la identifique.</td>
                        </tr>
                        <tr>
                            <td class="iz">RF10</td>
                            <td>Eliminar información de alguna indumentaria del registro.</td>
                        </tr>
                        <tr>
                            <td class="iz">RF11</td>
                            <td>Ingresar información de un nuevo cliente al registro.</td>
                        </tr>
                        <tr>
                            <td class="iz">RF12</td>
                            <td>Modificar información de algún cliente en específico dentro de los registros.</td>
                        </tr>
                        <tr>
                            <td class="iz">RF13</td>
                            <td>Buscar algún cliente en específico a partir de algún dato que la identifique.</td>
                        </tr>
                        <tr>
                            <td class="iz">RF14</td>
                            <td>Generar reporte de Materia prima </td>
                        </tr>
                        <tr>
                            <td class="iz">RF15</td>
                            <td>Generar reporte de Indumentaria</td>
                        </tr>
                        <tr>
                            <td class="iz">RF16</td>
                            <td>Ingresar información de un nuevo pedido al registro.</td>
                        </tr>
                        <tr>
                            <td class="iz">RF17</td>
                            <td>Consultar la cantidad de pedidos a la fecha. </td>
                        </tr>
                        <tr>
                            <td class="iz">RF18</td>
                            <td>Modificar información de algún pedido en específico dentro de los registros (talla, precio, color, cantidad, etc.).</td>
                        </tr>
                        <tr>
                            <td class="iz">RF19</td>
                            <td>Buscar algún pedido en específico a partir de algún dato que la identifique.</td>
                        </tr>
                        <tr>
                            <td class="iz">RF20</td>
                            <td>Eliminar información de algún pedido del registro en caso ya haya sido atendido.</td>
                        </tr>
                        <tr>
                            <td class="iz">RF21</td>
                            <td>Generar cronograma de entregas de los pedidos para evitar incumplimiento o demora de entregas.</td>
                        </tr>
                        <tr>
                            <td class="iz">RF22</td>
                            <td>Generar comprobante de venta</td>
                        </tr>
                        <tr>
                            <td class="iz">RF23</td>
                            <td>Poder permitir el ingreso de cada usuario al sistema.</td>
                        </tr>
                        <tr>
                            <td class="iz">RF24</td>
                            <td>Manejar perfiles para el acceso de los usuarios a las opciones del menú según la responsabilidad de cada uno.</td>
                        </tr>
                        <tr>
                            <td class="iz">RF25</td>
                            <td>Ingresar información de un nuevo colaborador al registro.</td>
                        </tr>
                        <tr>
                            <td class="iz">RF26</td>
                            <td>Actualizar información de algún colaborador en específico a partir de la búsqueda mediante un identificador.</td>
                        </tr>
                        <tr>
                            <td class="iz">RF27</td>
                            <td>Eliminar información de algún colaborador del registro en caso ya haya sido atendido.</td>
                        </tr>
                    </table>
        <h3>Requisitos no funcionales de alto nivel del producto</h3>
                    <table border="1" align="center" cellspacing="0"  class="tabla">
                        <tr>
                            <th class="sub">ID</th>
                            <th class="sub">Descripción</th>
                        </tr>
                        <tr>
                            <td class="iz">RNF01</td>
                            <td>Generar y buscar cronogramas de turno de los colaboradores<br> su información y eliminar a los que ya no son parte de la empresa.</td>
                        </tr>
                        <tr>
                            <td class="iz">RNF02</td>
                            <td>Generar reportes mensuales de colaboradores permitiendo saber el inicio y término de contrato de los mismos</td>
                        </tr>
                        <tr>
                            <td class="iz">RNF03</td>
                            <td>Cambiar la contraseña desde la sesión de cada usuario en el sistema</td>
                        </tr>
                        <tr>
                            <td class="iz">RNF04</td>
                            <td>Registrar la información de los usuarios que accedan al sistema</td>
                        </tr>
                        <tr>
                            <td class="iz">RNF05</td>
                            <td>Realizar copias de seguridad de la información del sistema</td>
                        </tr>
                    </table>
        <h3>Alcance y Limitaciones</h3>
                    <font class="color">El Proyecto a nivel funcional comprende los siguientes módulos:</font>
                    <ul>
                        <li class="names"><b>Almacen</b></li>
                            
                                - Materia Prima<br>
                                - Indumentaria<br>
                                - Reportes
                            
                        <li class="names"><b>Ventas</b></li>
                            
                                - Cliente<br>
                                - Ventas
                            
                        <li class="names" ><b>Recursos Humanos</b></li>
                            
                                - Personal<br>
                                - Horario<br>
                                - Reportes
                            
                        <li class="names"><b>Seguridad</b></li>
                            
                                - Usuario<br>
                                - Sesión<br>
                                - Reportes<br>
                                - Backup<br>
                    </ul>
        <h3>Cronograma de Entregas</h3>
                    <CENTER><IMG src="dist/img/GANT.png" width="1000" height="405"/></CENTER>

                    <h2><b>Modeos de Caso de Uso</b></h2>
                    <h3>Diagrama de caso de uso general</h3>
                    <CENTER><img src="dist/img/DCU_General.png" height="600" width="1150"></CENTER>
                    <h3>Caso de Uso de Almacen</h3>
                    <CENTER><img src="dist/img/DCU_Almacen.png" height="350" width="550"></CENTER>
                    <h3>Caso de Uso de Ventas</h3>
                    <CENTER><img src="dist/img/DCU_Ventas.png" height="350" width="550"></CENTER>
                    <h3>Caso de Uso de RRHH</h3>
                    <CENTER><img src="dist/img/DCU_RRHH.png" height="350" width="550"></CENTER>
                    <h3>Caso de Uso de Seguridad</h3>
                    <CENTER><img src="dist/img/DCU_Seguridad.png" height="350" width="550"></CENTER>
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
