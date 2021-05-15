<%@ taglib uri="WEB-INF/mytags.tld" prefix="fiec" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<fiec:armazenamento />

<!doctype html>
<html lang="pt-br">
<head>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Treinamento Indaiatuba Abril 2021</title>

<!--CSS-->
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="css/utilizando-bootstrap.css">
<link type="text/css" rel="stylesheet" href="css/ajustes-screens.css">

<!-- JS -->
<script type="text/javascript" src="js/jquery-3.6.0.min.js" defer></script>
<script type="text/javascript" src="js/bootstrap.min.js" defer></script>
<script type="text/javascript" src="js/jquery.mask.min.js" defer></script>
<script type="text/javascript" src="js/masks.js" defer></script>
<script type="text/javascript" src="js/validation.js" defer></script>

</head>
<body>
<c:set var="qtdeAlunos" value="${fn:length(alunos)}" />
<c:set var="qtdeAlunosRepr" value="${fn:length(alunos)}" />
<!--MENU DE NAVEGAÇÃO DO WEBSITE-->
<nav>
    <a href="#conteudo">Conteúdo</a>
    <a href="#cadastrar">Cadastrar</a>
    
    <c:if test="${qtdeAlunos>0}">
    	<a href="#lista">Lista de alunos</a>
    </c:if>
    
</nav>

<!--TITULO PRINCIPAL-->
<header>
    <h1>Treinamento Indaiatuba Abril 2021</h1>
</header>

<!--iMAGEM-->
<section id="banner">
    <img src="https://i.picsum.photos/id/210/1600/350.jpg?hmac=u5C8ihcdKxZE0rfrOYEZtcZAtuGdQGFflz4x4n9dFDA" alt="">
</section>

<!--SESSÃO DO CONTEÚDO DO SITE-->
<section id="conteudo">
    <div class="my-container">
        <h2>Utilizando Bootstrap</h2>
        <p>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
            veniam,
            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
            consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
            non
            proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
        </p>
        <p>
            <ul>
                <li>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                </li>
                <li>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                </li>
                <li>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                </li>
                <li>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                </li>
                <li>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                </li>
            </ul>
        </p>
        <p>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
            veniam,
            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
            consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
            non
            proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
        </p>
        <p>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
            veniam,
            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
            consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
            non
            proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
        </p>
    </div>
</section>

