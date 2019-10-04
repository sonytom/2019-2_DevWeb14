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
	<a href="novoUsuario">Cadastrar novo usuario</a>
	<a href="novoProduto">Cadastrar novo produto</a>
	<br/>
	<br/>
	<table>
		<tr>
			
			<th>Nome</th>
			<th>Login</th>
		
			
			<th></th>
		</tr>
		<c:forEach items="${produtos}" var="produto">
			<tr>
				
				<td>${usuario.nome}</td>
				
			</tr>
		</c:forEach>
	</table>
	
	<table>
		<tr>
			<th>Idproduto</th>
			<th>Nome</th>
			<th></th>
		</tr>
		<c:forEach items="${produtos}" var="produto">
			<tr>
				<td>${produto.idproduto}</td>
				<td>${produto.nome}</td>
				<td><a href="mostraProduto?id=${produto.idproduto}" title="Editar">Editar</a></td>
				<td><a href="removeProduto?id=${produto.idproduto}" title="Excluir">Excluir</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>