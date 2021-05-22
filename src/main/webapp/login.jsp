<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="sweetalert2.min.css">
        <link rel="stylesheet" href="css/reset.css">
        <link rel="stylesheet" href="css/login.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <title>Pagina de Login</title>
    </head>
<body>
<div class="nav-lateral">
         <div class="login-text">
            <h2>Pagina de Login</h2>
            <p>Faça login para entrar no site de cadastro da VILT.</p>
         </div>
      </div>
      <div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
               <form action="Login">
                  <div class="form-group">
                     <label>Nome</label>
                     <input type="text" id= "nome" class="form-control" name="username" placeholder="User Name">
                  </div>
                  <div class="form-group">
                     <label>Senha</label>
                     <input type="password" id="senha" class="form-control" name="password" placeholder="Password">
                  </div>
                  <button type="submit" value="login" class="btn btn-login" onclick="validar()">Login</button>
               </form>
            </div>
         </div>
      </div>
      <script src="js/bootstrap.min.js"></script>
      <script src="js/login.js"></script>
      <script src="sweetalert2.min.js"></script>
      <script src="//cdn.jsdelivr.net/npm/promise-polyfill@8/dist/polyfill.js"></script>
      <script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    </body>
</html>