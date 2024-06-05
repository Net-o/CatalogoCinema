<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listar Filmes</title>
</head>
<body>
	<h1>Filmes</h1>

	<div>
		<a href="/catalogo/registrarFilme">Cadastrar</a> | <a href="/catalogo/listarFilmes">Listar</a>
	</div>

	<table border="1" width="60%">
		<thead>
			<tr>
				<th>Id</th>
				<th>Imagem</th>
				<th>Título</th>
				<th>Gênero</th>
				<th>Faixa etária</th>
				<th>Duração</th>
				<th>Pontuação</th>
				<th>Descrição</th>
				<th>Opções</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${filmes}" var="film">
				<tr>
					<td>${film.id}</td>
					<td><img src="${film.urlImagem}"/></td>
					<td>${film.titulo}</td>
					<td>${film.genero}</td>
					<td>${film.faixaEtaria}</td>
					<td>${film.duracao}</td>
					<td>${film.pontuacao}</td>
					<td>${film.descricao}</td>
					<td><a href="/catalogo/removerFilme/${film.id}">Deletar</a>
					<a href="/catalogo/alterarFilme/${film.id}">Alterar<a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>