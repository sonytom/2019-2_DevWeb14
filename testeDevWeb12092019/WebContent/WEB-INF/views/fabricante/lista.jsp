<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sistema Cadastro</title>
</head>
<body>
<c:import url="/WEB-INF/views/principal/menu.jsp"/>
	<br />
	<a href="novoFabricante">Cadastrar novo fabricante</a>
	<br />
	<br />
	<table>
		<tr>
			<th>Id</th>
			<th>Nome</th>
			<th>CNPJ</th>
			<th>TelContato</th>
			<th>E-mail</th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach items="${fabricantes}" var="fabricante">
			<tr>
				<td>${fabricante.id}</td>
				<td>${fabricante.nome}</td>
				<td>${fabricante.cnpj}</td>
				<td>${fabricante.telContato}</td>
				<td>${fabricante.email}</td>
				<td><a href="editaFabricantes?id=${fabricante.id}" title="Editar">Editar</a></td>
				<td><a href="removeFabricante?id=${fabricante.id}" title="Excluir">Excluir</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>