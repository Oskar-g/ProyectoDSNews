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
		<meta name="description" content="DeSoft ha creado un periódico digital con noticias desde todos los puntos de vista totalmente actualizadas">
		<meta name="keywords" content="deSoft, noticias, periódico digital, prensa">
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
					<div class="container">
						<div class="row">
							<div class="4u 12u(mobile)">

								<!-- Sidebar -->
									<section class="box">
										<a href="#" class="image featured"><img src="recursos/images/feed_rss.png" alt="" /></a>
										<header>
											<h3><spring:message code="titulo.paginaRss" /></h3>
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
										<h2><spring:message code="generar_RSS" /></h2>
										</header>

	<table>
		<c:forEach items="${listaSec}" var="section">
			<tr>
				<td>				
					<c:out value="${section.name}"></c:out>
				</td>
				<td>
					<a href="Rss_feed?sid=${section.id}&sname=${section.name}"><button><spring:message code="generar_RSS"/></button></a>
				</td>
			</tr>
		</c:forEach>
	</table>

										
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