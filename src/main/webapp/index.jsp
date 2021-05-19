<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib uri="WEB-INF/mytags.tld" prefix="fiec" %>

<fiec:armazenamento />

<!doctype html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Treinamento Indaiatuba Abril 2021</title>
    <!-- CSS -->
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>

<body>
	<c:set var="media" value="${7}"/>
	<c:set var="quantidadeDeAlunos" value="${fn:length(alunos)}" />
	<% if(session.getAttribute("username") == null ){
		response.sendRedirect("login.jsp");
	}
	%>
    <header>
        <nav class="navbar navbar-light my-navbar">
            <ul>
                <li><a href="#conteudo">Conteúdo</a></li>
                <li><a href="#cadastrar">Cadastrar</a></li>
                <c:if test="${quantidadeDeAlunos > 0 }">
                <li><a href="#lista">Listagem</a></li>
                </c:if>
            </ul>
        </nav>
        <div id="home" class="my-header-content">
            <h1>Treinamento Indaiatuba Abril 2021</h1>
        </div>
    </header>
    <section id="conteudo">
        <div class="container">
            <h2 class="txt-center">Changing ways together</h2>
            <p>
                Programa da VILT com parceria da FIEC - Fundação Indaiatubana de Edução e Cultura, com o objetivo de preparar os participantes para o mercado de trabalho e descobrir novos talentos, o desafio consiste em:
            </p>
            <p>
                <ul class="list-bullet-styled">
                    <li>5 finais de semanas com aulas sobre programação com desenvolvedores da VILT.</li>
                    <li>Construção de um projeto com base nas aulas passadas.</li>
                    <li>Apresentação do projeto para o pessoal da VILT.</li>
                </ul>
            </p>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
            </p>
        </div>
    </section>
    <section id="cadastrar">
        <div class="container">
            <h2 class="txt-center">Cadastro de Aluno</h2>
            <form class="row g-3 needs-validation" action="index.jsp">
                <div class="col-md-4">
                    <label for="validationCustom01" class="form-label">Nome Completo</label>
                    <input type="text" class="form-control" name="nome" id="nome" required>
                    <div class="valid-feedback">
                        Pronto!
                    </div>

                </div>
                <div class="col-md-4">
                    <label for="validationCustom02" class="form-label">CPF</label>
                    <input type="text" class="form-control" name="cpf" id="cpf" required>
                    <div class="valid-feedback">
                        Pronto!
                    </div>
                </div>
                <div class="col-md-4">
                    <label for="validationCustomUsername" class="form-label">E-mail</label>
                    <div class="input-group has-validation">
                        <span class="input-group-text" id="inputGroupPrepend">@</span>
                        <input type="text" class="form-control" name="mail" id="mail" aria-describedby="inputGroupPrepend" required>
                        <div class="valid-feedback">
                            Pronto!
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <label for="validationCustom02" class="form-label">Data de Nascimento</label>
                    <input type="text" class="form-control" name="nasc" id="nasc" required>
                    <div class="valid-feedback">
                        Pronto!
                    </div>
                </div>
                <div class="col-md-4">
                    <label for="validationCustom02" class="form-label">Celular</label>
                    <input type="text" class="form-control" name="cel" id="cel" required>
                    <div class="valid-feedback">
                        Pronto!
                    </div>
                </div>
                <div class="col-md-3">
                    <label for="validationDefault05" class="form-label">Media</label>
                    <input type="text" class="form-control" name="media" id="media" required>
                </div>
                <div class="col-md-3">
                    <label for="validationCustom04" class="form-label">Sexo</label>
                    <select class="form-select" name="sexo" id="sexo" required>
                    <option selected disabled value="">Selecione</option>
                    <option>Masculino</option>
                    <option>Feminino</option>
                  </select>
                    <div class="invalid-feedback">
                        Selecione uma opção.
                    </div>
                </div>
                <div class="col-md-3">
                    <label for="validationCustom04" class="form-label">Nivel</label>
                    <select class="form-select" name="nivel" id="nivel" required>
                      <option selected disabled value="">Selecione</option>
                      <option>Novato</option>
                      <option>Formado</option>
                      <option>Veterano</option>
                    </select>
                    <div class="invalid-feedback">
                        Selecione uma opção.
                    </div>
                </div>
                <div class="col-12">
                    <button class="btn btn-primary" type="submit" onclick="validar()">Cadastrar</button>
                </div>
            </form>
        </div>
    
	    </section>
	    <section id="lista">
	        <div class="container">
	            <h2 class="txt-center">Lista de alunos</h2>
	        <c:if test="${quantidadeDeAlunos > 0 }">
	         	<table id="table">
	                <thead>
	                    <tr>
	                        <th scope="col">Nome</th>
	                        <th scope="col">CPF</th>
	                        <th scope="col">Nascimento</th>
	                        <th scope="col">Sexo</th>
	                        <th scope="col">Email</th>
	                        <th scope="col">Celular</th>
	                        <th scope="col">Nivel</th>
	                        <th scope="col">Media</th>
	                    </tr>
	                </thead>
	                <tbody>
	                    <c:forEach var="aluno" items="${alunos}">
		                    <tr>
		                        <td data-label="Nome"><c:out value="${aluno.nome}"/></td>
		                        <td data-label="CPF"><c:out value="${aluno.cpf}"/></td>
		                        <td data-label="Nascimento"><fmt:formatDate value="${aluno.dataDeNascimento}" pattern="dd/MM/yyyy" /></td>
		                        <td data-label="Sexo"><c:out value="${aluno.sexo}"/></td>
		                        <td data-label="E-mail"><c:out value="${aluno.email}"/></td>
                                <td id="celular" data-label="Celular"><c:out value="${aluno.celular}"/></td>
		                        <td data-label="Nivel"><c:out value="${aluno.nivel}"/></td>
		                        <c:choose>
			                        <c:when test="${aluno.media >= media }">
			                        	<td data-label="Média" class="color-green"><c:out value="${aluno.media}"/></td>
									</c:when>
									<c:otherwise>
			                        	<td data-label="Média" class="color-red"><c:out value="${aluno.media}"/></td>
									</c:otherwise>
		                        </c:choose>
		                    </tr>
	                    </c:forEach>
	                </tbody>
	            </table>
	        </c:if>
	            
	        </div>
	    </section>
	    
	    <section id="lista">
	        <div class="container">
	            <h2 class="txt-center">Lista de Aprovados</h2>
	        <c:if test="${quantidadeDeAlunos > 0 }">
	         	<table id="table">
	                <thead>
	                    <tr>
	                        <th scope="col">Nome</th>
	                        <th scope="col">CPF</th>
	                        <th scope="col">Nascimento</th>
	                        <th scope="col">Sexo</th>
	                        <th scope="col">Email</th>
	                        <th scope="col">Celular</th>
	                        <th scope="col">Nivel</th>
	                        <th scope="col">Media</th>
	                    </tr>
	                </thead>
	                <tbody>
	                    <c:forEach var="aluno" items="${alunos}">
	                    	<c:if test="${aluno.media >= media }">
			                    <tr>
			                        <td data-label="Nome"><c:out value="${aluno.nome}"/></td>
			                        <td data-label="CPF"><c:out value="${aluno.cpf}"/></td>
			                        <td data-label="Nascimento"><fmt:formatDate value="${aluno.dataDeNascimento}" pattern="dd/MM/yyyy" /></td>
			                        <td data-label="Sexo"><c:out value="${aluno.sexo}"/></td>
			                        <td data-label="E-mail"><c:out value="${aluno.email}"/></td>
			                        <td data-label="Celular"><c:out value="${aluno.celular}"/></td>
			                        <td data-label="Nivel"><c:out value="${aluno.nivel}"/></td>
			                        <c:choose>
				                        <c:when test="${aluno.media >= media }">
				                        	<td data-label="Média" class="color-green"><c:out value="${aluno.media}"/></td>
										</c:when>
										<c:otherwise>
				                        	<td data-label="Média" class="color-red"><c:out value="${aluno.media}"/></td>
										</c:otherwise>
			                        </c:choose>
			                    </tr>
		                    </c:if>
	                    </c:forEach>
	                </tbody>
	            </table>
	        </c:if>
	            
	        </div>
	    </section>
	    
	    <section id="lista">
	        <div class="container">
	            <h2 class="txt-center">Lista de Reprovados</h2>
	        <c:if test="${quantidadeDeAlunos > 0 }">
	         	<table id="table">
	                <thead>
	                    <tr>
	                        <th scope="col">Nome</th>
	                        <th scope="col">CPF</th>
	                        <th scope="col">Nascimento</th>
	                        <th scope="col">Sexo</th>
	                        <th scope="col">Email</th>
	                        <th scope="col">Celular</th>
	                        <th scope="col">Nivel</th>
	                        <th scope="col">Media</th>
	                    </tr>
	                </thead>
	                <tbody>
	                    <c:forEach var="aluno" items="${alunos}">
	                    	<c:if test="${aluno.media < media }">
			                    <tr>
			                        <td data-label="Nome"><c:out value="${aluno.nome}"/></td>
			                        <td data-label="CPF"><c:out value="${aluno.cpf}"/></td>
			                        <td data-label="Nascimento"><fmt:formatDate value="${aluno.dataDeNascimento}" pattern="dd/MM/yyyy" /></td>
			                        <td data-label="Sexo"><c:out value="${aluno.sexo}"/></td>
			                        <td data-label="E-mail"><c:out value="${aluno.email}"/></td>
			                        <td data-label="Celular"><c:out value="${aluno.celular}"/></td>
			                        <td data-label="Nivel"><c:out value="${aluno.nivel}"/></td>
			                        <c:choose>
				                        <c:when test="${aluno.media >= media }">
				                        	<td data-label="Média" class="color-green"><c:out value="${aluno.media}"/></td>
										</c:when>
										<c:otherwise>
				                        	<td data-label="Média" class="color-red"><c:out value="${aluno.media}"/></td>
										</c:otherwise>
			                        </c:choose>
			                    </tr>
		                    </c:if>
	                    </c:forEach>
	                </tbody>
	            </table>
	        </c:if>
	            
	        </div>
	    </section>
 
    <footer>
        <p>Copyright 2021 | VILT GROUP</p>
    </footer>

    <!-- js -->
    <script src="js/main.js"></script>
    <script src="sweetalert2.all.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/promise-polyfill@8/dist/polyfill.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <script src="js/bootstrap.min.js"></script>

</body>

</html>

