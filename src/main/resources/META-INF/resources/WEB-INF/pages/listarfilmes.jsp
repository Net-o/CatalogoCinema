<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>
  body {
      background-color: #121212;
      color: #ffffff;
  }

  table {
      width: 100%;
      border-collapse: collapse;
  }

  th, td {
      padding: 10px;
      text-align: left;
      color:#ffffff;
  }
   .tabela-filmes table tbody tr:hover {
       background-color: #555;
   }

  tr:hover {
      background-color: #555;
  }

  a {
      color: #ff6347;
      text-decoration: none;
  }

  a:hover {
      text-decoration: underline;
  }
</style>
<title>Listar Filmes</title>
</head>
<body>
	<h1 class="text-center text-white">Filmes</h1>

	<div class="d-flex justify-content-between align-items-center">
		<a href="/catalogo/registrarFilme" class="btn btn-warning">Cadastrar</a>
		<a href="/catalogo/listarFilmes" class="btn btn-warning">Listar</a>
	</div>
    <div class="tabela-filmes">
	<table class="table table-striped">
		<thead>
			<tr>
				<th>ID</th>
				<th>Imagem</th>
				<th>Título</th>
				<th>Gênero</th>
				<th>Faixa etária</th>
				<th>Duração</th>
				<th>Pontuação</th>
				<th>Ano</th>
				<th>Descrição</th>
				<th>Opções</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${filmes}" var="film">
				<tr>
					<td>${film.id}</td>
					<td><img src="${film.urlImagem}" alt="Poster do Filme" style="max-height: 50px;"></td>
					<td>${film.titulo}</td>
					<td>${film.genero}</td>
					<td>${film.faixaEtaria}</td>
					<td>${film.duracao}</td>
					<td>${film.pontuacao}</td>
					<td>${film.ano}</td>
					<td>${film.descricao}</td>
					<td>
						<a href="/catalogo/removerFilme/${film.id}" class="btn btn-danger btn-sm">Deletar</a>
						<a href="/catalogo/alterarFilme/${film.id}" class="btn btn-info btn-sm">Alterar</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
</body>
</html>
