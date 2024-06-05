<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<style>
  body {
      background-color: #121212;
      color: #ffffff;
  }

 .navbar {
      background-color: #333;
  }

 .navbar-brand i {
      color: #ff6347;
  }

 .navbar-nav.nav-link {
      color: #ffffff;
  }

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
            <nav class="navbar navbar-expand-lg navbar-dark">
                <a class="navbar-brand" href="#"><i class="fas fa-camera-movie fa-2x mr-2"></i>Meu Site</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="/catalogo/registrarFilme"><i class="fas fa-camera-retro mr-2"></i>Cadastrar</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/catalogo/listarFilmes"><i class="fas fa-list mr-2"></i>Listar</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </header>
    
    <div class="row justify-content-center mt-3">
        <div class="col-md-4">
            <form:form method="post" modelAttribute="filmeAlterar">
                <fieldset>
                    <legend>Estreia </legend>
                    <div class="mb-3">
                        <label for="urlImagem" class="form-label">URL da Imagem: </label>
                        <input class="form-control" type="text" id="urlImagem" name="urlImagem" placeholder="URL da Imagem" value="${filmeAlterar.urlImagem}">
                        <span style="color:red"><form:errors path="urlImagem"/></span>
                    </div>
                    <div class="mb-3">
                        <label for="titulo" class="form-label">Título: </label>
                        <input class="form-control" type="text" id="titulo" name="titulo" placeholder="Título" value="${filmeAlterar.titulo}">
                        <span style="color:red"><form:errors path="titulo"/></span>
                    </div>
                    <div class="mb-3">
                        <label for="genero" class="form-label">Gênero: </label>
                        <input class="form-control" type="text" id="genero" name="genero" placeholder="Gênero" value="${filmeAlterar.genero}">
                        <span style="color:red"><form:errors path="genero"/></span>
                    </div>
                    <div class="mb-3">
                        <label for="faixaEtaria" class="form-label">Faixa Etária: </label>
                        <input class="form-control" type="text" id="faixaEtaria" name="faixaEtaria" placeholder="Faixa Etária" value="${filmeAlterar.faixaEtaria}">
                        <span style="color:red"><form:errors path="faixaEtaria"/></span>
                    </div>
                    <div class="mb-3">
                        <label for="duracao" class="form-label">Duração: </label>
                        <input class="form-control" type="number" id="duracao" name="duracao" placeholder="Duração em minutos" value="${filmeAlterar.duracao}">
                        <span style="color:red"><form:errors path="duracao"/></span>
                    </div>
                    <div class="mb-3">
                        <label for="pontuacao" class="form-label">Pontuação: </label>
                        <input class="form-control" type="number" step="0.01" id="pontuacao" name="pontuacao" placeholder="Pontuação" value="${filmeAlterar.pontuacao}">
                        <span style="color:red"><form:errors path="pontuacao"/></span>
                    </div>
                    <div class="mb-3">
                        <label for="descricao" class="form-label">Descrição: </label>
                        <textarea class="form-control" rows="3" cols="5" name="descricao" id="descricao">${filmeAlterar.descricao}</textarea>
                    </div>
                    <div class="mb-3">
                        <label for="ano" class="form-label">Ano: </label>
                        <input class="form-control" type="number" id="ano" name="ano" placeholder="Ano" value="${filmeAlterar.ano}">
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
