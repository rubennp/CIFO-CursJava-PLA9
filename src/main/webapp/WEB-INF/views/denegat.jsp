<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		<title>PLA 9 - Acc�s denegat</title>
	</head>
	<body class="container">
		<%@ include file = "header.jsp" %>
		<h1 class="text-danger">Acc�s denegat</h1>
		<p>Usuario: <sec:authentication property="principal.username" /></p>
		<p>Roles: <sec:authentication property="principal.authorities" /></p>
		<a href="${pageContext.request.contextPath}/" class="btn btn-outline-primary">Tornar a l'inici</a>
		<form:form action="${pageContext.request.contextPath}/logout" method="POST">
			<button type="submit" class="btn btn-warning">Salir</button>
		</form:form>
		
		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<!-- Popper JS -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
		<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	</body>
</html>