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
		<meta name="description" content="DeSoft ha creado un peri�dico digital con noticias desde todos los puntos de vista totalmente actualizadas">
		<meta name="keywords" content="deSoft, noticias, peri�dico digital, prensa">
		<link rel="shortcut icon" type="image/x-icon" href="recursos/images/logo.ico" />
		<link rel="stylesheet" href="recursos/assets/css/main.css" />
	
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
									<table>
<tr>
    <th><spring:message code="periodico"/></th>
    <th><spring:message code="secciones"/></th> 
    <th><spring:message code="fecha"/></th>
    <th></th>
  </tr>
  
<tr>
<td>
<form method="POST">
<select name="periodicos">
<option value="mundo">El Mundo</option>
<option value="pais">El Pa�s</option>
<option value="abc">ABC</option>
<option value="tribuna">La Tribuna</option>
<option value="razon">La Raz�n</option>
<option value="as">AS</option>
<option value="marca">Marca</option>
</select>
</form>
</td>

<td>
<form method="POST">
<select name="secciones">
<option value="nacional"><spring:message code="1"/></option>
<option value="internacional"><spring:message code="2"/></option>
<option value="economia"><spring:message code="3"/></option>
<option value="ciencia"><spring:message code="4"/></option>
<option value="tecnologia"><spring:message code="5"/></option>
<option value="cultura"><spring:message code="6"/></option>
<option value="deportes"><spring:message code="7"/></option>
<option value="tv"><spring:message code="8"/></option>
<option value="sociedad"><spring:message code="9"/></option>
</select>
</form>
</td>

<td>
<form method="POST">
  <input type="date" name="date">
</form>
</td>

<td><button type="submit"><spring:message code="buscar"/></button></td>
										</tr>
									</table>
								</header>
							</section>

						<!--CONSTRUIR NOTICIAS CON ESTO

<table>
	<tr>
		<td>Visionado de noticias y demás Contenido de noticias</td>
	</tr>
	<c:forEach items="${sectionList}" var="sectionList">
		<tr>
			<td><c:out value="${sectionList.name}"/></td>				
		</tr>
	</c:forEach>
