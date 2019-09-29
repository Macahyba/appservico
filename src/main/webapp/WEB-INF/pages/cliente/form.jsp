<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap.min.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/main.css" />">	
<title>Adicionar Cliente</title>
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
						Adicionar Cliente
					</div>
				</div>
				<div class="row">
					<div class="col">
						<form:form action="${pageContext.servletContext.contextPath}/cliente/add"  method="post" modelAttribute="cliente">
				
							<div class="input-group mb-3">
								<div class="input-group-prepend">
							    	<span class="input-group-text">Nome</span>
								</div>
								<form:input type="text" class="form-control" path="nome" />
				
							</div>				
							<div class="input-group mb-3">
								<div class="input-group-prepend">
							    	<span class="input-group-text">E-mail</span>
								</div>
								<form:input type="text" class="form-control" path="email" />
				
							</div>				
			
					    	<input class="btn btn-outline-success" type="submit" value="Salvar" />
			
							
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