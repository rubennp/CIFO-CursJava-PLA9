<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		<title>PLA 9 - Accés denegat</title>
	</head>
	<body class="container">
		<%@ include file = "header.jsp" %>
		<div class="text-center">
			<h1 class="text-danger display-1">Accés denegat</h1>
			<div class = "m-5 p-5" style="background-color: #e0e0e0;">
			<h2 class="lead">No teniu permisos per accedir a aquesta àrea:</h2>
			<dl>
				<dt>Usuari</dt>
				<dd><sec:authentication property="principal.username" /></dd>
				<dt>Rols</dt>
				<dd><sec:authentication property="principal.authorities" /></dd>
			</dl>
			</div>
				<div class="row justify-content-end">
					<sec:authorize access = "hasRole('ADMIN')">
						<a href="${pageContext.request.contextPath}/admin/" class="btn btn-outline-secondary btn-sm">Pàgina d'Administrador</a>
					</sec:authorize>
					<sec:authorize access = "hasRole('EDITOR')">
						<a href="${pageContext.request.contextPath}/editor/" class="btn btn-outline-secondary btn-sm">Pàgina d'Editor</a>
					</sec:authorize>
					<sec:authorize access = "hasRole('COLABORADOR')">
						<a href="${pageContext.request.contextPath}/colaborador/" class="btn btn-outline-secondary btn-sm">Pàgina de Col·laborador</a>
					</sec:authorize>
					<a href="${pageContext.request.contextPath}/" class="btn btn-outline-primary btn-sm ml-4">Tornar a l'inici</a>
					<form:form action="${pageContext.request.contextPath}/logout" method="POST">
						<button type="submit" class="btn btn-warning btn-sm ml-1">Tancar sessió</button>
					</form:form>
				</div>
		</div>
		
		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<!-- Popper JS -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
		<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	</body>
</html>