</table>

						-->

			<!-- Main -->
				<div id="main-wrapper">
					<div class="container">
						<div class="row">
							<div class="12u">

								<!-- Portfolio -->
									<section>
										<header class="major">
											<h2><spring:message code="noticias"/></h2>
										</header>
										<div class="row">
											<div class="4u 12u(mobile)">
												<section class="box">
													<a href="#" class="image featured"><img src="recursos/images/pic02.jpg" alt="" /></a>
													<header>
														<h3>Ipsum feugiat et dolor</h3>
													</header>
													<p>Lorem ipsum dolor sit amet sit veroeros sed amet blandit consequat veroeros lorem blandit  adipiscing et feugiat phasellus tempus dolore ipsum lorem dolore.</p>
													<footer>
														<a href="#" class="button alt"><spring:message code="leermas"/></a>
													</footer>
												</section>
											</div>
											<div class="4u 12u(mobile)">
												<section class="box">
													<a href="#" class="image featured"><img src="recursos/images/pic03.jpg" alt="" /></a>
													<header>
														<h3>Sed etiam lorem nulla</h3>
													</header>
													<p>Lorem ipsum dolor sit amet sit veroeros sed amet blandit consequat veroeros lorem blandit  adipiscing et feugiat phasellus tempus dolore ipsum lorem dolore.</p>
													<footer>
														<a href="#" class="button alt"><spring:message code="leermas"/></a>
													</footer>
												</section>
											</div>
											<div class="4u 12u(mobile)">
												<section class="box">
													<a href="#" class="image featured"><img src="recursos/images/pic04.jpg" alt="" /></a>
													<header>
														<h3>Consequat et tempus</h3>
													</header>
													<p>Lorem ipsum dolor sit amet sit veroeros sed amet blandit consequat veroeros lorem blandit  adipiscing et feugiat phasellus tempus dolore ipsum lorem dolore.</p>
													<footer>
														<a href="#" class="button alt"><spring:message code="leermas"/></a>
													</footer>
												</section>
											</div>
										</div>
										<div class="row">
											<div class="4u 12u(mobile)">
												<section class="box">
													<a href="#" class="image featured"><img src="recursos/images/pic05.jpg" alt="" /></a>
													<header>
														<h3>Blandit sed adipiscing</h3>
													</header>
													<p>Lorem ipsum dolor sit amet sit veroeros sed amet blandit consequat veroeros lorem blandit  adipiscing et feugiat phasellus tempus dolore ipsum lorem dolore.</p>
													<footer>
														<a href="#" class="button alt"><spring:message code="leermas"/></a>
													</footer>
												</section>
											</div>
											<div class="4u 12u(mobile)">
												<section class="box">
													<a href="#" class="image featured"><img src="recursos/images/pic06.jpg" alt="" /></a>
													<header>
														<h3>Etiam nisl consequat</h3>
													</header>
													<p>Lorem ipsum dolor sit amet sit veroeros sed amet blandit consequat veroeros lorem blandit  adipiscing et feugiat phasellus tempus dolore ipsum lorem dolore.</p>
													<footer>
														<a href="#" class="button alt"><spring:message code="leermas"/></a>
													</footer>
												</section>
											</div>
											<div class="4u 12u(mobile)">
												<section class="box">
													<a href="#" class="image featured"><img src="recursos/images/pic07.jpg" alt="" /></a>
													<header>
														<h3>Dolore nisl feugiat</h3>
													</header>
													<p>Lorem ipsum dolor sit amet sit veroeros sed amet blandit consequat veroeros lorem blandit  adipiscing et feugiat phasellus tempus dolore ipsum lorem dolore.</p>
													<footer>
														<a href="#" class="button alt"><spring:message code="leermas"/></a>
													</footer>
												</section>
											</div>
											<div class="4u 12u(mobile)">
												<section class="box">
													<a href="#" class="image featured"><img src="recursos/images/pic06.jpg" alt="" /></a>
													<header>
														<h3>Etiam nisl consequat</h3>
													</header>
													<p>Lorem ipsum dolor sit amet sit veroeros sed amet blandit consequat veroeros lorem blandit  adipiscing et feugiat phasellus tempus dolore ipsum lorem dolore.</p>
													<footer>
														<a href="#" class="button alt"><spring:message code="leermas"/></a>
													</footer>
												</section>
											</div>
											<div class="4u 12u(mobile)">
												<section class="box">
													<a href="#" class="image featured"><img src="recursos/images/pic06.jpg" alt="" /></a>
													<header>
														<h3>Etiam nisl consequat</h3>
													</header>
													<p>Lorem ipsum dolor sit amet sit veroeros sed amet blandit consequat veroeros lorem blandit  adipiscing et feugiat phasellus tempus dolore ipsum lorem dolore.</p>
													<footer>
														<a href="#" class="button alt"><spring:message code="leermas"/></a>
													</footer>
												</section>
											</div>
											<div class="4u 12u(mobile)">
												<section class="box">
													<a href="#" class="image featured"><img src="recursos/images/pic06.jpg" alt="" /></a>
													<header>
														<h3>Etiam nisl consequat</h3>
													</header>
													<p>Lorem ipsum dolor sit amet sit veroeros sed amet blandit consequat veroeros lorem blandit  adipiscing et feugiat phasellus tempus dolore ipsum lorem dolore.</p>
													<footer>
														<a href="#" class="button alt"><spring:message code="leermas"/></a>
													</footer>
												</section>
											</div>
										</div>
									</section>

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
												Ciudad Real, Espa�a
											</p>
										</li>
										<li>
											<h3><spring:message code="mail"/></h3>
											<p><a href="mailto:desoft@desoft.es">desoft@desoft.es</a></p>
										</li>
										<li>
											<h3><spring:message code="telefono"/></h3>
											<p>926 50 11 60 (4 l�neas)</p>
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