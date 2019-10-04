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
	
	Cadastro de Usuarios <br /><br />
	
	<form action="adicionaProduto" method="post">
	
	            <label for="Idproduto">idproduto</label>   
				<input type="text" name="idproduto" value="${produto.idproduto}" >
				<form:errors path="produto.idproduto" cssStyle="color:#B71C1C"/><br />
	
				<label for="Idfabricante">idfabricante</label>  
				<input type="text" name="idfabricante" value="${produto.idfabricante}" >
				<form:errors path="produto.idfabricante" cssStyle="color:#B71C1C"/><br />
				
				<label for="Iddistribuidora">iddistribuidora</label>  
				<input type="text" name="iddistribuidora" value="${produto.iddistribuidora}" >
				<form:errors path="produto.iddistribuidora" cssStyle="color:#B71C1C"/><br />
				
				<label for="Nome">nome</label>  
				<input type="text" name="nome" value="${produto.nome}" >
				<form:errors path="produto.nome" cssStyle="color:#B71C1C"/><br />
						
				<label for="Dtinclusao">dtinclusao</label>  
				<input type="text" name="dtinclusao" value ="<fmt:formatDate value="${dtinclusao}" pattern="dd/MM/yyyy" />">
				<form:errors path="produto.dtinclusao" cssStyle="color:#B71C1C"/><br />
				
				<label for="DtFabricacao">dtfabricacao</label>  
				<input type="text" name="dtfabricacao" value ="<fmt:formatDate value="${dtfabricacao}" pattern="dd/MM/yyyy" />">
				<form:errors path="produto.dtfabricacao" cssStyle="color:#B71C1C"/><br />
				
				<label for="DtValidade">dtvalidade</label>  
				<input type="text" name="dtvalidade" value ="<fmt:formatDate value="${dtvalidade}" pattern="dd/MM/yyyy" />">
				<form:errors path="produto.dtvalidade" cssStyle="color:#B71C1C"/><br />
	
				<label for="Lote">lote</label>  
				<input type="text" name="lote" value="${produto.lote}" >
				<form:errors path="produto.lote" cssStyle="color:#B71C1C"/><br />
		
				<label for="Precolot">precolot</label>  
				<input type="text" name="precolot" value="${produto.precolot}" >
				<form:errors path="produto.precolot" cssStyle="color:#B71C1C"/><br />
				
				<label for="QtdLote">qtdLote</label>  
				<input type="text" name="qtdLote" value="${produto.qtdLote}" >
				<form:errors path="produto.qtdLote" cssStyle="color:#B71C1C"/><br />
				
				<label for="Precoqtd</">precoqtd</label>  
				<input type="text" name="precoqtd" value="${produto.precoqtd}" >
				<form:errors path="produto.precoqtd" cssStyle="color:#B71C1C"/><br />
				
				<input type="submit" value="Criar">
				
				
				
				
				
				
		
	</form>
</body>
</html>