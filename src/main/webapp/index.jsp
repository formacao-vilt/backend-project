<%@ taglib uri="WEB-INF/mytags.tld" prefix="fiec" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<fiec:armazenamento />

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>VILT</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="./style.css" />

    <!-- <link rel="stylesheet" href="./css/style.css" /> -->
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container">
        <a class="navbar-brand" href="#">VILT</a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <c:set var="qtdeAlunos" value="${fn:length(alunos)}"></c:set>
        <div class="collapse navbar-collapse pt-1" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link text-white" href="#conteudo">Conte�do</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-white" href="#cadastro">Cadastrar</a>
            </li>
            <c:if test="${qtdeAlunos > 0}">
              <li class="nav-item">
                <a class="nav-link text-white" href="#">Lista de Alunos</a>
              </li>
            </c:if>
          </ul>
        </div>
      </div>
    </nav>

    <section id="banner">
      <div class="overlay">
        <h1>Treinamento Indaiatuba Abril 2021</h1>
      </div>
    </section>

    <section id="conteudo" class="p-5">
      <div class="container">
        <h2 class="pb-3">HTML B�sico</h2>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
          eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
          minim veniam, quis nostrud exercitation ullamco laboris nisi ut
          aliquip ex ea commodo consequat. Duis aute irure dolor in
          reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
          pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
          culpa qui officia deserunt mollit anim id est laborum.
        </p>
        <ul>
          <li>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
            eiusmod
          </li>
          <li>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
            eiusmod
          </li>
          <li>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
            eiusmod
          </li>
          <li>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
            eiusmod
          </li>
          <li>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
            eiusmod
          </li>
        </ul>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
          eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
          minim veniam, quis nostrud exercitation ullamco laboris nisi ut
          aliquip ex ea commodo consequat. Duis aute irure dolor in
          reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
          pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
          culpa qui officia deserunt mollit anim id est laborum.
        </p>
      </div>
    </section>

    <section id="cadastrar" class="p-5">
      <div class="container">
        <h2>Cadastrar</h2>
        <form class="needs-validation" action="index.jsp">
          <div class="mb-3">
            <label for="nome" class="form-label">Nome completo*</label>
            <input
              type="text"
              class="form-control"
              id="nome"
              name="nome"
              required
            />
            <div class="invalid-feedback">Nome n�o informado!</div>
          </div>
          <div class="row g-3 mb-3">
            <div class="col-sm-6">
              <label for="cpf" class="form-label">CPF*</label>
              <input
                type="text"
                class="form-control"
                id="cpf"
                name="cpf"
                required
              />
              <div class="invalid-feedback">CPF n�o informado!</div>
            </div>
            <div class="col-sm">
              <label for="nasc" class="form-label">Data de nascimento*</label>
              <input
                type="text"
                class="form-control"
                id="nasc"
                name="nasc"
                required
                placeholder="dd/mm/aaaa"
              />
              <div class="invalid-feedback">
                Data de Nascimento n�o informada!
              </div>
            </div>
            <div class="col-sm">
              <label for="sexo" class="form-label">Sexo*</label>
              <select class="form-select" id="sexo" name="sexo" required>
                <option value=""></option>
                <option value="Masculino">Masculino</option>
                <option value="Feminino">Feminino</option>
              </select>
              <div class="invalid-feedback">Sexo n�o informado!</div>
            </div>
          </div>
          <div class="row g-3 mb-3">
            <div class="col-md-6">
              <label for="mail" class="form-label">Email*</label>
              <input
                type="email"
                class="form-control"
                id="mail"
                name="mail"
                required
              />
              <div class="invalid-feedback">Email n�o informado!</div>
            </div>
            <div class="col-md-6">
              <label for="cel" class="form-label">Celular*</label>
              <input
                type="text"
                class="form-control"
                id="cel"
                name="cel"
                required
              />
              <div class="invalid-feedback">Celular n�o informado!</div>
            </div>
          </div>
          <hr />
          <div class="row g-3 mb-3">
            <div class="col-md-6">
              <label for="nivel" class="form-label">N�vel*</label>
              <select
                id="nivel"
                name="nivel"
                class="form-select"
                onclick="style.outline = null"
                required
              >
                <option value="">Selecione</option>
                <option value="novato">Novato</option>
                <option value="formado">Formado</option>
                <option value="veterano">Veterano</option>
              </select>
              <div class="invalid-feedback">N�vel n�o informado!</div>
            </div>
            <div class="col-md-6">
              <label for="media" class="form-label">M�dia*</label>
              <input
                type="text"
                class="form-control"
                id="media"
                name="media"
                required
              />
              <div class="invalid-feedback">M�dia n�o informada!</div>
            </div>
          </div>
          <hr />
          <p>* Campo obrigat�rio</p>
          <hr />
          <button class="btn btn-dark btn-lg" type="submit">Cadastrar</button>
        </form>
      </div>
    </section>

    <c:set var="media" value="${6}" />
    <c:if test="${qtdeAlunos > 0}">
      <section id="lista-alunos">
        <h2 class="p-3 text-center">Lista de alunos</h2>
        <table class="table table-dark table-sm container">
          <thead>
            <tr>
              <th scope="col">Nome completo</th>
              <th scope="col">CPF</th>
              <th scope="col">Nascimento</th>
              <th scope="col">Sexo</th>
              <th scope="col">Email</th>
              <th scope="col">Celular</th>
              <th scope="col">Nivel</th>
              <th scope="col">M�dia</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${alunos}" var="aluno">
              <tr>
                <td><c:out value="${aluno.nome}" /></td>
                <td><c:out value="${aluno.cpf}" /></td>
                <td>
                  <fmt:formatDate
                    type="date"
                    pattern="dd/MM/yyyy"
                    value="${aluno.dataDeNascimento}"
                  />
                </td>
                <td><c:out value="${aluno.sexo}" /></td>
                <td><c:out value="${aluno.email}" /></td>
                <td><c:out value="${aluno.celular}" /></td>
                <td><c:out value="${aluno.nivel}" /></td>
                <c:choose>
                  <c:when test="${aluno.media >= media}">
                    <td class="bg-success text-white">${aluno.media}</td>
                  </c:when>
                  <c:otherwise>
                    <td class="bg-danger text-white">${aluno.media}</td>
                  </c:otherwise>
                </c:choose>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </section>
    </c:if>

    <c:forEach items="${alunos}" var="aluno">
      <c:if test="${aluno.media < media}" var="resultReprovados">
        <c:set value="${resultReprovados}" var="qtdeAlunosReprovados" />
      </c:if>
      <c:if test="${aluno.media >= media}" var="resultAprovados">
        <c:set value="${resultAprovados}" var="qtdeAlunosAprovados" />
      </c:if>
    </c:forEach>

    <c:if test="${qtdeAlunosReprovados}">
      <section id="lista-reprovados">
        <h2 class="p-3 text-center">Lista de reprovados</h2>
        <table class="table table-dark table-sm container">
          <thead>
            <tr>
              <th scope="col">Nome completo</th>
              <th scope="col">CPF</th>
              <th scope="col">Nascimento</th>
              <th scope="col">Sexo</th>
              <th scope="col">Email</th>
              <th scope="col">Celular</th>
              <th scope="col">Nivel</th>
              <th scope="col">M�dia</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${alunos}" var="aluno">
              <c:if test="${aluno.media < media}">
                <tr>
                  <td><c:out value="${aluno.nome}" /></td>
                  <td><c:out value="${aluno.cpf}" /></td>
                  <td>
                    <fmt:formatDate
                      type="date"
                      pattern="dd/MM/yyyy"
                      value="${aluno.dataDeNascimento}"
                    />
                  </td>
                  <td><c:out value="${aluno.sexo}" /></td>
                  <td><c:out value="${aluno.email}" /></td>
                  <td><c:out value="${aluno.celular}" /></td>
                  <td><c:out value="${aluno.nivel}" /></td>
                  <td class="bg-danger text-white">${aluno.media}</td>
                </tr>
              </c:if>
            </c:forEach>
          </tbody>
        </table>
      </section>
    </c:if>

    <c:if test="${qtdeAlunosAprovados}">
      <section id="lista-aprovados">
        <h2 class="p-3 text-center">Lista de aprovados</h2>
        <table class="table table-dark table-sm container">
          <thead>
            <tr>
              <th scope="col">Nome completo</th>
              <th scope="col">CPF</th>
              <th scope="col">Nascimento</th>
              <th scope="col">Sexo</th>
              <th scope="col">Email</th>
              <th scope="col">Celular</th>
              <th scope="col">Nivel</th>
              <th scope="col">M�dia</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${alunos}" var="aluno">
              <c:if test="${aluno.media >= media}">
                <tr>
                  <td><c:out value="${aluno.nome}" /></td>
                  <td><c:out value="${aluno.cpf}" /></td>
                  <td>
                    <fmt:formatDate
                      type="date"
                      pattern="dd/MM/yyyy"
                      value="${aluno.dataDeNascimento}"
                    />
                  </td>
                  <td><c:out value="${aluno.sexo}" /></td>
                  <td><c:out value="${aluno.email}" /></td>
                  <td><c:out value="${aluno.celular}" /></td>
                  <td><c:out value="${aluno.nivel}" /></td>
                  <td class="bg-success text-white">${aluno.media}</td>
                </tr>
              </c:if>
            </c:forEach>
          </tbody>
        </table>
      </section>
    </c:if>

    <footer class="bg-dark text-center text-white p-4 text-uppercase">
      Copyright 2021 | VILT GROUP
    </footer>

    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"
      integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js"
      integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc"
      crossorigin="anonymous"
    ></script>
    <script>
      (function () {
        "use strict";
        var forms = document.querySelectorAll(".needs-validation");
        Array.prototype.slice.call(forms).forEach(function (form) {
          form.addEventListener(
            "submit",
            function (event) {
              if (!form.checkValidity()) {
                event.preventDefault();
                event.stopPropagation();
              }
              form.classList.add("was-validated");
            },
            false
          );
        });
      })();
    </script>
    <!-- <script type="module" src="./script.js"></script> -->
  </body>
</html>
