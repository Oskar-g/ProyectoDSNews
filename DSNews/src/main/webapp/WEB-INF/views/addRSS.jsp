<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html, charset=UTF-8">
<title>Añadir RSS</title>
<link href="resources/css/style.css" rel="stylesheet"/>
</head>
<body>

<h1>Añadir RSS</h1>

<div>
<table>
	<tr>
		<td colspan="1">LISTA DE RSS AÑADIDOS</td>
	</tr>
	<tr>
		<td>Link RSS</td>
		<td>Seccion Id</td>
	</tr>
	<c:forEach items="${lista}" var="rss">
		<tr>
			<td><c:out value="${rss.link}"/></td>
			<td><c:out value="${rss.sectionId}"/></td>
		</tr>
	</c:forEach>
</table>
<p></p>
<form action="addRSS">
	<table>
		<tr>
			<td><label for="link">Link</label></td>
			<td><input type="text" name="link"></td>
			
			<td><label for="section_id">Categoría</label>
				<select name="section_id">
					<option value="1">España</option>
					<option value="2">Internacional</option>
					<option value="3">Economía</option>
					<option value="4">Ciencia</option>
					<option value="5">Tecnología</option>
					<option value="6">Cultura</option>
					<option value="7">Deportes</option>
					<option value="8">Televisión</option>
					<option value="9">Sociedad</option>
				</select>
			</td>
		</tr>
		<tr>
			<td><button>Añadir</button></td>
		</tr>
	</table>
</form>
</div>

</body>
</html>
