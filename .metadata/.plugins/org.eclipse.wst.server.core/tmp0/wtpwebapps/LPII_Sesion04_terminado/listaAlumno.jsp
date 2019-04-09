<!DOCTYPE html>
<%@page import="entidad.Alumno"%>
<%@page import="java.util.List"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Alumnos</title>
<link rel="stylesheet" type="text/css" href="css/facilito.css" />

</head>
<body>
<h1>Listado de Alumnos</h1>

<a href="alumno?metodo=lista">Ver data</a>
<a href="insertaAlumno.jsp">Registra</a>

<br><br>
<table>
	 <caption class="grilla_titulo"> Lista de Alumnos</caption>	
	
	  <tr class="grilla_cabecera">
	  		<th>Id</th><th>Nombre</th><th>Apellido</th><th>Edad</th><th> </th><th> </th>
	  </tr>
	  <!-- 
	  		Scriplet: son inserciones de codigo java dentro un JSP    < % %>
	  		Expression: son resultados de codigo java que se va visualizar en el JSP < %=   %>    
	   -->
	  
	  
	  <%
			List<Alumno> data =	
					(List<Alumno>)request.getAttribute("data");
	  		if(data!= null){
	  			for(Alumno x: data){
	  %>
			  <tr class="grilla_campo"> 
			  		<td><%= x.getIdAlumno() %> </td>
			  		<td><%= x.getNombre() %></td>
			  		<td><%= x.getApellido() %></td>
			  		<td><%= x.getEdad() %></td>
			  		<td>
			  			<a href="alumno?metodo=elimina&id=<%= x.getIdAlumno() %>">
			  				<img alt="Elimina" src="images/Delete.gif">	
			  			</a>		
			  		</td>
			  		<td>
			  			<a href="alumno?metodo=busca&id=<%= x.getIdAlumno() %>">
			  				<img alt="Actualiza" src="images/Edit.gif">	
			  			</a>		
			  		</td>			  		
			  </tr>
	  <%
	  		}}
	  %>
	  
  </table>



</body>
</html>

