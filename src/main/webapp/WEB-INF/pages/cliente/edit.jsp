<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap.min.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/main.css" />">	
<title>Editar Cliente</title>
</head>
<body>
	<div class="container-fluid">
		<%@include file="../header.jsp" %>
		<div class="row">
			<div class="col-3">
				<%@include file="../navbar.jsp" %>
			</div>
			<div class="col-8">
				<c:if test="${error != null}">
					<div class="row">
						<div class="col text-center p-2 mb-2 alert-danger">
							${error}
						</div>
					</div>
				</c:if>			
				<div class="row">
					<div class="col font-weight-bold text-center p-2 mb-2 bg-info text-white">
						Editar Cliente
					</div>
				</div>
				<div class="row">				
					<div class="col">
						<form:form action="${pageContext.servletContext.contextPath}/cliente/update"  method="post" modelAttribute="cliente">
				
							<div class="input-group mb-3">
								<div class="input-group-prepend">
							    	<span class="input-group-text">Nome</span>
								</div>
								<form:input type="text" class="form-control" path="nome" value="${cliente.nome}" />
				
							</div>				
							<div class="input-group mb-3">
								<div class="input-group-prepend">
							    	<span class="input-group-text">E-mail</span>
								</div>
								<form:input type="text" class="form-control" path="email" value="${cliente.email}" />
				
							</div>			
							<div class="input-group mb-3">
								<div class="input-group-prepend">
							    	<span class="input-group-text">Ativo?</span>
								</div>
								<form:select class="custom-select" path="ativo" >
									<form:option value="true">Ativo</form:option>
									<form:option value="false">Inativo</form:option>
								</form:select>
				
							</div>
			
							<form:input type="hidden" path="id" value="${cliente.id}" />									
			
							<p>
					    		<input id="submit" class="btn btn-outline-success" type="submit" value="Salvar" />
					    		<button id="back" class="btn btn-outline-info"onclick="goBack()">Go Back</button>
				    		</p>
										
							<a href="<c:url value="/index" />" class="btn btn-link">Home</a>
				
						</form:form>	
					</div>	
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.3.1.slim.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.bundle.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/script.js" />"></script>
</body>
</html>