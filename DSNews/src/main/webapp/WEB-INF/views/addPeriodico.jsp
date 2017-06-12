<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>

<meta http-equiv="Content-Type" content="text/html, charset=ISO-8859-1">
<title><spring:message code="crear_periodico" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="author" content="Equipo DopeTrope">
<meta name="description" content="DeSoft ha creado un periódico digital con noticias desde todos los puntos de vista totalmente actualizadas">
<meta name="keywords" content="deSoft, noticias, periódico digital, prensa">
<link rel="shortcut icon" type="image/x-icon" href="recursos/images/logo.ico" />
<link rel="stylesheet" href="recursos/assets/css/main.css" />

	
	</head>
	
	<body class="left-sidebar">
		<div id="page-wrapper">

			<!-- Header -->
			<jsp:include page="common/loged_head.jsp"/>
				

			<!-- Main -->
				<div id="main-wrapper">
					<div class="container">
						<div class="row">
							<div class="4u 12u(mobile)">

								<!-- Sidebar -->
									<section class="box">
										<a href="#" class="image featured"><img src="recursos/images/newspaper.jpg" alt="" /></a>
										<header>
											<h3><spring:message code="titulo.periodico" /></h3>
										</header>

								
											<footer>
											<button onclick="javascript:history.back()"><spring:message code="volver" /></button>
										</footer>
									</section>

							</div>

							<div class="8u 12u(mobile) important(mobile)">

								<!-- Content -->
									<article class="box post">
									
										<header>
										<h2><spring:message code="crear_periodico" /></h2>
										</header>

										<form action="addPeriodico" method="POST">
		<table>
			<tr>
				<td><label for="name">Nombre</label></td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td><label for="logo">Logo</label></td>
				<td><input type="text" name="logo"></td>
			</tr>
			<tr>
				<td colspan="2"><button><spring:message code="crear" /></button></td>
			</tr>
		</table>
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