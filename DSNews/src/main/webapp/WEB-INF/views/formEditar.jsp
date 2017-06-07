<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
	<head>
		<title><spring:message code="titulo.formEditar" /></title>
		<meta http-equiv="Content-Type" content="text/html, charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta name="author" content="Equipo DopeTrope">
		<meta name="description" content="DeSoft ha creado un peri�dico digital con noticias desde todos los puntos de vista totalmente actualizadas">
		<meta name="keywords" content="deSoft, noticias, peri�dico digital, prensa">
		<link rel="shortcut icon" type="image/x-icon" href="recursos/images/logo.ico" />
		<link rel="stylesheet" href="recursos/assets/css/main.css" />
		<script src="https://cloud.tinymce.com/stable/tinymce.min.js"></script>
  		<script>tinymce.init({ selector:'textarea' });</script>
	</head>
	<body class="left-sidebar">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header-wrapper">
					<div id="header">
					

			<!-- Main -->
				<div id="main-wrapper">
					<div class="container">
						<div class="row">
							<div class="4u 12u(mobile)">

								<!-- Sidebar -->
									<section class="box">
										<a href="#" class="image featured"><img src="recursos/images/editar.jpg" alt="" /></a>
										<header>
											<h3><spring:message code="titulo.paginaAdmin" /></h3>
										</header>

								
										<footer>
											
										</footer>
									</section>

									

							</div>
							<div class="8u 12u(mobile) important(mobile)">

								<!-- Content -->
									<article class="box post">
									
										<header>
										<h2><spring:message code="editar_noticia" /></h2>
										</header>

										<form action="editar">
<input type="hidden" name = "guid" value="${guid}">
<table>
	<tr>
		<td><label for="link"><spring:message code="link" /></label></td>
		<td><input type="text" name="link" value="${article.link}"></td>
	</tr>
	<tr>
		<td><label for="title"><spring:message code="titular" /></label></td>
		<td><input type="text" name="title" value="${article.title}"></td>
	</tr>
	<tr>
		<td><label for="content"><spring:message code="contenido" /></label></td>
 		<td><textarea name="content">${article.content}</textarea></td>
	<tr>
		<td><label for="pubDate"><spring:message code="fecha_publicacion" /></label></td>
		<td><input type="Date" name="pubDate" value="${article.pubDate}"></td>
	</tr>
	<tr>
		<td><label for="description"><spring:message code="descricion" /></label></td>
		<td><input type="text" name="description" value="${article.description}"></td>
	</tr>
	<tr>
		<td><label for="channelid"><spring:message code="id_periodico" /></label></td>
		<td><input type="number" name="channelid" value="${article.channelId}"></td>
	</tr>
	<tr>
		<td><label for="sectionid"><spring:message code="id_seccion" /></label></td>
		<td><input type="number" name="sectionid" value="${article.sectionId}"></td>
	</tr>
	<tr>
		<td><label for="keywords"><spring:message code="keywords" /></label></td>
		<td><input type="text" name="keywords" value="${article.keywords}"></td>
	</tr>
	<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
	<tr>
		<td></td><td><button><spring:message code="terminar" /></button></td>
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