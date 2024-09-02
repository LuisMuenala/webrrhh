<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Sistema Add</title>
	<%-- comertario --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

	<nav></nav>
		<section class="py-5 px-5">
			<div class="container" >
			
				<form action="add" method="post">
					<h1>Clientes
						<i class="fa-regular fa-user"></i>
					</h1>
					<br>
					<input type="hidden" id="idContratacionDetalle" name="idContratacionDetalle" value="${contratacionDetalle.idContratacionDetalle}"/>
					
					<div class="form-group">
						<label for="idContratacion" class="form-label">Contratación ID</label>
						<input class="form-control" type="number" id="idContratacion" name="idContratacion" value="${contratacionDetalle.idContratacion}"/>
					</div>
					
					<div class="form-group">
						<label for="idEmpleado" class="form-label">Empleado ID</label>
						<input class="form-control" type="number" id="idEmpleado" name="idEmpleado" value="${contratacionDetalle.idEmpleado}"/>
					</div>
					
					<div class="form-group">
						<label for="idTipoContrato" class="form-label">Tipo Contrato ID</label>
						<input class="form-control" type="number" id="idTipoContrato" name="idTipoContrato" value="${contratacionDetalle.idTipoContrato}"/>
					</div>
					
					<div class="form-group">					
						<label for="idSucursal" class="form-label">Sucursal ID</label>
						<input class="form-control" type="number" id="idSucursal" name="idSucursal" value="${contratacionDetalle.idSucursal}"/>
					</div>
					
					<div class="form-group">					
						<label for="academiaTitulo" class="form-label">Academia Título</label>
						<input class="form-control" type="text" id="academiaTitulo" name="academiaTitulo" value="${contratacionDetalle.academiaTitulo}"/>
					</div>
					
					<div class="form-group">					
						<label for="academiaPais" class="form-label">Academia País</label> 
						<input class="form-control" type="text" id="academiaPais" name="academiaPais" value="${contratacionDetalle.academiaPais}"/>
					</div>
					
					<div class="form-group">
						<label for="academiaNivel" class="form-label">Academia Nivel</label> 
						<input class="form-control" type="text" id="academiaNivel" name="academiaNivel" value="${contratacionDetalle.academiaNivel}"/>
					</div>
					
					<div class="form-group">
						<label for="academiaArea" class="form-label">Academia Area</label> 
						<input class="form-control" type="text" id="academiaArea" name="academiaArea" value="${contratacionDetalle.academiaArea}"/>
					</div>
					
					<div class="form-group">
						<label for="academiaInstitucion" class="form-label">Academia Institución</label> 
						<input class="form-control" type="text" id="academiaInstitucion" name="academiaInstitucion" value="${contratacionDetalle.academiaInstitucion}"/>
					</div>
					
					<div class="form-group">
						<label for="academiaNivelEstado" class="form-label">Academia Nivel Estado</label> 
						<input class="form-control" type="text" id="academiaNivelEstado" name="academiaNivelEstado" value="${contratacionDetalle.academiaNivelEstado}"/>
					</div>
					
					<div class="form-group">
						<label for="academiaCertificado" class="form-label">Academia Certificado</label> 
						<input class="form-control" type="text" id="academiaCertificado" name="academiaCertificado" value="${contratacionDetalle.academiaCertificado}"/>
					</div>
					
					<div class="form-group">							
						<label for="academiaNivelIdiomaIngles" class="form-label">Academia Nivel Idioma Ingles</label>  
						<input class="form-control" type="text" id="academiaNivelIdiomaIngles" name="academiaNivelIdiomaIngles" value="${contratacionDetalle.academiaNivelIdiomaIngles}"/>
					</div>
					
					<div class="form-group">
						<label for="academiaNivelIdiomaOtro" class="form-label">Academia Nivel Idioma Otro</label> 
						<input class="form-control" type="text" id="academiaNivelIdiomaOtro" name="academiaNivelIdiomaOtro" value="${contratacionDetalle.academiaNivelIdiomaOtro}"/>
					</div>
					
					<div class="form-group">
						<label for="explabNivel" class="form-label">Explab Nivel</label> 
						<input class="form-control" type="text" id="explabNivel" name="explabNivel" value="${contratacionDetalle.explabNivel}"/>
					</div>
					
					<div class="form-group">	
						<label for="explabTiempoAnios" class="form-label">Explab Tiempo Años</label> 
						<input class="form-control" type="number" id="explabTiempoAnios" name="explabTiempoAnios" value="${contratacionDetalle.explabTiempoAnios}"/>
					</div>
					
					<div class="form-group">
						<label for="sueldoEstimado" class="form-label">Sueldo estimado</label>  
						<input class="form-control" type="number" id="sueldoEstimado" name="sueldoEstimado" value="${contratacionDetalle.sueldoEstimado}"/>
					</div>
					
					<div class="form-group">
						<label for="sueldoAprobado" class="form-label">Sueldo Aprobado</label>  
						<input class="form-control" type="number" id="sueldoAprobado" name="sueldoAprobado" value="${contratacionDetalle.sueldoAprobado}"/>
					</div>
					
					<div class="form-group">
						<label for="diasVacaciones" class="form-label">Días Vacaciones</label>   
						<input class="form-control" type="number" id="diasVacaciones" name="diasVacaciones" value="${contratacionDetalle.diasVacaciones}"/>
					</div>
					
					<div class="form-group">
						<label for="aprobadoContratacion" class="form-label">Aprobado Contratación</label>   
						<input class="form-control" type="text" id="aprobadoContratacion" name="aprobadoContratacion" value="${contratacionDetalle.aprobadoContratacion}"/>
					</div>
					
					<div class="form-group">
						<label for="fechaInicioContratacion" class="form-label">Fecha Inicio Contratación</label>   
						<input class="form-control" type="date" id="fechaInicioContratacion" name="fechaInicioContratacion" value="${fn:substring(contratacionDetalle.fechaInicioContratacion,0,10)}"/>
					</div>
					
					<div class="form-group">
						<label for="fechaFinContratacion" class="form-label">Fecha Fin Contratación</label>    
						<input class="form-control" type="date" id="fechaFinContratacion" name="fechaFinContratacion" value="${fn:substring(contratacionDetalle.fechaFinContratacion,0,10)}"/>
					</div>
					
					<div class="form-group">
						<label for="hojaVida" class="form-label">Hoja de Vida</label>   
						<input class="form-control" type="text" id="hojaVida" name="hojaVida" value="${contratacionDetalle.hojaVida}"/>
					</div>
					
					<div class="form-group">
						<label for="hojaVida" class="form-label">Foto</label>   
						<input class="form-control" type="text" id="foto" name="foto" value="${contratacionDetalle.foto}"/>
					</div>	
					<br>
					<button class="btn btn-primary" type="submit">Guardar
					<i class="fa-regular fa-user"></i>
					</button>
					
					<button class="btn btn-danger" type="button" onclick="window.location.href='/rrhh-web/contratacionDetalle/findAll'; return false;">
					Cancelar
					<i class="fa-solid fa-xmark"></i>
					</button>
					
				</form>
			</div>
		</section>
	<footer></footer>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
	<script>
		// Example starter JavaScript for disabling form submissions if there are invalid fields
			(() => {
			  'use strict'
		 
			  // Fetch all the forms we want to apply custom Bootstrap validation styles to
			  const forms = document.querySelectorAll('.needs-validation')
		 
			  // Loop over them and prevent submission
			  Array.from(forms).forEach(form => {
			    form.addEventListener('submit', event => {
			      if (!form.checkValidity()) {
			        event.preventDefault()
			        event.stopPropagation()
			      }
		 
			      form.classList.add('was-validated')
			    }, false)
			  })
			})()
		
		</script>	
</body>
</html>