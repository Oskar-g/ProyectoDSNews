<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="login" method="POST">
	<table style="margin:auto, text-align: center;">
		<tr>
			<td><label for="name">NOMBRE USUARIO</label></td>
			<td><input type="text" name ="name"></td>
		</tr>
		<tr>
			<td><label for="password">CONTRASEÑA</label></td>
			<td><input type="password"  name ="password"></td>
		</tr>
		<tr>
			<td colspan="2"><button type="submit">Acceso</button></td>

		</tr>
	</table>
</form>

</body>
</html>