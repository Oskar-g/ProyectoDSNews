<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html, charset=UTF-8">
<title><spring:message code="titulo.addRSS" /></title>
<link href="resources/css/style.css" rel="stylesheet"/>
</head>
<body>

<h1><spring:message code="anadir_RSS"/></h1>

<div>
<table>
	<tr>
		<td colspan="1"><spring:message code="lista_RSS" /></td>
	</tr>
	<tr>
		<td><spring:message code="link_RSS" /></td>
		<td><spring:message code="id_seccion" /></td>
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
			<td><label for="link"><spring:message code="link" /></label></td>
			<td><input type="text" name="link"></td>
			
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
		</tr>
		<tr>
			<td><button><spring:message code="anadir" /></button></td>
		</tr>
	</table>
</form>
</div>

</body>
</html>
