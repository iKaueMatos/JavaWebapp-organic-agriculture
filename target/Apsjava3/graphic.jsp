
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dao.Dados" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>

<html>
<head>
    <link rel="shortcut icon" href="img/headerIcons/favicon.png" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="style/table.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <title>AGO - Gráfico</title>
</head>
<body>

<div class="button">
    <a href="form.jsp" class="toBack">Voltar para formulário</a>
</div>

<%
    // Configuração da conexão com o banco de dados
    String url = "jdbc:mysql://webappjava2bank.mysql.database.azure.com:3306/apsjava";
    String user = "IKaue";
    String password = "Bontlindo12/";

    // Variáveis para armazenar os dados
    List<Dados> dadosList = new ArrayList<>(); //List interface

    try {
        // Carregando o driver JDBC do MySQL
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Criando a conexão com o banco de dados
        Connection connection = DriverManager.getConnection(url, user, password);

        // Criando o statement para executar a consulta
        Statement statement = connection.createStatement();

        // Consulta para obter os dados
        String query = "SELECT uf, COUNT(*) AS total FROM trabalhadores GROUP BY uf";

        // Executando a consulta
        ResultSet resultSet = statement.executeQuery(query);

        // Iterando sobre os resultados da consulta
        while (resultSet.next()) {
            String uf = resultSet.getString("uf");
            int total = resultSet.getInt("total");
            Dados dados = new Dados(uf, total);
            dadosList.add(dados);
        }

        // Fechando os recursos
        resultSet.close();
        statement.close();
        connection.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

<canvas id="grafico1" style="width: 100%; height: 400px;"></canvas>

<script>
    //Percorrendo ArrayList de dados capturados no resultado da query
    const dadosList = [
        <% for (Dados dados : dadosList) { %>
        {
            uf: '<%= dados.getUf() %>',
            total: <%= dados.getTotal() %>
        },
        <% } %>
    ];

    const labels = dadosList.map(dados => dados.uf);
    const data = dadosList.map(dados => dados.total);

    const ctx = document.getElementById('grafico1').getContext('2d');
    new Chart(ctx, {
        type: 'bar',
        data: {
            labels: labels,
            datasets: [{
                label: 'Total de Trabalhadores por Estado',
                data: data,
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
</script>




<!--Script-->
    <script src="js/main.js"></script>
</body>
</html>
