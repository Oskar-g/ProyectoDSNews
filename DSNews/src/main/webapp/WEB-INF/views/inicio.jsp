<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>

<table>
	<tr>
		<td>Visionado de noticias y demás Contenido de noticias</td>
	</tr>
	<tr>
		<td><c:forEach items="${listadoCompleto}" var="listadoCompleto">
	
		<h1>${listadoCompleto.getCategoria()}</h1>
	
		<c:forEach items="${listadoCompleto.getArticulos()}" var="listadoArticulos">
			<c:out value="${listadoArticulos.getLink()}"/>
			<br>
		</c:forEach>
		
	</c:forEach><td>
	</tr>
</table>
</body>

</html>