<!--SESSÃO DO FORMULÁRIO DE CADASTRO DO ALUNO-->
<section id="cadastrar">
    <div class="my-container">
        <h2>Cadastro de Aluno</h2>
        <form action="index.jsp" class="form needs-validation">

            <div class="container">
                
                <div class="form-group">

                    <div class="col-12">

                        <label for="inputName" class="form-label">Nome completo*</label> 
                        <input type="text" class="form-control" name="nome" id="inputName" minlength="2" maxlength="50" required>
                        <div class="invalid-feedback">Insira seu nome</div>

                    </div>

                </div>

                <div class="row">

                    <div class="col-md-6">

                        <label for="inputCpf" class="form-label">CPF*</label>
                        <input type="text" class="form-control" name="cpf" id="inputCpf" maxlength="14" required>
                        <div class="invalid-feedback">Ops! Esqueceu seu CPF</div>

                    </div>

                    <div class="col-md-3">

                        <label for="inputDate" class="form-label">Data de Nascimento*</label>
                        <input class="form-control" type="date" name="nasc" id="inputDate" maxlength="10" minlength="10" required>
                        <div class="invalid-feedback">Insira sua data de nascimento</div>

                    </div>

                    <div class="col-md-3">

                        <label for="inputSexo" class="form-label">Sexo*</label>

                        <select name="sexo" id="inputSexo" class="form-select" required>

                            <option selected disabled value="">Selecione</option>
                            <option value="Masculino">Masculino</option>
                            <option value="Feminino">Feminino</option>

                        </select>
                        <div class="invalid-feedback">Selecione um sexo</div>

                    </div>

                </div>

                <div class="row">

                    <div class="col-md-6">

                        <div class="form-group">

                            <label for="inputEmail" class="form-label">Email*</label>
                            <input class="form-control" type="email" name="mail" id="inputEmail" minlength="10" maxlength="40" required>
                            <div class="invalid-feedback">Insira um endereço de email</div>

                        </div>

                    </div>

                    <div class="col-md-6">

                        <div class="form-group">

                            <label for="inputCel" class="form-label">Celular*</label>
                            <input class="form-control" type="tel" name="cel" id="inputCel" minlength="10" maxlength="18" required>
                            <div class="invalid-feedback">Ops! Esqueceu do seu número de celular</div>

                        </div>

                    </div>

                </div>

                <hr>

                <div class="row">

                    <div class="col-md-6">

                        <div class="form-group">

                            <label for="inputNivel" class="form-label">Nível*</label>

                            <select name="nivel" id="inputNivel" class="form-select" required>

                                <option selected disabled value="">Selecione</option>
                                <option value="novato">Novato</option>
                                <option value="formado">Formado</option>
                                <option value="veterano">Veterano</option>

                            </select>
                            <div class="invalid-feedback">Selecione um nível</div>

                        </div>

                    </div>

                    <div class="col-md-6">
                        
                        <div class="form-group">

                            <label for="inputMedia" class="form-label">Média*</label>
                            <input class="form-control" type="text" name="media" id="inputMedia" maxlength="4" min="0.1" max="10.0" required>
                            <div class="invalid-feedback">Ops! Esqueceu da sua média</div>

                        </div>

                    </div>
                </div>

                <hr>

                <small>
                    * Campo obrigatório!
                </small>

                <hr>

                <button id="buttonSubmit" type="submit" class="btn btn-success">Cadastrar-se</button>

            </div>

        </form>
    </div>
</section>

<!--SESSÃO DA TABELA DE ALUNOS-->
<c:if test="${qtdeAlunos>0}">
	<section id="lista">
	    <div class="my-container">
	        <h2 id="titulo-tabela">Total de Alunos</h2>
	        <div class="table-responsive">
	            <table class="table table-striped table-responsive"> 
	                <thead>
	                <tr>
	                    <th scope="col">Nome completo</th>
	                    <th scope="col">CPF</th>
	                    <th scope="col">Data de nascimento</th>
	                    <th scope="col">Sexo</th>
	                    <th scope="col">Email</th>
	                    <th scope="col">Celular</th>
	                    <th scope="col">Nível</th>
	                    <th scope="col">Média</th>
	                </tr>
	                </thead>
	                <tbody>
	                <c:set var="media" value="${6}" />
	                <c:forEach items="${alunos}" var="aluno">
	                	<tr>
	                		<td><c:out value="${aluno.nome}"></c:out></td>
	                		<td><c:out value="${aluno.cpf}"></c:out></td>
	                		<td><fmt:formatDate value="${aluno.dataDeNascimento}" pattern="dd/MM/yyyy" /></td>
	                		<td><c:out value="${aluno.sexo}"></c:out></td>
	                		<td><c:out value="${aluno.email}"></c:out></td>
	                		<td><c:out value="${aluno.celular}"></c:out></td>
	                		<td><c:out value="${aluno.nome}"></c:out></td>
	                		<c:choose>
								<c:when test="${aluno.media <= media}">
									<td class="bg-danger text-white"><c:out value="${aluno.media}"></c:out></td>
								</c:when>
								<c:otherwise>
									<td class="bg-success text-white"><c:out value="${aluno.media}"></c:out></td>
								</c:otherwise>                		
	                		</c:choose>
	                	</tr>
	                </c:forEach>
	                </tbody>
	            </table>
	        </div>
	    </div>
	</section>
