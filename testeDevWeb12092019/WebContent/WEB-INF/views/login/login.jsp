<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!--
author: Boostraptheme
author URL: https://boostraptheme.com
License: Creative Commons Attribution 4.0 Unported
License URL: https://creativecommons.org/licenses/by/4.0/
-->




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">

    <title>Bootstrap Admin Template </title>
    <link rel="shortcut icon" href="/testeDevWeb12092019/resources/admin/img/favicon.ico">
    
    <!-- global stylesheets -->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
    <link rel="stylesheet" href="/testeDevWeb12092019/resources/admin/css/bootstrap.min.css">
    <link rel="stylesheet" href="/testeDevWeb12092019/resources/admin/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/testeDevWeb12092019/resources/admin/css/font-icon-style.css">
    <link rel="stylesheet" href="/testeDevWeb12092019/resources/admin/css/style.default.css" id="theme-stylesheet">

    <!-- Core stylesheets -->
    <link rel="stylesheet" href="/testeDevWeb12092019/resources/admin/css/pages/login.css">
</head>

<body> 

<!--====================================================
                        PAGE CONTENT
======================================================--> 
      <section class="hero-area">
        <div class="overlay"></div>
        <div class="container">
          <div class="row">
            <div class="col-md-12 ">
                <div class="contact-h-cont">
                  <h3 class="text-center"><img src="/testeDevWeb12092019/resources/admin/img/logo.png" class="img-fluid" alt=""></h3><br>
                  
                  <form action="efetuaLogin" method="post">
		
          <div class="form-group">
            <div class="form-label-group">
              <input type="text" name="login" id="inputEmail" class="form-control" placeholder="Login" required="required" autofocus="autofocus">
              <label for="inputEmail">Usuario</label>
            </div>
          </div>		  
          <div class="form-group">
            <div class="form-label-group">
              <input name="senha" type="password"  value="" id="inputPassword" class="form-control" placeholder="Senha" required="required">
              <label for="inputPassword">Senha</label>
            </div>
          </div>      
          	<input type="submit" value="Entrar" class="btn btn-primary btn-block">		  
        </form>
                  
                </div>
            </div>
          </div>  
        </div>
      </section>
      
    <!--Global Javascript -->
    <script src="/testeDevWeb12092019/resources/admin/js/jquery.min.js"></script>
    <script src="/testeDevWeb12092019/resources/admin/js/tether.min.js"></script>
    <script src="/testeDevWeb12092019/resources/admin/js/bootstrap.min.js"></script>
</body>

</html>