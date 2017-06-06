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
	<c:forEach items="${sectionList}" var="sectionList">
		<tr>
			<td><c:out value="${sectionList.name}"/></td>				
		</tr>
	</c:forEach>
</table>
<div class="">
asdasdjasdkjasdh 
</div>
</body>

</html>