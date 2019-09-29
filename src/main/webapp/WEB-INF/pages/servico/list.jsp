<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap.min.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/main.css" />">	
<title>Listar Serviços</title>
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
						Listar Serviços
					</div>
				</div>
				<div class="row">
					<div class="col-3 font-weight-bold text-center p-3 mb-2 bg-dark text-white">
						Cliente
					</div>
					<div class="col-3 font-weight-bold text-center p-3 mb-2 bg-dark text-white">
						Equipamento
					</div>
					<div class="col-3 font-weight-bold text-center p-3 mb-2 bg-dark text-white">
						Descricao
					</div>	
					<div class="col font-weight-bold text-center p-3 mb-2 bg-dark text-white">
						Acões
					</div>	
				</div>	
				<c:forEach var="servico" items="${listaServico}">
					<div class="row">
						<div class="col-3 text-center p-1 mb-1">
							${servico.getCliente().getNome()}
						</div>
						<div class="col-3 text-center p-1 mb-1">
							${servico.getEquipamento()}
						</div>
						<div class="col-3 text-center p-1 mb-1">
							${servico.getDescricao()}
						</div>							
						<div class="col text-center p-1 mb-1">
							<a href="<c:url value="/servico/edit/${servico.id}" />" class="btn btn-sm btn-outline-primary">Edit</a>
						</div>						
						<div class="col text-center p-1 mb-1">
							<a href="<c:url value="/servico/delete/${servico.id}" />" class="btn btn-sm btn-outline-danger">Delete</a>
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