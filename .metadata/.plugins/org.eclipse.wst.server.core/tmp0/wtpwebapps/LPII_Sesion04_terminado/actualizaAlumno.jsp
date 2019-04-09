<!DOCTYPE html>
<%@page import="entidad.Alumno"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>  
<h1>Actualiza alumno</h1>
<!-- 
	En el action debe estar escrito el alias del Servlet:
	@WebServlet("/registraAlumno")
 -->

<%   Alumno a = (Alumno) request.getAttribute("data"); %>

<form action="alumno">
	<input type="hidden" name="metodo" value="actualiza">
	<input type="hidden" name="id" value="<%= a.getIdAlumno() %>" >	
	<table >
		<tr>
			<td>Nombre</td>
			<td><input type="text" name="nombre" required  value="<%= a.getNombre() %>" ></td>     
		</tr>
		<tr>
			<td>Apellido</td>
			<td><input type="text" name="apellido" required value="<%= a.getApellido() %>"></td>
		</tr>
		<tr>
			<td>Edad</td>
			<td><input type="number" max="90"  min="18" name="edad" required value="<%= a.getEdad() %>"></td>    
		</tr>	
		<tr>
			<td><input type="submit" value="enviar"></td>
			<td><input type="reset" value="borrar"></td>
		</tr>						
	</table>
</form>

</body>
</html>