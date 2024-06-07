<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<title>Form Filmes </title>
</head>
<body>
    <div>
    		<a href="/catalogo/registrarFilme">Cadastrar</a> | <a href="/catalogo/listarFilmes">Listar</a>
    	</div>

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
