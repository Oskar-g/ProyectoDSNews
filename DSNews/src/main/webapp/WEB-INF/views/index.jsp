<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>

<form action="inicio" method="POST">
	<table>
		<tr>
			<td><label for="periodico">SELECCIONE EL PERIODICO, AMADO LECTOR</label>
				<select name="periodico">
					<option value="El pais">El pais</option>
				</select>
			</td>
		</tr>
		<tr>
			<td><button>Seleccionar</button></td>
		</tr>
	</table>
</form>
</body>

</html>