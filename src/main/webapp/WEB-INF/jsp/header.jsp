<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="br">
<head>
<meta charset="UTF-8">

<link href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
<link href="webjars/bootstrap/3.3.7/css/bootstrap-theme.min.css" rel="stylesheet" />

<c:url value="/css/navbar.css" var="jstlCss" />

<link href="${jstlCss}" rel="stylesheet" />

</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top ">
		<div class="container">
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li>
					   <a> Bem-vindo: <span style="text-transform: uppercase">${ usuarioNome}</span>
					   </a>
					</li>
					<li>
						<figure class="imagem">
								<img src="data:image/jpeg;base64,${fotoUsuario}" alt="autor">
						</figure>
					</li>
					<li>
						 <a href="<c:url value="/logout"/>">
						 <span class="glyphicon glyphicon-log-in"></span> Logout</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
</body>

</html>