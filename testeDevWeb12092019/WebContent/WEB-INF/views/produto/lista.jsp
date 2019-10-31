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
	<a href="novoProduto">Cadastrar novo produto</a>
	<br/>
	<br/>

	
	<table>
		<tr>
			<th>Idproduto</th>
			<th>idfabricante</th>
			<th>iddistribuidora</th>
			<th>Nome</th>
			<th>dosagem</th>
			<th>dtinclusao</th>
			<th>dtfabricacao</th>
			<th>dtvalidade</th>
			<th>lote</th>
			<th>precolot</th>
			<th>qtdLote</th>
			<th>precoqtd</th>
			
			
			
		</tr>
		<c:forEach items="${produtos}" var="produto">
			<tr>
				<td>${produto.idproduto}</td>
				<td>${produto.idfabricante}</td>
				<td>${produto.iddistribuidora}</td>
				<td>${produto.nome}</td>
				<td>${produto.dosagem}</td>
				<td>${produto.dtinclusao}</td>
				<td>${produto.dtfabricacao}</td>
				<td>${produto.dtvalidade}</td>
				<td>${produto.lote}</td>
				<td>${produto.precolot}</td>
				<td>${produto.qtdLote}</td>
				<td>${produto.precoqtd}</td>
				
				<td><a href="editaProduto?idproduto=${produto.idproduto}" title="Editar">Editar</a></td>
				<td><a href="removeProduto?idproduto=${produto.idproduto}" title="Excluir">Excluir</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>