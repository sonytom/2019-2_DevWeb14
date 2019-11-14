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
                     <h3><i class="fa fa-user-circle"></i>Cadastro do Produtos</h3>
                  </div>
                  <br>
                  <form action="adicionaProduto" method="post">
                     <div class="row">
                        <div class="col-md-6">
                           <div class="form-group">
                              <div class="form-group">
                                 <label for="Idproduto">Idproduto</label>  
                                 <input type="text" class="form-control" name="idproduto" value="${produto.idproduto}" >
                                 <form:errors path="produto.idproduto" cssStyle="color:#B71C1C"/>
                                 <br />
                              </div>
                              <div class="form-group">
                                 <label for="Idfabricante">idfabricante</label>  
                                 <input type="text" class="form-control" name="idfabricante" value="${produto.idfabricante}" >
                                 <form:errors path="produto.idfabricante" cssStyle="color:#B71C1C"/>
                                 <br />
                              </div>
                              <div class="form-group">
                                 <label for="Iddistribuidora">iddistribuidora</label>  
                                 <input type="text" class="form-control" name="iddistribuidora" value="${produto.iddistribuidora}" >
                                 <form:errors path="produto.iddistribuidora" cssStyle="color:#B71C1C"/>
                                 <br />
                              </div>
                              <div class="form-group">
                                 <label for="Nome">nome</label>  
                                 <input type="text" class="form-control" name="nome" value="${produto.nome}" >
                                 <form:errors path="produto.nome" cssStyle="color:#B71C1C"/>
                                 <br />
                              </div>
                              <div class="form-group">
                                 <label for="Dosagem">Dosagem</label>  
                                 <input type="text" class="form-control" name="dosagem" value="${produto.dosagem}" >
                                 <form:errors path="produto.dosagem" cssStyle="color:#B71C1C"/>
                                 <br />
                              </div>
                              <div class="form-group">
                                 <label for="Dtinclusao">dtinclusao</label>  
                                 <input type="text" class="form-control" name="dtinclusao" value ="
                                 <fmt:formatDate value="${dtinclusao}" pattern="dd/MM/yyyy" />
                                 ">
                                 <form:errors path="produto.dtinclusao" cssStyle="color:#B71C1C"/>
                                 <br />
                              </div>
                              <div class="form-group">
                                 <label for="DtFabricacao">dtfabricacao</label>  
                                 <input type="text"  class="form-control" name="dtfabricacao" value ="
                                 <fmt:formatDate value="${dtfabricacao}" pattern="dd/MM/yyyy" />
                                 ">
                                 <form:errors path="produto.dtfabricacao" cssStyle="color:#B71C1C"/>
                                 <br />
                              </div>
                              <div class="form-group">
                                 <label for="DtValidade">dtvalidade</label>  
                                 <input type="text" class="form-control" name="dtvalidade" value ="
                                 <fmt:formatDate value="${dtvalidade}" pattern="dd/MM/yyyy" />
                                 ">
                                 <form:errors path="produto.dtvalidade" cssStyle="color:#B71C1C"/>
                                 <br />
                              </div>
                              <div class="form-group">
                                 <label for="Lote">lote</label>  
                                 <input type="text" class="form-control" name="lote" value="${produto.lote}" >
                                 <form:errors path="produto.lote" cssStyle="color:#B71C1C"/>
                                 <br />
                              </div>
                              <div class="form-group">
                                 <label for="Precolot">precolot</label>  
                                 <input type="text" class="form-control" name="precolot" value="${produto.precolot}" >
                                 <form:errors path="produto.precolot" cssStyle="color:#B71C1C"/>
                                 <br />
                              </div>
                              <div class="form-group">
                                 <label for="QtdLote">qtdLote</label>  
                                 <input type="text" class="form-control" name="qtdLote" value="${produto.qtdLote}" >
                                 <form:errors path="produto.qtdLote" cssStyle="color:#B71C1C"/>
                                 <br />
                              </div>
                              <div class="form-group">
                                 <label for="Precoqtd</">precoqtd</label>  
                                 <input type="text" class="form-control" name="precoqtd" value="${produto.precoqtd}" >
                                 <form:errors path="produto.precoqtd" cssStyle="color:#B71C1C"/>
                                 <br />
                              </div>
                              <button type="submit" class="btn btn-general btn-blue mr-2">Cadastrar</button>  
                              <a href="listaPrincipal" class="btn   btn-21">Voltar</a> 
                           </div>
                        </div>
                     </div>
                  </form>
               </div>
            </div>
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