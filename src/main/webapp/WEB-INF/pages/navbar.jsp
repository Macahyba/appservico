			<nav class="sidebar">
				<div class="sidebar-sticky">
					<ul class="nav flex-column">
						<li class="nav-item">
							<img class="mr-2" src="<c:url value="/resources/img/user.svg" />"/>
							<button class="btn btn-link dropdown-toggle" type="button" data-toggle="collapse" data-target="#clientes">Clientes</button>
						</li>
						<div class="collapse multi-collapse" id="clientes">
							<li class="nav-item">
								<a href="<c:url value="/cliente/list" />" class="nav-link" >
								<img class="mr-2" src="<c:url value="/resources/img/users.svg" />"/>Listar clientes</a>
							</li>
							<li class="nav-item">
								<a href="<c:url value="/cliente/form" />" class="nav-link">
								<img class="mr-2" src="<c:url value="/resources/img/user-add.svg" />"/>Criar novo cliente</a>
							</li>
						</div>											
						<li class="nav-item">
							<img class="mr-2" src="<c:url value="/resources/img/servico.svg" />"/>
							<button class="btn btn-link dropdown-toggle" type="button" data-toggle="collapse" data-target="#servicos">Servicos</button>
						</li>
						<div class="collapse multi-collapse" id="servicos">
							<li class="nav-item">
								<a href="<c:url value="/servico/list" />" class="nav-link">
								<img class="mr-2" src="<c:url value="/resources/img/lista-servico.svg" />"/>Listar servicos</a>
							</li>						
							<li class="nav-item">
								<a href="<c:url value="/servico/form" />" class="nav-link">
								<img class="mr-2" src="<c:url value="/resources/img/new.svg" />"/>Criar novo servico</a>
							</li>						
						</div>
					</ul>
				</div>
			
			</nav>