
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Formulário para cadastro - Agricutura orgânica</title>
    <!-- style -->
    <link rel="stylesheet" href="./dist/output.css">
    <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" href="img/headerIcons/favicon.png" type="image/x-icon">
    <script src="https://cdn.tailwindcss.com"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>

<body class="bg-white  min-h-screen">

<div class="container max-w-[1440px] mx-auto">
    <!-- navbar -->
    <div class="navbar bg-green-500  border-spacing-1 rounded-lg fixed w-full top-0 max-w-[1440px]">
        <div class="container flex justify-between items-center py-1 w-full max-w-[1440px] mx-auto px-[5%]">
            <div class="left">
                <h1 class="font-bold text-lg text-white"><a href="./index.jsp">Agricultura Orgânica</a></h1>

            </div>
            <!-- in laptops -->
            <div class="right md:flex gap-8 items-center hidden ">
                <!-- menu -->
                <div class="item text-sm font-medium leading-3 cursor-pointer hover:text-green-600 duration-500 text-white">
                    <a href="./index.jsp">Inicio</a></div>
                <div class="item text-sm font-medium leading-3 cursor-pointer hover:text-green-600 duration-500 text-white">
                    <a href="./table.jsp">Tabela</a></div>
                <div class="item text-sm font-medium leading-3 cursor-pointer hover:text-green-600 duration-500 text-white">
                    <a href="./graphic.jsp">Gráfico</a></div>
                <div class="item mx-auto text-center py-6 text-sm font-medium leading-3 cursor-pointer hover:text-green-600 duration-500 text-white">
                    Relatório</div>
            </div>
            <!-- in mobile phones -->
            <div id="mobile-bar" class="block md:hidden z-50 w-8 h-8">
                <div class="line-full rounded-full my-2 h-1 bg-black"></div>
                <div class="line-full rounded-full my-2 h-1 bg-black"></div>
                <div class="line w-full rounded-full my-2 h-1 bg-black"></div>
            </div>
            <div id="menu" class="fixed duration-700 w-full h-full top-0 bottom-0 right-[-100%] md w-full:md:w-1/2 bg-slate-800">
                <div class="item mx-auto text-center py-6 text-sm font-medium leading-3 cursor-pointer hover:text-green-600 duration-500 text-white">
                    <a href="./index.jsp"> Inicio</a> </div>
                <div class="item mx-auto text-center py-6 text-sm font-medium leading-3 cursor-pointer hover:text-green-600 duration-500 text-[#fff]">
                    <a href="./table.jsp">Tabela</a></div>
            </div>
        </div>
    </div>
</div>

<div class="flex justify-center items-center h-screen bg-white">
    <div id="form" class="block bg-slate-50 p-6 rounded-xl shodow-md  w-90">
        <!--Formulario metodo de envio POST-->
        <form action="index" method="post" accept-charset="UTF-8" >
            <h2 class="text-green-500 text-3xl font-semibold my-4">Registre-se</h2>
            <!-- full name -->
            <div class="flex flex-row">
                <!--Nome -->
                <div id="firstName" class="w-1/2 mr-1">
                    <label for="name" class="text-sm">Nome</label><br>
                    <input type="text" name="nome" id="nome" class="h-8 w-full rounded-md border border-slate-300 text-sm pl-2 bg-transparent outline-green-600 shadow-sm" >
                </div>
                <!-- Sobrenome-->
                <div id="lastName" class="w-1/2 mr-1">
                    <label for="sobrenome" class="text-sm">Sobrenome</label><br>
                    <input type="sobrenome" name="sobrenome" id="sobrenome" class="h-8 w-full rounded-md border border-slate-300 text-sm pl-2 bg-transparent outline-grenn-600 shadow-sm">
                </div>
            </div>

            <!--Telefone-->
            <label for="telefone" class="text-sm">Telefone</label><br>
            <input type="text" placeholder="11 9999-9999" name="telefone" id="telefone" class="h-8 w-full rounded-md border border-slate-300 text-sm pl-2 bg-transparent outline-green-600 shadow-sm">

            <!--idade-->
            <label for="idade" class="text-sm">Idade</label><br>
            <input type="text" name="idade" id="idade" class="h-8 w-full rounded-md border border-slate-300 text-sm pl-2 bg-transparent outline-green-600 shadow-sm">

            <!-- Informações CEP -->
            <label for="cep" class="text-sm">CEP</label><br>
            <input type="text" placeholder="00000-07" name="cep" id="cep" class="h-8 w-full rounded-md border border-slate-300 text-sm pl-2 bg-transparent outline-green-600 shadow-sm">

            <!--Bairro-->
            <label for="cidade" class="text-sm">Localidade</label><br>
            <input type="text" name="localidade" id="cidade" readonly class="h-8 w-full rounded-md border border-slate-300 text-sm pl-2 bg-transparent outline-green-600 shadow-sm">

            <label for="logradouro" class="text-sm">logradouro</label><br>
            <input type="text" name="logradouro" id="logradouro" readonly class="h-8 w-full rounded-md border border-slate-300 text-sm pl-2 bg-transparent outline-green-600 shadow-sm">
            <!--Estado-->
            <label for="uf" class="text-sm">UF</label><br>
            <input type="text" name="uf" id="uf" readonly class="h-8 w-full rounded-md border border-slate-300 text-sm pl-2 bg-transparent outline-green-600 shadow-sm">

            <label for="bairro" class="text-sm">Bairro</label><br>
            <input type="text" name="bairro" id="bairro" readonly class="h-8 w-full rounded-md border border-slate-300 text-sm pl-2 bg-transparent outline-green-600 shadow-sm">
            <!--button -->
            <button type="submit" name="button" id="btn" class="bg-green-500 w-full h-10 cursor-pointer text-white rounded-md hover:bg-green-600 hover:outline outline-2 outline-green-600 outline-offset-2 text-sm">Enviar</button>
            <div>
                <%
                    String mensagem = (String) request.getAttribute("mensagem");
                    if (mensagem != null)
                        out.print(mensagem);
                %>
            </div>
        </form>
        <br>
        <br>
    </div>
</div>
<!--The-end-->
<!-- footer -->

<footer>
    <div class="line w-full h-[1px] absolute left-0 opacity-20 md-[6px] bg-[#000]"></div>
    <div class="bottom flex justify-center gap-5 md:justify-between flex-wrap px-[5%] py-[26px]">
        <div class="left">
            2023 Agricultura organica - Todos os direitos reservados.
        </div>
</footer>
<!--The end footer-->

<!--The end-->

<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script src="./js/jquery.mask.js"></script>
<script src="./js/Api.js"></script>

<script src="./js/main.js"></script>
</body>

</html>