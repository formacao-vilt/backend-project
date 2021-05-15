<%@ taglib uri="WEB-INF/mytags.tld" prefix="fiec" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<fiec:armazenamento />

<!doctype html>
<html lang="pt-br">
<head>
    <title>Treinamento Indaiatuba Abril 2021</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- CSS -->
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/utilizando-bootstrap.css">
</head>

<body>
	<c:set var="qtdAlunos" value="${fn:length(alunos)}"/>
	
    <nav>
        <a href="#conteudo">CONTEUDO</a>&nbsp&nbsp&nbsp&nbsp
        <a href="#cadastrar">CADASTRAR</a>&nbsp&nbsp&nbsp&nbsp
        <a href="#lista">LISTA DE ALUNOS</a>
    </nav>

    <header>
        <h1>Treinamento Indaiatuba Abril 2021</h1>
    </header>

    <section id="banner">
        <img src="https://i.picsum.photos/id/210/1600/350.jpg?hmac=u5C8ihcdKxZE0rfrOYEZtcZAtuGdQGFflz4x4n9dFDA" alt="">
    </section>

    <section id="conteudo">
        <div class="my-container">
            <h2>Utilizando Bootstrap</h2>
            
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
            veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            <p><ul>
            <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod</li>
            <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod</li>
            <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod</li>
            <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod</li>
            <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed doeiusmod</li>
            </ul></p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
            veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
            veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
    </section>

    <section id="cadastrar">
    <div class="my-form">
            <h2>Cadastro de Aluno</h2>
            <form class="row g-3" action="index.jsp">
                <div class="col-12">
                    <label for="nome" class="form-label">Nome completo*</label>
                    <input type="text" class="form-control" id="nome" name="nome" required>
                </div>

                <div class="col-md-4">
                    <label for="cpf" class="form-label">CPF*</label>
                    <input type="number" class="form-control" id="cpf" name="cpf" required>
                </div>

                <div class="col-md-4">
                    <label for="data" class="form-label">Data de nascimento*</label>
                    <input type="date" class="form-control" id="data" name="nasc" required>
                </div>

                <div class="col-md-4">
                    <label for="sexo" class="form-label">Sexo*</label>
                    <select class="form-select" id="sexo" name="sexo" required>
                        <option></option>
                        <option>Feminino</option>
                        <option>Masculino</option>
                    </select>
                </div>

                <div class="col-md-6">
                    <label for="email" class="form-label">Email*</label>
                    <input type="email" class="form-control" id="email" name="mail" required>
                </div>

                <div class="col-md-6">
                    <label for="celular" class="form-label">Celular*</label>
                    <input type="tel" class="form-control" id="celular" name="cel" placeholder="(99) 999999999" required>
                </div><br><br><br><br>
                <hr>

                <div class="col-md-6">
                    <label for="nivel" class="form-label">Nível*</label>
                    <select class="form-select" id="nivel" name="nivel" required>
                        <option value="">Selecione</option>
                        <option value="novato">Novato</option>
                        <option value="formado">Formado</option>
                        <option value="veterano">Veterano</option>
                    </select>
                </div>

                <div class="col-md-6">
                    <label for="media" class="form-label">Média*</label>
                    <input type="number" class="form-control" id="media" name="media" required>
                </div><br><br><br><br>
                <hr>

                <p>* Campo obrigatório</p>

                <hr>

                <div class="col-12">
                    <button type="submit" class="btn btn-primary">Cadastrar</button>
                </div>
            </form>
    </div>
    </section>                

    <section id="lista">
        <div class="my-container">
        <h2>Lista de Alunos</h2><br>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Nome Completo</th>
                    <th scope="col">CPF</th>
                    <th scope="col">Nascimento</th>
                    <th scope="col">Sexo</th>
                    <th scope="col">Email</th>
                    <th scope="col">Celular</th>
                    <th scope="col">Nível</th>
                    <th scope="col">Média</th>
                </tr>
            </thead>

            <tbody>
            	<c:set var="media" value="${7}"></c:set>
	            <c:forEach items="${alunos}" var="aluno">
	            	<tr>
	                    <td><c:out value="${aluno.nome}"/></td>
	                    <td><c:out value="${aluno.cpf}"/></td>
	                    <td><fmt:formatDate value="${aluno.data}" pattern="dd-MM-yyyy"/></td>
	                    <td><c:out value="${aluno.sexo}"/></td>
	                    <td><c:out value="${aluno.email}"/></td>
	                    <td><c:out value="${aluno.celular}"/></td>
	                    <td><c:out value="${aluno.nivel}"/></td>
	                    <c:choose>
	                    	<c:when test="${aluno.media <= 7}">
	                    		<td class="p-3 mb-2 bg-danger text-white"><c:out value="${aluno.media}"/></td>
	                   		</c:when>
	                   		<c:otherwise>
	                   			<td class="p-3 mb-2 bg-success text-white"><c:out value="${aluno.media}"/></td>
	                   		</c:otherwise>
	                   	</c:choose>
	                </tr>
	            </c:forEach>
            </tbody>
        </table>
    </section>

    <footer>
        Copyright 2021 | VILT GROUP
    </footer>

    <!-- js -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/utilizando-bootstrap.js"></script>
</body>
</html>
