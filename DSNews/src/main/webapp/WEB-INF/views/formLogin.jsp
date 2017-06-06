<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><spring:message code="titulo.formLogin" /></title>
</head>
<body>

<form action="login" method="POST">
	<table style="margin:auto, text-align: center;">
		<tr>
			<td><label for="name"><spring:message code="usuario" /></label></td>
			<td><input type="text" name ="name"></td>
		</tr>
		<tr>
			<td><label for="password"><spring:message code="password" /></label></td>
			<td><input type="password"  name ="password"></td>
		</tr>
		<tr>
			<td colspan="2"><button type="submit"><spring:message code="entrar" /></button></td>

		</tr>
	</table>
</form>

</body>
</html>