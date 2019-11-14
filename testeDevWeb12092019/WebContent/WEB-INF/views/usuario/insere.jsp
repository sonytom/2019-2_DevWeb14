<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<c:import url="/WEB-INF/views/principal/menu.jsp"/>

	

<!--
author: Boostraptheme
author URL: https://boostraptheme.com
License: Creative Commons Attribution 4.0 Unported
License URL: https://creativecommons.org/licenses/by/4.0/
-->


<html>

<head>
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">

    <title>Bootstrap Admin Template </title>
    <link rel="shortcut icon" href="img/favicon.ico">
    
    <!-- global stylesheets -->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/font-icon-style.css">
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">

    <!-- Core stylesheets -->
    <link rel="stylesheet" href="css/form.css">
</head>

<body> 

            
       

        <div class="content-inner chart-cont">

            <!--***** FORM LAYOUTS *****-->     
            <div class="row">
                <div class="col-md-12">

                    <!--***** USER INFO *****-->
                    <div class="card form" id="form1">
                        <div class="card-header">
                            <h3><i class="fa fa-user-circle"></i>Cadastro do Usuario</h3>
                        </div>
                        <br>
                        <form action="adicionaUsuario" method="post">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                						<label for="Nome">Nome</label>                     		 
											<input type="text" class="form-control"  name="nome" aria-describedby="emailHelp" placeholder="Coloque seu nome" value="${usuario.nome}" >
												<form:errors path="usuario.nome" cssStyle="color:#B71C1C"/><br />
                									</div>
                
                <div class="form-group">                  
                		<label for="Login">Login</label>  
						<input type="text" class="form-control" name="login" value="${usuario.login}" >
						<form:errors path="usuario.login" cssStyle="color:#B71C1C"/><br />
                </div>
                                    
                <div class="form-group">
						<label for="RG">RG</label>  
						<input type="text" class="form-control" name="Rg" value="${usuario.rg}" > 
						<form:errors path="usuario.rg" cssStyle="color:#B71C1C"/><br />
				</div>
	
				<div class="form-group">
						<label for="Endereco">Endereco</label>  
						<input type="text"  class="form-control"name="Endereco" value="${usuario.Endereco}" > 
						<form:errors path="usuario.endereco" cssStyle="color:#B71C1C"/><br />
				</div> 
				
	
                <div class="form-group">
                      <label class="custom-control custom-checkbox">
                             <input type="checkbox" class="custom-control-input" required>
                             <span class="custom-control-indicator"></span>
                             <span class="custom-control-description">Aceito os Termos e Condições</span>
                      </label> 
                 </div>
                 				</div>
                 
                <div class="col-md-6">               
                	<div class="form-group">                     
                		<label for="Senha">Senhaa</label>  
						<input type="password" class="form-control" name="senha" value="${usuario.senha}">
						<form:errors path="usuario.senha" cssStyle="color:#B71C1C"/><br />
				</div>
				  
				  
				<div class="form-group">
					<label for="DataNascimento">Data Nascimento</label>  
						<input type="text" class="form-control" name="dataNascimento" value ="<fmt:formatDate value="${dataNascimento}" pattern="dd/MM/yyyy" />">
						<form:errors path="usuario.dataNascimento" cssStyle="color:#B71C1C"/><br />
				</div>
	
	
	
				<div class="form-group">
					<label for="CPF">CPF</label>  
						<input type="text"  class="form-control" name="Cpf" value="${usuario.cpf}" > 
						<form:errors path="usuario.cpf" cssStyle="color:#B71C1C"/><br />
				</div>
				
				<div class="form-group">
					<label for="TelContato">TelContato</label>  
						<input type="text" class="form-control" name="TelContato" value="${usuario.TelContato}" > 
						<form:errors path="usuario.telContato" cssStyle="color:#B71C1C"/><br />
				</div>
				
</div>
</div>                          
</div>
</div> 
                           
                            <button type="submit" class="btn btn-general btn-blue mr-2">Cadastrar</button>  
                            
                   <a href="listaPrincipal" class="btn   btn-21">Voltar</a> 
                           
</div>
</div>
    

  
    
    <!--Core Javascript -->
    <script>
        new Chart(document.getElementById("myChart-nav").getContext('2d'), {
          type: 'doughnut',
          data: {
            labels: ["M", "T", "W", "T", "F", "S", "S"],
            datasets: [{
              backgroundColor: [
                "#2ecc71",
                "#3498db",
                "#95a5a6",
                "#9b59b6",
                "#f1c40f",
                "#e74c3c",
                "#34495e"
              ],
              data: [12, 19, 3, 17, 28, 24, 7]
            }]
          },
          options: {
              legend: { display: false },
              title: {
                display: true,
                text: ''
               } 
            }
        });
    </script> 
</body>

</html>
<c:import url="/WEB-INF/views/principal/footer.jsp"/>