</c:if>
<c:if test="${ aluno.media >= 6 }">
	<section id="lista">
	    <div class="my-container">
	        <h2 id="titulo-tabela">Lista de Aprovados</h2>
	        <div class="table-responsive">
	            <table class="table table-striped table-responsive"> 
	                <thead>
	                <tr>
	                    <th scope="col">Nome completo</th>
	                    <th scope="col">CPF</th>
	                    <th scope="col">Data de nascimento</th>
	                    <th scope="col">Sexo</th>
	                    <th scope="col">Email</th>
	                    <th scope="col">Celular</th>
	                    <th scope="col">Nível</th>
	                    <th scope="col">Média</th>
	                </tr>
	                </thead>
	                <tbody>
	                <c:set var="media" value="${6}" />
	                <c:forEach items="${alunos}" var="aluno">
	                	<c:if test="${ aluno.media >= 6 }">
		                	<tr>
		                		<td><c:out value="${aluno.nome}"></c:out></td>
		                		<td><c:out value="${aluno.cpf}"></c:out></td>
		                		<td><fmt:formatDate value="${aluno.dataDeNascimento}" pattern="dd/MM/yyyy" /></td>
		                		<td><c:out value="${aluno.sexo}"></c:out></td>
		                		<td><c:out value="${aluno.email}"></c:out></td>
		                		<td><c:out value="${aluno.celular}"></c:out></td>
		                		<td><c:out value="${aluno.nome}"></c:out></td>
		                		<c:choose>
									<c:when test="${aluno.media <= media}">
										<td class="bg-danger text-white"><c:out value="${aluno.media}"></c:out></td>
									</c:when>
									<c:otherwise>
										<td class="bg-success text-white"><c:out value="${aluno.media}"></c:out></td>
									</c:otherwise>                		
		                		</c:choose>
		                	</tr>
		                </c:if>
	                </c:forEach>
	                </tbody>
	            </table>
	        </div>
	    </div>
	</section>
</c:if>
	<section id="lista">
	    <div class="my-container">
	        <h2 id="titulo-tabela">Lista de Reprovados</h2>
	        <div class="table-responsive">
	            <table class="table table-striped table-responsive"> 
	                <thead>
	                <tr>
	                    <th scope="col">Nome completo</th>
	                    <th scope="col">CPF</th>
	                    <th scope="col">Data de nascimento</th>
	                    <th scope="col">Sexo</th>
	                    <th scope="col">Email</th>
	                    <th scope="col">Celular</th>
	                    <th scope="col">Nível</th>
	                    <th scope="col">Média</th>
	                </tr>
	                </thead>
	                <tbody>
	                <c:set var="media" value="${6}" />
	                <c:forEach items="${alunos}" var="aluno">
	                	<c:if test="${ aluno.media <= 6 }">
		                	<tr>
		                		<td><c:out value="${aluno.cpf}"></c:out></td>
		                		<td><fmt:formatDate value="${aluno.dataDeNascimento}" pattern="dd/MM/yyyy" /></td>
		                		<td><c:out value="${aluno.sexo}"></c:out></td>
		                		<td><c:out value="${aluno.email}"></c:out></td>
		                		<td><c:out value="${aluno.celular}"></c:out></td>
		                		<td><c:out value="${aluno.nome}"></c:out></td>
		                		<c:choose>
									<c:when test="${aluno.media <= media}">
										<td class="bg-danger text-white"><c:out value="${aluno.media}"></c:out></td>
									</c:when>
									<c:otherwise>
										<td class="bg-success text-white"><c:out value="${aluno.media}"></c:out></td>
									</c:otherwise>                		
		                		</c:choose>
		                	</tr>
		                </c:if>
	                </c:forEach>
	                </tbody>
	            </table>
	        </div>
	    </div>
	</section>
<!--RODAPÉ DO WEBSITE - COPYRIGHT-->
<footer>
    <h4>Copyright 2021 | VILT GROUP</h4>
</footer>
</body>
</html>
