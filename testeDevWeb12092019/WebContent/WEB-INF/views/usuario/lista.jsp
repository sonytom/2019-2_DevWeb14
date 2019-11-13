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
	
	<br />
	<br />



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
        <h1 class="wow fadeInUp" data-wow-delay="0.1s">Usuarios</h1>
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
              <th style="width:10%">Nome</th>
              <th style="width:8%">Login</th>
              <th style="width:22%" class="text-center">Data de Nascimento</th>
              <th style="width:8%">RG</th>
              <th style="width:8%">CPF</th>
              <th style="width:8%">Telefone</th>
              <th style="width:8%">Endereco</th>
              
              <th style="width:8%">Editar</th>
              <th style="width:8%">Excluir</th>
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
            
            
               <div class="col-md-12 float-left eigth-button mt-5">
                    <a href="novoUsuario" class="btn float-left  btn-21">Novo Usuario</a> 
                </div><br>
          
     
           
          </tbody>
          
        </table>
      </div>
   



    <!--Global JavaScript -->
    <script src="/testeDevWeb12092019/resources/js/jquery/jquery.min.js"></script>
    <script src="/testeDevWeb12092019/resources/js/popper/popper.min.js"></script>
    <script src="/testeDevWeb12092019/resources/js/bootstrap/bootstrap.min.js"></script>
    <script src="/testeDevWeb12092019/resources/js/wow/wow.min.js"></script>
    <script src="/testeDevWeb12092019/resources/js/owl-carousel/owl.carousel.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="/testeDevWeb12092019/resources/js/jquery-easing/jquery.easing.min.js"></script> 
    <script src="/testeDevWeb12092019/resources/js/custom.js"></script> 
  </body>

</html>
