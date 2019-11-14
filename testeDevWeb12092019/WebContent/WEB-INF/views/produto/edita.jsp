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
      Alterar usuario: ${produto.idproduto}	
      <br />
      <br />
      <div class="content-inner chart-cont">
         <!--***** FORM LAYOUTS *****-->     
         <div class="row">
            <div class="col-md-12">
               <!--***** USER INFO *****-->
               <div class="card form" id="form1">
                  <div class="card-header">
                     <h3><i class="fa fa-user-circle"></i>Cadastro do Produtos</h3>
                  </div>
                  <br>
                  <form action="alteraProduto" method="post" class="form-horizontal">
                     <label for="Idproduto">Idproduto</label>  
                     <input type="text" class="form-control" name="idproduto" value="${produto.idproduto}" >
                     <form:errors path="produto.idproduto" cssStyle="color:#B71C1C"/>
                     <br />
                     <label for="Idfabricante">idfabricante</label>  
                     <input type="text" class="form-control" name="idfabricante" value="${produto.idfabricante}" >
                     <form:errors path="produto.idfabricante" cssStyle="color:#B71C1C"/>
                     <br />
                     <label for="Iddistribuidora">iddistribuidora</label>  
                     <input type="text" class="form-control" name="iddistribuidora" value="${produto.iddistribuidora}" >
                     <form:errors path="produto.iddistribuidora" cssStyle="color:#B71C1C"/>
                     <br />
                     <label for="Nome">nome</label>  
                     <input type="text"  class="form-control"name="nome" value="${produto.nome}" >
                     <form:errors path="produto.nome" cssStyle="color:#B71C1C"/>
                     <br />
                     <label for="Dosagem">Dosagem</label>  
                     <input type="text" class="form-control"name="dosagem" value="${produto.dosagem}" >
                     <form:errors path="produto.dosagem" cssStyle="color:#B71C1C"/>
                     <br />
                     <label for="Dtinclusao">dtinclusao</label>  
                     <input type="text"class="form-control" name="dtinclusao" value ="
                     <fmt:formatDate value="${dtinclusao}" pattern="dd/MM/yyyy" />
                     ">
                     <form:errors path="produto.dtinclusao" cssStyle="color:#B71C1C"/>
                     <br />
                     <label for="DtFabricacao">dtfabricacao</label>  
                     <input type="text"class="form-control" name="dtfabricacao" value ="
                     <fmt:formatDate value="${dtfabricacao}" pattern="dd/MM/yyyy" />
                     ">
                     <form:errors path="produto.dtfabricacao" cssStyle="color:#B71C1C"/>
                     <br />
                     <label for="DtValidade">dtvalidade</label>  
                     <input type="text"class="form-control" name="dtvalidade" value ="
                     <fmt:formatDate value="${dtvalidade}" pattern="dd/MM/yyyy" />
                     ">
                     <form:errors path="produto.dtvalidade" cssStyle="color:#B71C1C"/>
                     <br />
                     <label for="Lote">lote</label>  
                     <input type="text"class="form-control" name="lote" value="${produto.lote}" >
                     <form:errors path="produto.lote" cssStyle="color:#B71C1C"/>
                     <br />
                     <label for="Precolot">precolot</label>  
                     <input type="text" class="form-control"name="precolot" value="${produto.precolot}" >
                     <form:errors path="produto.precolot" cssStyle="color:#B71C1C"/>
                     <br />
                     <label for="QtdLote">qtdLote</label>  
                     <input type="text"class="form-control" name="qtdLote" value="${produto.qtdLote}" >
                     <form:errors path="produto.qtdLote" cssStyle="color:#B71C1C"/>
                     <br />
                     <label for="Precoqtd</">precoqtd</label>  
                     <input type="text" class="form-control" name="precoqtd" value="${produto.precoqtd}" >
                     <form:errors path="produto.precoqtd" cssStyle="color:#B71C1C"/>
                     <br />
                     <button type="submit" class="btn btn-general btn-blue mr-2">Alterar</button>  
                     <a href="listaPrincipal" class="btn   btn-21">Voltar</a> 
                  </form>
               </div>
            </div>
         </div>
      </div>
   </body>
</html>