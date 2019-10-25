<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Sistema Cadastro</title>

<!-- Custom fonts for this template-->
<link href="/testeDevWeb12092019/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

<!-- Custom styles for this template-->
<link href="/testeDevWeb12092019/resources/css/sb-admin.css" rel="stylesheet">

</head>
<body class="bg-dark">
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Login</div>
      <div class="card-body">
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

<!-- Bootstrap core JavaScript-->
<script src="/testeDevWeb12092019/resources/vendor/jquery/jquery.min.js"></script>
<script src="WEB-INF/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="/testeDevWeb12092019/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

</html>