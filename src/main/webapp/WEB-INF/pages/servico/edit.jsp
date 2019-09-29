<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap.min.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/main.css" />">	
<title>Editar Servico</title>
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
					<div class="col font-weight-bold text-center p-2 mb-2 bg-info text-white">
						Editar Serviço
					</div>
				</div>		
				<div class="row">				
					<div class="col">
						<form:form action="${pageContext.servletContext.contextPath}/servico/update"  method="post" modelAttribute="servico">
		
							<div class="input-group mb-3">
								<div class="input-group-prepend">
				    				<span class="input-group-text">Cliente</span>
								</div>
								<form:select class="custom-select" path="cliente.id" >
									<c:forEach var="cliente" items="${listaClientes}">
										<form:option value="${cliente.id}">${cliente.nome}</form:option>
									</c:forEach>
								</form:select>
							</div>	
							<div class="input-group mb-3">
								<div class="input-group-prepend">
							    	<span class="input-group-text">Equipamento</span>
								</div>
								<form:input type="text" class="form-control" path="equipamento" id="equipamento" value="${servico.equipamento}" />
				
							</div>				
							<div class="input-group mb-3">
								<div class="input-group-prepend">
							    	<span class="input-group-text">Descrição</span>
								</div>
								<form:input type="text" class="form-control" path="descricao" id="descricao" value="${servico.descricao}"/>
				
							</div>				
							
							<form:input type="hidden" path="id" value="${servico.id}" />
			
					    	<input class="btn btn-outline-success" type="submit" value="Salvar">			
							
							<a href="<c:url value="/index" />" class="btn btn-link">Home</a>
		
						</form:form>	
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.3.1.slim.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.bundle.min.js" />"></script>
</body>
</html>