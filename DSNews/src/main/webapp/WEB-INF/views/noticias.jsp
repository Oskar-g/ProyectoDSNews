<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!doctype html>
<html lang="en">
	<jsp:include page="common/head.jsp"/>
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
								<table id="newsform">
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
													<option value="${newspapers.getId()}"><c:out value="${newspapers.getName()}"/></option>
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
										  <input type="text" id="datepicker" name="date">
										</td>
										<td><button type="submit"><spring:message code="buscar"/></button></td>
									</tr>
								</table>
							</form>
						</header>
					</section>
					
					
<!-- Main -->
					<div id="main-wrapper">
						<div class="container">
							<div class="row">
								<div class="12u">
									<p><img alt="${name}" src="${logo}"></p>
									<c:forEach items="${listadoCompleto}" var="listadoCompleto">
<!-- ENCABEZADOS DE NOTICIA -->
										<%  
											int i = 0; 
											boolean openrow = false;
										%>
								
										<section>
											<header class="major">
												<h2>${listadoCompleto.getCategoria()}</h2>
											</header>
<!-- FIN ENCABEZADOS DE NOTICIA -->	
<!-- CUERPO NOTICIAS -->			
											<c:forEach items="${listadoCompleto.getArticulos()}" var="listadoArticulos" begin="0" end="8">
										
												<%  if (i == 0) { 
														openrow = true;
												%>
											<div class="row">
														
												<%  } %>
<!-- ITEM NOTICIA -->										
								
												<div class="4u 12u(mobile)">
																						
													<section class="box">
														<a target="_BLANK" href="${listadoArticulos.getLink()}" class="image featured"><img class="item_portada" src="${listadoArticulos.getCover()}" alt="${listadoArticulos.getTitle()}" /></a>
														<header class="newTitle">
															<h3>${listadoArticulos.getTitle()}</h3>
														</header>
														<p>${listadoArticulos.getDescription()}</p>
														<footer>
															<a target="_BLANK" href="${listadoArticulos.getLink()}" class="button alt"><spring:message code="leermas"/></a>
														</footer>
													</section>
												</div>
<!--FIN ITEM NOTICIA -->	
												<% 	i++;
								 					if (i == 3) { %>
											</div class="row">
												<%  openrow = false;
														i = 0; 
													} 
								 				%>											
											</c:forEach>
				
										
									<% 	i++;
								 		if (openrow) { 
								 	%>
											</div class="row">
									<%  
									 	} 
									%>						

									</section>
									</c:forEach>
<!-- FIN CUERPO NOTICIAS -->
								</div>
							</div>
						</div>	
					</div>
	
<jsp:include page="common/footer.jsp"/>
				</div>
			</div>
	</body>
</html>