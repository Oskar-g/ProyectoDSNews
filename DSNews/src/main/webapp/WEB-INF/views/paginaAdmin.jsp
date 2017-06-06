<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><spring:message code="titulo.paginaAdmin" /></title>
</head>
<body>

<spring:message code="saludo"
       arguments="${user.name};${user.role};${user.id}"
       htmlEscape="false"
       argumentSeparator=";"/>
 
<p></p>
<form action="buscarIndex" method="post">
	<input type="radio" name="filter" value="titular"> <spring:message code="titular" />
	<input type="radio" name="filter" value="content"> <spring:message code="contenido" /> 
	<input type="radio" name="filter" value="id"> <spring:message code="id" />  
	<input type="text" name="keyword"/>
	<input type="submit"/>

</form>
<table>
	<tr>
	
		<td>
		<spring:message code="saludo"
       	arguments="${user.name}"
       	htmlEscape="false"/></td>
	</tr>
	<tr>
		<td><spring:message code="id_usuario" /></td>
		<td><spring:message code="id_articulo" /></td>
		<td><spring:message code="id_seccion" /></td>
		<td><spring:message code="titular" /></td>
		<td><spring:message code="fecha_publicacion" /></td>
		<td></td>
	</tr>
	<c:forEach items="${lista}" var="article">
		<tr>
			<td><c:out value="${article.userId}"/></td>
			<td><c:out value="${article.guid}"/></td>
			<td><c:out value="${article.sectionId}"/></td>
			<td><c:out value="${article.title}"/></td>
			<td><c:out value="${article.pubDate}"/></td>
			<td><a href="formEditar?guid=${article.guid}"><button><spring:message code="modificar" /></button></a></td>
			<td><a href="borrar?guid=${article.guid}"><button><spring:message code="borrar" /></button></a></td>				
		</tr>
	</c:forEach>
</table>
<table>

	<tr>
		<td><a href="formCrear"><button><spring:message code="crear_noticia" /></button></a></td>
		<td><a href="formAddRSS"><button><spring:message code="anadir_RSS" /></button></a></td>
	</tr>
</table>
 </body>
</html>