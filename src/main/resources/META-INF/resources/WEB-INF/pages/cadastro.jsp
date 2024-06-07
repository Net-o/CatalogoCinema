<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<<<<<<< HEAD

<!DOCTYPE html>
=======
>>>>>>> 553f2cc5024751cbd5124e30a9c3a30726967f80
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">

<style>
  body {
      background-color: #121212;
      color: #ffffff;
  }

 .techcine-name {
      color: #ff6347;
      font-size: 24px;
      text-shadow: 2px 2px 4px rgba(255, 99, 71, 0.5);
  }

 .navbar {
      background-color: #333;
  }

 .navbar-brand:hover,
 .navbar-nav.nav-link:hover {
      color: #ff6347;
  }

 .btn-primary {
      background-color: #ff6347;
      border-color: #ff6347;
  }

 .btn-primary:hover {
      background-color: #e55300;
      border-color: #e55300;
  }
</style>

<title>Form Filmes </title>
</head>
<body>
    <header>
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-dark" data-bs-theme="dark">
                <a class="navbar-brand techcine-name" href="#">TechCine</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="/catalogo/registrarFilme">Cadastrar</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/catalogo/listarFilmes">Listar</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </header>
    <div class="row justify-content-center mt-3">
        <div class="col-md-4">
            <form:form method="post" modelAttribute="filme">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <fieldset>
                    <legend>Estreia </legend>

                    <div class="mb-3">
                        <label for="urlImagem" class="form-label">URL da Imagem: </label>
                        <input class="form-control" type="text" id="urlImagem" name="urlImagem" placeholder="URL da Imagem"/>
                        <span style="color:red"><form:errors path="urlImagem"/></span>
                    </div>

                    <div class="mb-3">
                        <label for="titulo" class="form-label">Título: </label>
                        <input class="form-control" type="text" id="titulo" name="titulo" placeholder="Título"/>
                        <span style="color:red"><form:errors path="titulo"/></span>
                    </div>
                    <div class="mb-3">
                        <label for="genero" class="form-label">Gênero: </label>
                        <input class="form-control" type="text" id="genero" name="genero" placeholder="Gênero"/>
                        <span style="color:red"><form:errors path="genero"/></span>
                    </div>
                    <div class="mb-3">
                        <label for="faixaEtaria" class="form-label">Faixa Etária: </label>
                        <input class="form-control" type="text" id="faixaEtaria" name="faixaEtaria" placeholder="Faixa Etária"/>
                        <span style="color:red"><form:errors path="faixaEtaria"/></span>
                    </div>
                    <div class="mb-3">
                        <label for="duracao" class="form-label">Duração: </label>
                        <input class="form-control" type="number" id="duracao" name="duracao" placeholder="Duração em minutos"/>
                        <span style="color:red"><form:errors path="duracao"/></span>
                    </div>
                    <div class="mb-3">
                        <label for="pontuacao" class="form-label">Pontuação: </label>
                        <input class="form-control" type="number" step="0.01" id="pontuacao" name="pontuacao" placeholder="Pontuação"/>
                        <span style="color:red"> <form:errors path="pontuacao"/> </span>
                    </div>
                    <div class="mb-3">
                        <label for="descricao" class="form-label">Descrição: </label>
                        <textarea class="form-control" rows="3" cols="5" name="descricao" id="descricao"></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="ano" class="form-label">Ano: </label>
                        <input class="form-control" type="number" id="ano" name="ano" placeholder="Ano"/>
                        <span style="color:red"><form:errors path="ano"/></span>
                    </div>
                     <button class="btn btn-primary">Cadastrar</button>
                </fieldset>
            </form:form>
        </div>
    </div>

   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
