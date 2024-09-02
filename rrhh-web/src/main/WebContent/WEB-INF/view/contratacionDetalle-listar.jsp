<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Sistema Libreria</title>
	<%-- comertario --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<style>
	#titulo {
	text-align: center; 
	color: orange;
	background-color: #4CAF50;
	left: 0;
	position: absolute;
	width: 100%;
	top: 2;
	}
	footer {
            background-color: orange; /* Color celeste */
            padding: 1px; /* Espaciado interno */
            text-align: center; /* Centra el texto */
            font-size: 18px; /* Tamaño de fuente */
            color: black; /* Color del texto */
            position: fixed; /* Fija el footer al fondo */
            width: 100%; /* Ancho completo */
            bottom: 0; /* Posición inferior */
            left: 0;
        }
	
	
		.barra-color {
	    width: 100%;
	    height: 10px; /* Altura de la barra */
	    background-color: orange; /* Color de la barra */
	    position: absolute;
	    top: 0;
	    left: 0;
		}
		
	
	</style>
	
</head>

<body>

<nav></nav>
	
	<h1 id="titulo" class="py-1 bg-light "> Contratación Detalle </h1>
	<section class="px-5 py-3">
		<div class="container">
			
				<div class="container py-5" style="text-align: center;">
					<button class="btn btn-primary" onclick="window.location.href='/rrhh-web/contratacionDetalle/findOne?opcion=1'; return false;"> 
					Agregar
					<i class="fa-solid fa-plus"></i>
					</button>
				</div>
			
			<div class="table-responsive">
					<table id="tabla1"
							name="tabla1"
							data-height="500"
							data-search="true"
							data-pagination="true"
							data-toggle="tabla1"
							data-tollbar=".toolbar"
							class="table table-striped table-sm"
							 >
				 	<thead>
				 		<tr style="background-color:lightblue;">
					 		<th data-field="Id Contratación Detalle" data-sortable="true"> Contratación Detalle</th>
					 		<th data-field="Contratación" data-sortable="true"> Contratación</th>
					 		<th data-field="Empleado" data-sortable="true"> Empleado</th>
					 		<th data-field="Tipo Contrato" data-sortable="true"> Tipo Contrato</th>
					 		<th data-field="Sucursal" data-sortable="true"> Sucursal</th>
					 		<th data-field="Academia Título" data-sortable="true"> Academia Título</th>
					 		<th data-field="Academia País" data-sortable="true"> Academia País</th>
					 		<th data-field="Academia Nivel" data-sortable="true"> Academia Nivel</th>
					 		<th data-field="Academia Área" data-sortable="true"> Academia Area</th>
					 		<th data-field="Academia Institución" data-sortable="true"> Academia Institución</th>
					 		<th data-field="Academia Nivel Estado" data-sortable="true"> Academia Nivel Estado</th>
					 		<th data-field="Academia Certificado" data-sortable="true"> Academia Certificado</th>
					 		<th data-field="Academia Nivel Idioma Ingles" data-sortable="true"> Academia Nivel Idioma Ingles</th>
					 		<th data-field="Academia Nivel Idioma Otro" data-sortable="true"> Academia Nivel Idioma Otro</th>
					 		
					 		<th data-field="Explab Nivel" data-sortable="true"> Explab Nivel</th>
					 		<th data-field="Explab Tiempo Años" data-sortable="true"> Explab Tiempo Años</th>
					 		<th data-field="Sueldo Estimado" data-sortable="true"> Sueldo Estimado</th>
					 		<th data-field="Sueldo Aprobado" data-sortable="true"> Sueldo Aprobado</th>
					 		<th data-field="Días Vacaciones" data-sortable="true"> Días Vacaciones</th>
					 		<th data-field="Aprobado Contratación" data-sortable="true"> Aprobado Contratación</th>
					 		<th data-field="Fecha Inicio Contratación" data-sortable="true"> Fecha Inicio Contratación</th>
					 		<th data-field="Fecha Fin Contratación" data-sortable="true"> Fecha Fin Contratación</th>
					 		<th data-field="Hoja de Vida" data-sortable="true"> Hoja de Vida</th>
					 		<th data-field="Foto" data-sortable="true"> Foto</th>
					 		<th data-field="Acciones" data-sortable="true"> Acciones</th>
					 		
				 		</tr>
				 	</thead>	
				 	
				 	<tbody>
				 		<c:forEach var="item" items="${contratacionDetalle}">  
				 	
					 		<tr>
						 		<td>${item.idContratacionDetalle}</td>
								<td>${item.idContratacion}</td>
								<td>${item.idEmpleado}</td>
								<td>${item.idTipoContrato}</td>
								<td>${item.idSucursal}</td>
								<td>${item.academiaTitulo}</td>
								<td>${item.academiaPais}</td>
					 			<td>${item.academiaNivel}</td>
					 			<td>${item.academiaArea}</td>
					 			<td>${item.academiaInstitucion}</td>
					 			<td>${item.academiaNivelEstado}</td>
					 			<td>${item.academiaCertificado}</td>
					 			<td>${item.academiaNivelIdiomaIngles}</td>
					 			<td>${item.academiaNivelIdiomaOtro}</td>
					 			<td>${item.explabNivel}</td>
					 			<td>${item.explabTiempoAnios}</td>
					 			<td>${item.sueldoEstimado}</td>
					 			<td>${item.sueldoAprobado}</td>
					 			<td>${item.diasVacaciones}</td>
					 			<td>${item.aprobadoContratacion}</td>
					 			<td>${item.fechaInicioContratacion}</td>
					 			<td>${item.fechaFinContratacion}</td>
					 			<td>${item.hojaVida}</td>
					 			<td>${item.foto}</td>
				 			
				 				<td>
						 			<button class="btn btn-success" onclick="window.location.href='/rrhh-web/contratacionDetalle/findOne?idContratacionDetalle=${item.idContratacionDetalle}&opcion=1'; return false;"> Actualizar
									<i class="fa-solid fa-arrows-rotate"></i>
									</button>
							
						 			<button class="btn btn-danger" onclick="window.location.href='/rrhh-web/contratacionDetalle/findOne?idContratacionDetalle=${item.idContratacionDetalle}&opcion=2'; return false;"> Eliminar
									<i class="fa-solid fa-trash"></i>
									</button>
									
					 			</td>
			 			
			 			
				 			</tr>
				 		</c:forEach>				 					
				 	</tbody>
				</table>
			</div>	
		</div>		
	</section>
	<div class="barra-color" ></div>  
<footer>
        Desarrollo de software
</footer>

	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
	<script type="text/javascript">
		var $tabla1 = $('#tabla1')
		$(function (){
			$tabla1.bootstrapTable({
				sortReset: true
			})
		})
		
	</script>
	
</body>
</html>