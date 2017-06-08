<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html, charset=ISO-8859-1">
<title><spring:message code="titulo.addRSS" /></title>
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
										<a href="#" class="image featured"><img src="recursos/images/rss.jpg" alt="" /></a>
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
										<h2><spring:message code="anadir_RSS"/></h2>
										</header>

								<table class="rss">
									<tr>
									<td colspan="2"><spring:message code="lista_RSS" /></td>
									</tr>

									<tr>
									<th><spring:message code="link_RSS" /></th>
									<th><spring:message code="id_seccion" /></th>
									<th><spring:message code="periodico" /></th>
									</tr>

									<c:forEach items="${lista}" var="rss">
		
									<tr>
									<td><c:out value="${rss.link}"/></td>
									<td><c:out value="${rss.sectionId}"/></td>
									<td><c:out value="${rss.getNewspaperId}"/></td>
									
									</tr>
	
									</c:forEach>
								</table>

										<section>
											<header>
												<h3></h3>
											</header>
<form action="addRSS">
	<table class="rss">
		<tr>
			<td><label for="link"><spring:message code="link" /></label><input type="text" name="link"></td>
			
			
			<td><label for="section_id"><spring:message code="categoria" /></label>
				<select name="section_id">
					<option value="1"><spring:message code="1" /></option>
					<option value="2"><spring:message code="2" /></option>
					<option value="3"><spring:message code="3" /></option>
					<option value="4"><spring:message code="4" /></option>
					<option value="5"><spring:message code="5" /></option>
					<option value="6"><spring:message code="6" /></option>
					<option value="7"><spring:message code="7" /></option>
					<option value="8"><spring:message code="8" /></option>
					<option value="9"><spring:message code="9" /></option>
				</select>
			</td>
			
			<td><label for="periodico"><spring:message code="periodico" /></label>
				<select name="periodico" id="periodicos" onchange="selector()">
					<c:forEach items="${listaPeriodicos}" var="listaPeriodicos">
						<option value="${listaPeriodicos.getId()}"><c:out value="${listaPeriodicos.getName()}"></c:out></option>
					</c:forEach>
					<option value="new">Crear nuevo Periodico</option>
					
				</select>
			</td>
				
				<script type="text/javascript">
					function selector(){
						var value = document.getElementById("periodicos").value
						
						if (value == "new"){
							window.location="formAddPeriodico";
						}
						
					}
				</script>
			
		</tr>
		<tr><td colspan="2">&nbsp;</td></tr>
		<tr>
			<td colspan="2"><button><spring:message code="anadir" /></button></td>
		</tr>
	</table>
</form>
										</section>
										
									</article>

							</div>
						</div>
					</div>
				</div>

			
		<!--Footer-->
		<!-- Scripts -->
			<script src="recursos/assets/js/jquery.min.js"></script>
			<script src="recursos/assets/js/jquery.dropotron.min.js"></script>
			<script src="recursos/assets/js/skel.min.js"></script>
			<script src="recursos/assets/js/skel-viewport.min.js"></script>
			<script src="recursos/assets/js/util.js"></script>
			<script src="recursos/assets/js/main.js"></script>

	</body>
</html>


