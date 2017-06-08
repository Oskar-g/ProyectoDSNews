<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title><spring:message code="titulo.paginaAdmin" /></title>
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
				<div id="header-wrapper">
					<div id="header">
						
					</div>
				</div>

			<!-- Main -->
				<div id="main-wrapper">
					<div class="container">
						<div class="row">
							<div class="4u 12u(mobile)">

								<!-- Sidebar -->
									<section class="box">
										<a href="#" class="image featured"><img src="recursos/images/admin.png" alt="" /></a>
										<header>
											<h3><spring:message code="buscador"/></h3>
										</header>

								<form action="buscarIndex" method="post">
									<input type="radio" name="filter" value="titular"> <spring:message code="titular" />
									<input type="radio" name="filter" value="content"> <spring:message code="contenido" /> 
									<input type="radio" name="filter" value="id"> <spring:message code="id" />  
									<input type="text" name="keyword"/>
									

								</form>
										<footer>
											<input type="submit"/>
										</footer>
									</section>

									

							</div>
							<div class="8u 12u(mobile) important(mobile)">

								<!-- Content -->
									<article class="box post">
									
										<header>
										<h2><spring:message code="saludo"
       										arguments="${user.name};${user.role};${user.id}"
       										htmlEscape="false"
       										argumentSeparator=";"/></h2>
										</header>

										<table>

											<tr>
											<td colspan="6"><spring:message code="bienvenido"
       														arguments="${user.name}"
       														htmlEscape="false"/></td>
											</tr>

											<tr>
											<td><spring:message code="id_usuario" /></td>
											<td><spring:message code="id_articulo" /></td>
											<td><spring:message code="id_seccion" /></td>
											<td><spring:message code="titular" /></td>
											<td><spring:message code="fecha_publicacion" /></td>
											<td>&nbsp</td>
											</tr>

											<c:forEach items="${lista}" var="article">

											<tr>
											<td><c:out value="${article.userId}"/></td>
											<td><c:out value="${article.guid}"/></td>
											<td><c:out value="${article.sectionId}"/></td>
											<td><c:out value="${article.title}"/></td>
											<td><c:out value="${article.pubDate}"/></td>
											<td><a href="formEditar?guid=${article.guid}"><button><spring:message code="modificar" /></button></a>
											<a href="borrar?guid=${article.guid}"><button><spring:message code="borrar" /></button></a></td>				
											</tr>

											</c:forEach>

											</table>

										<section>
											<header>
												<h3></h3>
											</header>
											<p><a href="formCrear"><button><spring:message code="crear_noticia" /></button></a></p>
											<p><a href="formAddRSS"><button><spring:message code="anadir_RSS" /></button></a></p>
											
										</section>
										
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