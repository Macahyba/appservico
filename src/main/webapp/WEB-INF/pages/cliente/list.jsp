<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap.min.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/main.css" />">	
<title>Listar Clientes</title>
</head>
<body>
	<div class="container-fluid">
		<%@include file="../header.jsp" %>
		<div class="row">
			<div class="col-2">
				<%@include file="../navbar.jsp" %>
			</div>
			<div class="col-8">
				<div class="row">
					<div class="col font-weight-bold text-center p-2 bg-info text-white">
						Listar Clientes
					</div>
				</div>
				<div class="row">
					<div class="col-3 font-weight-bold text-center p-3 mb-2 bg-dark text-white">
						Nome
					</div>
					<div class="col-3 font-weight-bold text-center p-3 mb-2 bg-dark text-white">
						E-mail
					</div>
					<div class="col font-weight-bold text-center p-3 mb-2 bg-dark text-white">
						Ações
					</div>						
				</div>
				<c:forEach var="cliente" items="${listaCliente}">
					<div class="row">
						<div class="col-3 text-center p-1 mb-1">
							${cliente.getNome()}
						</div>
						<div class="col-3 text-center p-1 mb-1">
							${cliente.getEmail()}
						</div>
						<div class="col text-center p-1 mb-1">
							<a href="<c:url value="/cliente/edit/${cliente.id}" />" class="btn btn-sm btn-outline-primary">Edit</a>
						</div>	
						
						<c:if test="${cliente.ativo == true}">
							<div class="col text-center p-1 mb-1">
								<a href="<c:url value="/cliente/disable/${cliente.id}" />" class="btn btn-sm btn-outline-warning">Desativar</a>
							</div>							
						</c:if>
						<c:if test="${cliente.ativo != true}">
							<div class="col text-center p-1 mb-1">
								<a href="<c:url value="/cliente/enable/${cliente.id}" />" class="btn btn-sm btn-outline-info">Ativar</a>
							</div>						
						</c:if>																										
						<div class="col text-center p-1 mb-1">
							<a href="<c:url value="/cliente/delete/${cliente.id}" />" class="btn btn-sm btn-outline-danger">Delete</a>
						</div>	
					</div>
				</c:forEach>					
			</div>
		</div>
	</div>
	
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.3.1.slim.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.bundle.min.js" />"></script>
</body>
</html>