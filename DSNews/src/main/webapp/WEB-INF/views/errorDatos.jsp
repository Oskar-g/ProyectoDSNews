<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><spring:message code="titulo.errorDatos" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="author" content="Equipo DopeTrope">
<meta name="description" content="DeSoft ha creado un periódico digital con noticias desde todos los puntos de vista totalmente actualizadas">
<meta name="keywords" content="deSoft, noticias, periódico digital, prensa">
<link rel="shortcut icon" type="image/x-icon" href="recursos/images/logo.ico" />
		<link rel="stylesheet" href="recursos/assets/css/main.css" />
		
	</head>
	<body class="no-sidebar">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header-wrapper">
					<div id="header">
					<img src="recursos/images/pic01.png" alt="Foto de deSoft" class="imagen">

						
			<!-- Main -->
				<div id="main-wrapper">
					<div class="container">

						<!-- Content -->
							<article class="box post">
								
								<header>
									<h2><spring:message code="mensaje_error"/></h2>
									
								</header>
					<script>window.setTimeout('window.location="formCrear";',3000);</script>
								
							</article>

					</div>
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