<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
HOLA <c:out value="${user.name}"/> HAS LOGUEADO 
Y TU ROL ES EL DE UN MISERO <c:out value="${user.role}"/> CON <c:out value="${user.id}"/> COMO ID
<p></p>
<table>
	<tr>
		<td>BIENVENIDO <c:out value="${user.name}"/></td>
	</tr>
	<tr>
		<td>Id Usuario</td>
		<td>Id articulo</td>
		<td>SectionId</td>
		<td>Title</td>
		<td>Fecha publicacion</td>
		<td></td>
	</tr>
	<c:forEach items="${lista}" var="article">
		<tr>
			<td><c:out value="${article.userId}"/></td>
			<td><c:out value="${article.guid}"/></td>
			<td><c:out value="${article.sectionId}"/></td>
			<td><c:out value="${article.title}"/></td>
			<td><c:out value="${article.pubDate}"/></td>
			<td><a href="formEditar?guid=${article.guid}"><button>Modificar noticia</button></a></td>
			<td><a href="borrar?guid=${article.guid}"><button>Borrar noticia</button></a></td>				
		</tr>
	</c:forEach>
</table>

<td><a href="formCrear"><button>Nueva noticia</button></a></td>
 </body>
</html>