	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
	<head>

<meta http-equiv="Content-Type" content="text/html, charset=ISO-8859-1">
<title><spring:message code="titulo.formCrear" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="author" content="Equipo DopeTrope">
<meta name="description" content="DeSoft ha creado un peri�dico digital con noticias desde todos los puntos de vista totalmente actualizadas">
<meta name="keywords" content="deSoft, noticias, peri�dico digital, prensa">
<link rel="shortcut icon" type="image/x-icon" href="recursos/images/logo.ico" />
<link rel="stylesheet" href="recursos/assets/css/main.css" />
<script src="https://cloud.tinymce.com/stable/tinymce.min.js"></script>
<script src="https://cloud.tinymce.com/stable/tinymce.min.js?apiKey=zts4im6m4bpnyqrz26hvn6x9859jxyq2px5u9loc8gwzglxs"></script>
<script>tinymce.init({ selector:'textarea' });</script>

	
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
										<a href="#" class="image featured"><img src="recursos/images/crear.jpg" alt="" /></a>
										<header>
											<h3><spring:message code="titulo.paginaAdmin" /></h3>
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
										<h2><spring:message code="crear_noticia" /></h2>
										</header>
<form action="crear">
<table>
	<tr>
		<td><label for="title"><spring:message code="titular" /></label></td>
		<td><input type="text" name="title"></td>
	</tr>
	<tr>
		<td><label for="content"><spring:message code="contenido" /></label></td>
 		<td><textarea name="content"></textarea></td>
	<tr>
		<td><label for="description"><spring:message code="descripcion" /></label></td>
		<td><input type="text" name="description"></td>
	</tr>
	<tr>
		<td><label for="sectionId"><spring:message code="id_seccion" /></label></td>
		<td>
			<select name="sectionId">
				<c:forEach items="${sections}" var="section">
					<option value="${section.getId()}"><c:out value="${section.getName()}"></c:out></option>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr>
		<td><label for="keywords"><spring:message code="keywords" /></label></td>
		<td><input type="text" name="keywords"></td>
	</tr>
	<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
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
