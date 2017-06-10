<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
	<head>
		<title><spring:message code="titulo.formLogin" /></title>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta name="author" content="Equipo DopeTrope">
		<meta name="description" content="DeSoft ha creado un periódico digital con noticias desde todos los puntos de vista totalmente actualizadas">
		<meta name="keywords" content="deSoft, noticias, periódico digital, prensa">
		<link rel="shortcut icon" type="image/x-icon" href="recursos/images/logo.ico" />
		<link rel="stylesheet" href="recursos/assets/css/main.css" />
	
	</head>
	<body class="left-sidebar">
		<div id="page-wrapper">



			<!-- Main -->
				<div id="main-wrapper">
					<div class="container">
						<div class="row">
							<div class="4u 12u(mobile)">

								<!-- Sidebar -->
									<section class="box">
										<a href="#" class="image featured"><img src="recursos/images/login.png" alt="" /></a>
										<header>
											<h3><spring:message code="titulo.paginaAdmin"/></h3>
										</header>

									</section>

							</div>

							<div class="8u 12u(mobile) important(mobile)">

								<!-- Content -->
									<article class="box post">
									
										<header>
										<h2><spring:message code="login"/></h2>
										</header>

								<form action="login" method="POST">
	<table>
		<tr>
			<td><label for="name"><spring:message code="usuario" /></label></td>
			<td><input type="text" name ="name" autofocus></td>
		</tr>
		<tr>
			<td><label for="password"><spring:message code="password" /></label></td>
			<td><input type="password"  name ="password"></td>
		</tr>
		
	</table>
	
	<button type="submit"><spring:message code="entrar" /></button>
		</form>

									
										
									</article>

							</div>
						</div>
					</div>
				</div>

		
		<!-- Scripts -->
			<script src="recursos/assets/js/jquery.min.js"></script>
			<script src="recursos/assets/js/jquery.dropotron.min.js"></script>
			<script src="recursos/assets/js/skel.min.js"></script>
			<script src="recursos/assets/js/skel-viewport.min.js"></script>
			<script src="recursos/assets/js/util.js"></script>
			<script src="recursos/assets/js/main.js"></script>

	</body>
</html>