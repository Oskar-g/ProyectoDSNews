<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
  <script src="https://cloud.tinymce.com/stable/tinymce.min.js"></script>
  <script>tinymce.init({ selector:'textarea' });</script>
<meta http-equiv="Content-Type" content="text/html, charset=UTF-8">
<title><spring:message code="titulo.formEditar" /></title>
<link href="resources/css/style.css" rel="stylesheet"/>
</head>
<body>

<h1><spring:message code="editar_noticia" /></h1>
<div>
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
	
	<tr>
		<td><button><spring:message code="terminar" /></button></td>
	</tr>
</table>

</form>
</div>

</body>
</html>