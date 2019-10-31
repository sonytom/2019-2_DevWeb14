<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sistema Cadastro</title>
</head>
<body>
	<c:import url="/WEB-INF/views/principal/menu.jsp"/>
	<br />
	Alterar fornecedor: ${fornecedor.id}	
	<br />
	<br />
	
	<form action="alteraFornecedor" method="post" class="form-horizontal">
	
	<input type="hidden" name="id" value="${ fornecedor.id}" />
				
	<label for="Nome">Nome</label>  
	<input type="text" name="nome" value="${fornecedor.nome}" > 
	<form:errors path="fornecedor.nome" cssStyle="color:#B71C1C"/><br />

	<label for="CNPJ">CNPJ</label>  
	<input type="text" name="Cnpj" value="${fornecedor.cnpj}" > 
	<form:errors path="fornecedor.cnpj" cssStyle="color:#B71C1C"/><br />
	
	<label for="TelContato">TelContato</label>  
	<input type="text" name="TelContato" value="${fornecedor.telContato}" > 
	<form:errors path="fornecedor.telContato" cssStyle="color:#B71C1C"/><br />
	
	<label for ="Email">Email</label>
	<input type="text" name="Email" value="${fornecedor.email }">
	<form:errors path="fornecedor.email" cssStyle="color:#B71C1C"/><br/>
	
	<input type="submit" value="Alterar">
	
	</form>
	
</body>
</html>