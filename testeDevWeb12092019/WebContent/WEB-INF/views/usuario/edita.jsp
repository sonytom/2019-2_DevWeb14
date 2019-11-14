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
      Alterar usuario: ${usuario.id}	
      <br />
      <br />
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
                  <form action="alteraUsuario" method="post">
                     
                     <input type="hidden" name="id" value="${usuario.id}" />
                     <label for="Nome">Nome</label>  
                     <input type="text" class="form-control" name="nome" value="${usuario.nome}" > 
                     <form:errors path="usuario.nome" cssStyle="color:#B71C1C"/>
                     <br />
                     
                     <label for="Login">Login</label>  
                     <input type="text" class="form-control" name="login" value="${usuario.login}" >
                     <form:errors path="usuario.login" cssStyle="color:#B71C1C"/>
                     <br />
                     <label for="Senha">Senha</label>  	
                     <input type="password" class="form-control" name="senha" value="${usuario.senha}">
                     <form:errors path="usuario.senha" cssStyle="color:#B71C1C"/>
                     <br />
                     <label for="DataNascimento">Data Nascimento</label>  
                     <input type="text" class="form-control" name="dataNascimento" value ="
                     <fmt:formatDate value="${usuario.dataNascimento.time}" pattern="dd/MM/yyyy" />
                     " > 
                     <form:errors path="usuario.dataNascimento" cssStyle="color:#B71C1C"/>
                     <br />
                     <label for="RG">RG</label>  
                     <input type="text" class="form-control" name="Rg" value="${usuario.rg}" > 
                     <form:errors path="usuario.rg" cssStyle="color:#B71C1C"/>
                     <br />
                     <label for="CPF">CPF</label>  
                     <input type="text" class="form-control" name="Cpf" value="${usuario.cpf}" > 
                     <form:errors path="usuario.cpf" cssStyle="color:#B71C1C"/>
                     <br />
                     <label for="TelContato">TelContato</label>  
                     <input type="text" class="form-control" name="TelContato" value="${usuario.telContato}" > 
                     <form:errors path="usuario.telContato" cssStyle="color:#B71C1C"/>
                     <br />
                     <label for="Endereco">Endereco</label>  
                     <input type="text" class="form-control" name="Endereco" value="${usuario.endereco}" > 
                     <form:errors path="usuario.endereco" cssStyle="color:#B71C1C"/>
                     <br />
                     <button type="submit" class="btn btn-general btn-blue mr-2">Alterar</button>  
                     <a href="listaPrincipal" class="btn   btn-21">Voltar</a> 
                  </form>
               </div>
            </div>
         </div>
      </div>
      </div>
   </body>
</html>
<c:import url="/WEB-INF/views/principal/footer.jsp"/>