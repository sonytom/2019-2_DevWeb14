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
	Alterar fabricante: ${fabricante.id}	
	 <div class="content-inner chart-cont">
         <!--***** FORM LAYOUTS *****-->     
         <div class="row">
            <div class="col-md-12">
               <!--***** USER INFO *****-->
               <div class="card form" id="form1">
                  <div class="card-header">
                     <h3><i class="fa fa-user-circle"></i>Cadastro do Fornecedor</h3>
                  </div>
                  <br>
	<form action="alteraFabricante" method="post" class="form-horizontal">
	
	<input type="hidden" name="id" value="${fabricante.id}" />
				
	<label for="Nome">Nome</label>  
	<input type="text" class="form-control" name="nome" value="${fabricante.nome}" > 
	<form:errors path="fabricante.nome" cssStyle="color:#B71C1C"/><br />

	<label for="CNPJ">CNPJ</label>  
	<input type="text"  class="form-control" name="Cnpj" value="${fabricante.cnpj}" > 
	<form:errors path="fabricante.cnpj" cssStyle="color:#B71C1C"/><br />
	
	<label for="TelContato">TelContato</label>  
	<input type="text" class="form-control"  name="TelContato" value="${fabricante.telContato}" > 
	<form:errors path="fabricante.telContato" cssStyle="color:#B71C1C"/><br />
	
	<label for ="Email">Email</label>
	<input type="text"  class="form-control" class="form-control"  name="Email" value="${fabricante.email }">
	<form:errors path="fabeicante.email" cssStyle="color:#B71C1C"/><br/>
	
	<button type="submit" class="btn btn-general btn-blue mr-2">Alterar</button>  
                     <a href="listaPrincipal" class="btn   btn-21">Voltar</a> 
	</form>
	</div>
	</div>
	</div>
	</div>
	
</body>
</html>