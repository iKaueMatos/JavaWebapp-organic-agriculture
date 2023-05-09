<%--
  Created by IntelliJ IDEA.
  User: kaue
  Date: 06/05/2023
  Time: 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Trabalhador" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./dist/output.css">
  <link rel="stylesheet" href="style.css">
  <link rel="shortcut icon" href="img/headerIcons/favicon.png" type="image/x-icon">
  <link rel="stylesheet" href="./style/table.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
          crossorigin="anonymous">
  <title>Table - Agricultura orgânica</title>
</head>
<body>


<a class="toBack" href="./index.jsp">Voltar para pagina principal</a>
<a class="toBack1" href="./index.jsp">Ver grafico</a>
<a class="toBack2" href="./index.jsp">Gerar relatório</a>

<div class="container mt-6">
  <form action="BuscarTrabalhador" method="post" accept-charset="UTF-8" >
    <input type="text" placeholder="Digite seu nome" name="nome" id="nome"  class="h-10 w-3000 rounded-md border border-slate-300 text-sm pl-2 bg-transparent outline-green-600 shadow-md">
    <button type="submit" name="button" id="btn" class="bg-green-500 w-20 h-10 cursor-pointer text-white rounded-md hover:bg-green-600 hover:outline outline-2 outline-green-600 outline-offset-2 text-sm">Buscar</button>
  </form>
  <h1>Trabalhadores</h1>
  <div class="row">
    <table class="table table-responsive outline-green-600 shadow-md">
      <thead class="table-dark">
      <tr class="table-tr">
        <th scope="col">Id</th>
        <th scope="col">Nome</th>
        <th scope="col">Sobrenome</th>
        <th scope="col">Idade</th>
        <th scope="col">Telefone</th>
        <th scope="col">CEP</th>
        <th scope="col">Localidade</th>
        <th scope="col">UF</th>
        <th scope="col">Bairro</th>
        <th scope="col">Logradouro</th>
        <th scope="col p-2">Editar ou Delete</th>
      </tr>
      </thead>
      <tbody>
      <tr class="table-active">
        <%
          String mensagem = (String) request.getAttribute("mensagem");
          if(mensagem != null){
            out.print(mensagem);
          }
        %>
        <%
          if(request.getAttribute("trabalhador") != null){
            List<?> trabalhador = (List<?>) request.getAttribute("trabalhador");
            for(int contador = 0; contador <= (trabalhador.size() - 1); contador++){
              Trabalhador pessoa = (Trabalhador) trabalhador.get(contador);
        %>
        <form action="ModificarTrabalhadores" method="post" accept-charset="UTF-8" >
          <input type="hidden" name="id" value="<%out.print(pessoa.getId());%>">
          <td><%out.print(pessoa.getId()); %></td>
          <td><%out.print(pessoa.getNome()); %></td>
          <td><%out.print(pessoa.getSobrenome()); %></td>
          <td><%out.print(pessoa.getIdade()); %></td>
          <td><%out.print(pessoa.getTelefone()); %></td>
          <td><%out.print(pessoa.getCep()); %></td>
          <td><%out.print(pessoa.getLocalidade()); %></td>
          <td><%out.print(pessoa.getUf()); %></td>
          <td><%out.print(pessoa.getBairro()); %></td>
          <td><%out.print(pessoa.getLogradouro()); %></td>
          <td>
            <button type="submit" name="editar" id="btn" class="bg-green-500 w-20 h-10 cursor-pointer text-white rounded-md hover:bg-green-600 hover:outline outline-2 outline-green-600 outline-offset-2 text-sm">Editar</button>
            <button type="submit" name="apagar" id="btn" class="bg-green-500 w-20 h-10 cursor-pointer text-white rounded-md hover:bg-green-600 hover:outline outline-2 outline-green-600 outline-offset-2 text-sm">Excluir</button>
          </td>
        </form>

      </tr>
      </tbody>
      <% }} %>
    </table>
  </div>
</div>
</div>

<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
</body>
</html>
