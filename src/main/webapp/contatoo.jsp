<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<!doctype html>
<html lang="pt-br">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Contato</title>

    <!-- CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">

  </head>
 <body class="gradiente">
    <header background-color="#F0E68C" id="títuloanimado">
    <p>
    <p>
      <h1>Entre em contato conosco</h1>
     <p>
    </header>
    <section id="informacoes">
    <p align="center"><b>Telefone: (19)20000000/Celular: (19)999998888</b></p>
    <p></p>
    <p></p>
    <p align="center"><b>Email: contato@contato.com</b></p>   
    <p></p>
    <p></p>
    <p align="center"><b><u>Visite nossas Redes Sociais</u></b></p>
    <p></p>
    
    
    <p></p>
    <p align="center"><a href="https://web.whatsapp.com/" ><button id="wpp">Whatsapp</button></a></p>
    <p></p>
    <p></p>
    <p align="center"><a href="https://www.instagram.com/"><button id="insta">Instagram</button></a></p>

    <p></p>
    <p align="center"><a href="https://www.linkedin.com/" ><button id="lnk">Linkedin</button></a></p>
    </section>
    <section>
    <p align="center">
    <h2 align="center">Informações para Contato</h2>
    </p>
    <p></p>
    <div>
    <p align="center">
    <label for="name">Nome: <abbr title="required">*</abbr></label>
    <input id="username" type="text" name="username">
    <label for="cel">Celular: <abbr title="required">*</abbr></label>
    <input id="cel" type="text" name="cel">
    <label for="email">E-mail: <abbr title="required">*</abbr></label>
    <input id="email" type="text" name="email">
    <label for="assunto">Assunto: <abbr title="required">*</abbr></label>
    <input id="assunto" type="text" name="assunto">
    </p>
    <p align="center">
    <button id="btncadastro" class="btn btn-dark" type="submit"
					onclick="return validar()">Enviar</button>
    </p>
    </div>
    </section>

    <!-- js -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/utilizando-bootstrap.js"></script>

      <footer>
      Copyright 2021 | VILT GROUP 
    </footer>
  </body>
</html>
