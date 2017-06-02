<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <script src="https://cloud.tinymce.com/stable/tinymce.min.js"></script>
  <script>tinymce.init({ selector:'textarea' });</script>
<meta http-equiv="Content-Type" content="text/html, charset=UTF-8">
<title>Creando noticia</title>
<link href="resources/css/style.css" rel="stylesheet"/>
</head>
<body>

<h1>Crear noticia</h1>
<div>
<form action="crear">
<table>
	<tr>
		<td><label for="link">Link</label></td>
		<td><input type="text" name="link"></td>
	</tr>
	<tr>
		<td><label for="title">Titular</label></td>
		<td><input type="text" name="title"></td>
	</tr>
	<tr>
		<td><label for="content">Contenido</label></td>
 		<td><textarea name="content"></textarea></td>
	<tr>
		<td><label for="pubDate">Fecha publicacion</label></td>
		<td><input type="Date" name="pubDate"></td>
	</tr>
	<tr>
		<td><label for="description">Descripcion</label></td>
		<td><input type="text" name="description"></td>
	</tr>
	<tr>
		<td><label for="channelid">Id periodico</label></td>
		<td><input type="number" name="channelid"></td>
	</tr>
	<tr>
		<td><label for="sectionid">Id seccion</label></td>
		<td><input type="number" name="sectionid"></td>
	</tr>
	<tr>
		<td><label for="keywords">Palabras clave</label></td>
		<td><input type="text" name="keywords"></td>
	</tr>
	
	<tr>
		<td><button>CREAR</button></td>
	</tr>
</table>

</form>
</div>

</body>
</html>

</body>
</html>