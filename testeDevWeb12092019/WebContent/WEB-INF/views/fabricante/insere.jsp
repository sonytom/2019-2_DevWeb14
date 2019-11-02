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
	
	Cadastro de Fabricates <br /><br />
	
	<form action="adicionaFabricantes" method="post">
				<label for="Nome">Nome</label>  
				<input type="text" name="nome" value="${fabricante.nome}" >
				<form:errors path="fabricante.nome" cssStyle="color:#B71C1C"/><br />

	
				<label for="CNPJ">CNPJ</label>  
				<input type="text" name="cnpj" value="${fabricante.cnpj}" > 
				<form:errors path="fabricante.cnpj" cssStyle="color:#B71C1C"/><br />
				
				<label for="TelContato">TelContato</label>  
				<input type="text" name="TelContato" value="${fabricante.telContato}" > 
				<form:errors path="fabricante.telContato" cssStyle="color:#B71C1C"/><br />
				
				<label for="Email">Email</label>  
				<input type="text" name="Email" value="${fabricante.Email}" > 
				<form:errors path="fabricante.email" cssStyle="color:#B71C1C"/><br />
				
							
				
				<input type="submit" value="Criar">
		
	</form>
</body>
</html>