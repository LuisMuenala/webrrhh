<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<nav></nav>
	 	<section class="py-5 px-5">
	 		<div class="container">
	 			<h1>Eliminar Usuario
	 			<i class="fa-solid fa-user-minus"></i>
	 			</h1>
					<form action="del" method="get">
						<input type="hidden" id="idContratacionDetalle" name="idContratacionDetalle" value="${contratacionDetalle.idContratacionDetalle}"/>
							<strong>¿Desea Eliminar el dato?</strong>
				        	<br><br>
						
							<button class="btn btn-danger" type="submit">
							Eliminar
							<i class="fa-solid fa-user-minus"></i>
							</button>
					
						 	<button class="btn btn-primary" type="button" onclick="window.location.href='/rrhh-web/contratacionDetalle/findAll';return false;">
				          	CANCELAR 
				          	<i class="fa-solid fa-xmark"></i>
				          	</button>
						
					</form>
	 		</div>
	 	</section>	
</body>
</html>