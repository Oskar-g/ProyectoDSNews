<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><spring:message code="titulo.errorDatos" /></title>
</head>
<body>
		<h2 style="text-align: center;"><spring:message code="cuerpo.loginFalse" /></h2>
			<script>window.setTimeout('window.location="formLogin";',1000);</script>
		
	
</body>
</html>