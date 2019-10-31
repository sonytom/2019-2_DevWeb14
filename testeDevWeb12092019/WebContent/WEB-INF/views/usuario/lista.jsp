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
	<a href="novoUsuario">Cadastrar novo usuario</a>
	<br />
	<br />
	<table>
		<tr>
			<th>Id</th>
			<th>Nome</th>
			<th>Login</th>
			<th>Data de Nascimento</th>
			<th>RG</th>
			<th>CPF</th>
			<th>TelContato</th>
			<th>Endereço</th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach items="${usuarios}" var="usuario">
			<tr>
				<td>${usuario.id}</td>
				<td>${usuario.nome}</td>
				<td>${usuario.login}</td>
				<td><fmt:formatDate value="${usuario.dataNascimento.time}" pattern="dd/MM/yyyy" /></td>
				<td>${usuario.rg}</td>
				<td>${usuario.cpf}</td>
				<td>${usuario.telContato}</td>
				<td>${usuario.endereco}</td>
				<td><a href="editaUsuario?id=${usuario.id}" title="Editar">Editar</a></td>
				<td><a href="removeUsuario?id=${usuario.id}" title="Excluir">Excluir</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>


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
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/animate/animate.min.css">
    <link rel="stylesheet" href="css/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl-carousel/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/style.css">
    
    <!-- Core Stylesheets -->
    <link rel="stylesheet" href="css/shop.css">
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
        <h1 class="wow fadeInUp" data-wow-delay="0.1s">Shoping Box</h1>
      </div><!--/end container-->
    </div> 

<!--====================================================
                        CART
======================================================-->
    <section id="cart" class="cart">
      <div class="container">
        <table id="cart" class="table table-hover table-condensed">
          <thead>
            <tr>
              <th style="width:50%">Product</th>
              <th style="width:10%">Price</th>
              <th style="width:8%">Quantity</th>
              <th style="width:22%" class="text-center">Subtotal</th>
              <th style="width:10%"></th>
            </tr>
          </thead>
          <tbody>
            <tr>
            
            
            <c:forEach items="${usuarios}" var="usuario">
			<tr>
				<td>${usuario.id}</td>
				<td>${usuario.nome}</td>
				<td>${usuario.login}</td>
				<td><fmt:formatDate value="${usuario.dataNascimento.time}" pattern="dd/MM/yyyy" /></td>
				<td>${usuario.rg}</td>
				<td>${usuario.cpf}</td>
				<td>${usuario.telContato}</td>
				<td>${usuario.endereco}</td>
				<td><button class="btn btn-warning btn-sm"><a href="editaUsuario?id=${usuario.id}" title="Editar"><i class="fa fa-refresh"></i></button></td>
				<td><button class="btn btn-danger btn-sm"><a href="removeUsuario?id=${usuario.id}" title="Excluir"><i class="fa fa-trash-o"></i></a></button>
				</td>
			</tr>
		</c:forEach>
            
            
               
          
     
           
          </tbody>
          
        </table>
      </div>
    </section>



    <!--Global JavaScript -->
    <script src="js/jquery/jquery.min.js"></script>
    <script src="js/popper/popper.min.js"></script>
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <script src="js/wow/wow.min.js"></script>
    <script src="js/owl-carousel/owl.carousel.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="js/jquery-easing/jquery.easing.min.js"></script> 
    <script src="js/custom.js"></script> 
  </body>

</html>
