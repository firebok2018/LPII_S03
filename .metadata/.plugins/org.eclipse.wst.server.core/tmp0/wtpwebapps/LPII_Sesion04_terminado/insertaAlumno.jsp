<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>  
<h1>Registro de Alumno</h1>
<!-- 
	En el action debe estar escrito el alias del Servlet:
	@WebServlet("/registraAlumno")
 -->
<form action="alumno">
	<input type="hidden" name="metodo" value="registra">	
	<table >
		<tr>
			<td>Nombre</td>
			<td><input type="text" name="nombre" required></td>
		</tr>
		<tr>
			<td>Apellido</td>
			<td><input type="text" name="apellido" required></td>
		</tr>
		<tr>
			<td>Edad</td>
			<td><input type="number" max="90"  min="18" name="edad" required></td>
		</tr>	
		<tr>
			<td><input type="submit" value="enviar"></td>
			<td><input type="reset" value="borrar"></td>
		</tr>						
	</table>
</form>

</body>
</html>