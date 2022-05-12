<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="pt-BR">
<head>
<meta charset="UTF-8">

<link href="/webjars/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="/webjars/bootstrap/css/bootstrap-theme.min.css"
	rel="stylesheet" />

<style type="text/css">
body {
	background: #eee !important;
}

.wrapper {
	margin-top: 80px;
	margin-bottom: 80px;
}

.form-signin {
	max-width: 380px;
	padding: 15px 35px 45px;
	margin: 0 auto;
	background-color: #fff;
	border: 1px solid rgba(0, 0, 0, 0.1);
	.
	form-signin-heading
	,
	.checkbox
	{
	margin-bottom
	:
	30px;
}

.checkbox {
	font-weight: normal;
}

.form-control {
	position: relative;
	font-size: 16px;
	height: auto;
	padding: 10px;
	@
	include
	box-sizing(border-box);
	&:
	focus
	{
	z-index
	:
	2;
}

}
input[type="text"] {
	margin-bottom: -1px;
	border-bottom-left-radius: 0;
	border-bottom-right-radius: 0;
}

input[type="password"] {
	margin-bottom: 20px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
}
</style>
</head>
<body>
	<div class="wrapper">

	
		<form class="form-signin" action="/loga" method="post">

			<h2 class="form-signin-heading">Fa�a seu login</h2>
			
			<c:if test="${not empty error}">
				<div class="alert alert-danger" role="alert">${error}</div>
			</c:if>

			<div class="form-group last mb-4">
				<input type="text" class="form-control" id="emailUsu" name="email"
					placeholder="Email" required />
			</div>

			<div class="form-group last mb-4">
				<input type="password" class="form-control" id="senhaUsu"
					name="senha" placeholder="Password" required />
			</div>		
			<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>

		</form>
	</div>
</body>
</html>