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



<!--
author: Boostraptheme
author URL: https://boostraptheme.com
License: Creative Commons Attribution 4.0 Unported
License URL: https://creativecommons.org/licenses/by/4.0/
-->


  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Business Bootstrap Responsive Template</title>
    <link rel="shortcut icon" href="img/favicon.ico">

    <!-- Global Stylesheets -->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">
    <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/testeDevWeb12092019/resources/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/testeDevWeb12092019/resources/css/animate/animate.min.css">
    <link rel="stylesheet" href="/testeDevWeb12092019/resources/css/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="/testeDevWeb12092019/resources/css/owl-carousel/owl.theme.default.min.css">
    <link rel="stylesheet" href="/testeDevWeb12092019/resources/css/style.css">
    
    <!-- Core Stylesheets -->
    <link rel="stylesheet" href="/testeDevWeb12092019/resources/css/shop.css">
  </head>

  <body id="page-top">

<!--====================================================
                         HEADER
======================================================--> 

    <header>



 
<!--====================================================
                       HOME-P
======================================================-->
    <div id="home-p" class="home-p pages-head3 text-center">
      <div class="container">
        <h1 class="wow fadeInUp" data-wow-delay="0.1s">Produtos</h1>
      </div><!--/end container-->
    </div> 

<!--====================================================
                        CART
======================================================-->
    
      <div class="container">
        <table id="cart" class="table table-hover table-condensed">
          <thead>
            <tr>
              <th style="width:50%">id</th>
              <th style="width:10%">IdFabricante</th>
              <th style="width:10%">Iddistribuidora</th>
              <th style="width:10%">Nome</th>
              <th style="width:8%">Dosagem</th>
              <th style="width:22%" class="text-center">Data de Inclusao</th>
              <th style="width:22%" class="text-center">Data de Fabricante</th>
              <th style="width:22%" class="text-center">Data de Validade</th>
              <th style="width:8%">LOTE</th>
              <th style="width:8%">Preco Lote</th>
              <th style="width:8%">qtd Lote</th>
              <th style="width:8%">Preco qtd</th>
              
              <th style="width:8%">Editar</th>
              <th style="width:8%">Excluir</th>
            </tr>
          </thead>
          <tbody>
            <tr>
         
         
         <div class="col-md-12 float-left eigth-button mt-5">
                    <a href="novoProduto" class="btn float-left  btn-21">Novo Produto</a> 
                </div><br>
         
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
				
				<td><button class="btn btn-warning btn-sm"><a href="editaProduto?idproduto=${produto.idproduto}" title="Editar"><i class="fa fa-refresh"></i></a></button></td>
				<td><button class="btn btn-danger btn-sm"><a href="removeProduto?idproduto=${produto.idproduto}" title="Excluir"><i class="fa fa-trash-o"></i></a></button>
				</td>
		</c:forEach>
	</table>
</body>
</html>
            
            
    
            
               
          
     
           
          </tbody>
          
        </table>
      </div>
   



<c:import url="/WEB-INF/views/principal/footer.jsp"/>
