<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<br/>
<form action="listChampion_abilities2.jsp" method="GET">
	Buscar por nombre de la habilidad: <input type="text" name="habilidad">
		<input type ="submit" value="Buscar"></form>
<div class="container">
<table class="table table-striped">
	<tr><td>Id</td><td>Nombre</td><td>Title</td><td>descripcion</td><td>estadisticas de habilidad</td></tr>
	<c:forEach var="champion" items="${lista}" varStatus="indice">
	<tr style="border:1px solid black; padding:5pt">
		<td><c:out value="${habilidad.id}"/></td>
		<td><c:out value="${campeon.champion_name}"/></td>
		<td><c:out value="${habilidad.champion_description}"/></td>
		<td><c:out value="${habilidad.effect}"/></td>
		<td><c:out value="${habilidad.cost}"/></td>
		<td><c:out value="${habilidad.rango}"/></td>
		<td>
		<form action="/listChampion_abilities" method="post">
			<input type="hidden" name="id" value="${habilidad.id}"/>
			<input type="hidden" name="champion_name" value="${champion.champion_name}"/>
			<input type="hidden" name="descripcion" value="${habilidad.champion_description}"/>
			<input type="hidden" name="effecto" value="${habilidad.effect}"/>
			<input type="hidden" name="coste" value="${habilidad.cost}"/>
			<input type="hidden" name="rango" value="${habilidad.rango}"/>
		</form>
		</td>
		
	</tr>
</c:forEach>
</table>
<br/>
<a type="button" class="btn btn-primary" href="index.jsp">Volver a Home</a>
</div>
</body>
</html>