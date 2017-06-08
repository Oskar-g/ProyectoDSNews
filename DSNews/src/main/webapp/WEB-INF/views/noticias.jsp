<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title><spring:message code="titulo.index" /></title>
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta name="author" content="Equipo DopeTrope">
		<meta name="description" content="DeSoft ha creado un periódico digital con noticias desde todos los puntos de vista totalmente actualizadas">
		<meta name="keywords" content="deSoft, noticias, periódico digital, prensa">
		<link rel="shortcut icon" type="image/x-icon" href="recursos/images/logo.ico" />
		<link rel="stylesheet" href="recursos/assets/css/main.css" />
		<link rel="stylesheet" href="recursos/assets/css/dsnews.css" />
	
	</head>
	<body class="homepage">
		<div id="page-wrapper">
			<!-- Header -->
				<div id="header-wrapper">
					<div id="header">
						<img src="recursos/images/pic01.png" alt="Foto de deSoft" class="imagen">	
						<!-- Banner -->
							<section id="banner">
								<header>
									<h2><spring:message code="bienvenido.index"/></h2>
									
									<form action="buscarNoticias" method="post">
									<table>
										<tr>
										    <th><spring:message code="periodico"/></th>
										    <th><spring:message code="secciones"/></th> 
										    <th><spring:message code="fecha"/></th>
										    <th></th>
										</tr>
							 
										<tr>
										<td>										
										<select name="newspapers">
											<c:forEach items="${newspapers}" var="newspapers">
												<option value="${newspapers.getId()}"><c:out value="${newspapers.getName()}" /></option>
											</c:forEach>
										</select>
										</td>
										
										<td>
										<select name="secciones">
											<c:forEach items="${sectionList}" var="section">
												<option value="${section.getId()}"><spring:message code="${section.getId()}" /></option>
											</c:forEach>
										</select>
										</td>
										
										<td>
										  <input type="Date" name="date">
										</td>
										
										<td><button type="submit"><spring:message code="buscar"/></button></td>
										</tr>
										</table>
									</form>
								</header>
							</section>

						<!--CONSTRUIR NOTICIAS CON ESTO

<table>
	<tr>
		<td>Visionado de noticias y demÃ¡s Contenido de noticias</td>
	</tr>
	
</table>

						-->
			<!-- Main -->
				<div id="main-wrapper">
					<div class="container">
						<div class="row">
							<div class="12u">

								<c:forEach items="${listadoCompleto}" var="listadoCompleto">
<!-- ENCABEZADOS DE NOTICIA -->
									<section>
										<header class="major">
											<h2>${listadoCompleto.getCategoria()}</h2>
										</header>
<!-- FIN ENCABEZADOS DE NOTICIA -->	
<!-- CUERPO NOTICIAS -->			
								<%  int i = 0;  %>
										<c:forEach items="${listadoCompleto.getArticulos()}" var="listadoArticulos">
										
								<%  if (i == 0) { %>
										<div class="row">
								<%  } %>
<!-- ITEM NOTICIA -->										
								
											<div class="4u 12u(mobile)">
																						
												<section class="box">
													<a href="${listadoArticulos.getLink()}" class="image featured"><img class="item_portada" src="${listadoArticulos.getCover()}" alt="${listadoArticulos.getTitle()}" /></a>
													<header class="newTitle">
														<h3>${listadoArticulos.getTitle()}</h3>
													</header>
														<p>${listadoArticulos.getDescription()}</p>
													<footer>
														<a href="${listadoArticulos.getLink()}" class="button alt"><spring:message code="leermas"/></a>
													</footer>
												</section>
											</div>
<!--FIN ITEM NOTICIA -->	
							<% 	i++; 
							 	if (i == 3) { %>
									<div class="row">
							<%  
									i = 0; } 
							%>											
										</c:forEach>
				
									</section>
</c:forEach>
<!-- FIN CUERPO NOTICIAS -->
							</div>
						</div>
						<br>
						<br>
						<br>
						<div class="row">
							<div class="4u 12u(mobile)">
								<section>
									<header>
										<h2><spring:message code="software"/></h2>
									</header>
									<ul class="divided">
										<li><a href="http://desoft.es/erp-pymes/" target="_blank"><spring:message code="pymes"/></a></li>
										<li><a href="http://queserias.dswin.net/" target="_blank"><spring:message code="queseria"/></a></li>
									<header>
										<h2><spring:message code="apps"/></h2>
									</header>
										<li><a href="http://desoft.es/dsorder-sistema-de-ventas-movil-para-ios-y-android/" target="_blank"><spring:message code="autoventa"/></a></li>
										<li><a href="http://desoft.es/desarrollo-de-aplicaciones/" target="_blank"><spring:message code="medida"/></a></li>
									<header>
										<h2><spring:message code="web"/></h2>
									</header>
										<li><a href="http://desoft.es/web-business-venta-online/" target="_blank"><spring:message code="business"/></a></li>
									</ul>
								</section>
							</div>
							<div class="4u 12u(mobile)">
								<section>
									<header>
										<h2><spring:message code="localizacion"/></h2>
									</header>
									<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3093.7142816891005!2d-3.0220429844012977!3d39.158479739116736!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd68fc7fb608e917%3A0x5110ca178bde22cb!2sdeSoft!5e0!3m2!1ses!2ses!4v1496397973373" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
								</section>
							</div>
							<div>
								<section>
									<header>
										<h2><spring:message code="contacto"/></h2>
									</header>
									<ul class="social">
										<li><a class="icon fa-facebook" href="https://www.facebook.com/deSoftSDE/" target="_blank"><span class="label">Facebook</span></a></li>
										<li><a class="icon fa-twitter" href="https://twitter.com/deSoftSDE" target="_blank"><span class="label">Twitter</span></a></li>
										<li><a class="icon fa-google-plus" href="https://plus.google.com/106556609973738110407" target="_blank"><span class="label">Google +</span></a></li>
									</ul>
									<ul class="contact">
										<li>
											<h3><spring:message code="oficina"/></h3>
											<p>
												Plaza de Arcipreste, 3  <br />
												13700 Tomelloso<br />
												Ciudad Real, España
											</p>
										</li>
										<li>
											<h3><spring:message code="mail"/></h3>
											<p><a href="mailto:desoft@desoft.es">desoft@desoft.es</a></p>
										</li>
										<li>
											<h3><spring:message code="telefono"/></h3>
											<p>926 50 11 60 (4 líneas)</p>
										</li>
									</ul>
								</section>
							</div>
						</div>
						<div class="row">
							<div class="12u">

								<!-- Copyright -->
									<div id="copyright">
										<ul class="links">
											<li>&copy; <spring:message code="copyright"/></li>
										</ul>
									</div>

							</div>
						</div>
					</section>
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