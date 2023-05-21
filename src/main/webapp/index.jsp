                                                                                                                                                                                        
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html lang="pt-br">

    <head>  
        <title>AGO - Agricutura orgânica</title>
        <!-- style -->
        <link rel="stylesheet" href="./dist/output.css">
        <link rel="stylesheet" href="style.css">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" href="img/headerIcons/favicon.png" type="image/x-icon">
</head>

<body class="bg-white  min-h-screen">
<!-- body -->
<div class="container max-w-[1440px] mx-auto">
    <!-- navbar -->                                                                                                                                                                                                                   
    <div class="navbar bg-white  border-spacing-1 fixed w-full top-0 max-w-[1440px]">
        <div class="container flex justify-between items-center py-3 w-full max-w-[1440px] mx-auto px-[5%]">
            <div class="left">
                <h1 class="font-bold text-lg"><a href="./index.jsp">Agricultura Orgânica</a></h1>
            </div>
            <!-- in laptops -->
            <div class="right md:flex gap-8 items-center hidden">
                <!-- menu -->
                <div class="item text-sm font-medium leading-3 cursor-pointer hover:text-green-600 duration-500 text-black">
                    <a href="#inicio">Inicio</a></div>
                <div class="item text-sm font-medium leading-3 cursor-pointer hover:text-green-600 duration-500 text-text-black">
                    <a href="#Desenvolvedores">Desenvolvedores</a></div>
                <div class="item text-sm font-medium leading-3 cursor-pointer hover:text-green-600 duration-500 text-text-black">
                    <a href="#Contato">Contato</a></div>
                <!-- menu-btn -->
                <div class="item btn py-3 px-6 text-sm font-medium leading-3 rounded-md text-black cursor-pointer  duration-600 hover:text-green-600"> <a href="./form.jsp">Cadastre-se</a>
                </div>
            </div>
            <div id="mobile-bar" class="block md:hidden z-50 w-8 h-8">
                <div class="line-full rounded-full my-2 h-1 bg-black"></div>
                <div class="line-full rounded-full my-2 h-1 bg-black"></div>
                <div class="line w-full rounded-full my-2 h-1 bg-black"></div>
            </div>
            <div id="menu" class="fixed duration-700 w-full h-full top-0 bottom-0 right-[-100%] md w-full:md:w-1/2 bg-slate-800">
                <div class="item mx-auto text-center py-6 text-sm font-medium leading-3 cursor-pointer hover:text-green-600 duration-500 text-white">
                    Inicio</div>
                <div class="item mx-auto text-center py-6 text-sm font-medium leading-3 cursor-pointer hover:text-green-600 duration-500 text-[#fff]">
                  <a href="#Desenvolvedores">Desenvolvedores</a></div>
                <div class="item mx-auto text-center py-6 text-sm font-medium leading-3 cursor-pointer hover:text-green-600 duration-500 text-[#fff]">
                    <a href="#Contato">Contato</a></div>
                <!-- menu-btn -->
                <div class="item bg-green-600 mx-auto text-center w-40 btn py-3 px-6 text-sm font-medium leading-3 rounded-md text-black cursor-pointer  duration-500 hover:text-green-600">
                    <a href="./form.jsp">Cadastre-se</a></div>
            </div>
        </div>
    </div>
    <!-- Home section -->
    <div class="container px-[5%] my-40 grid lg:grid-cols-2 grid-cols-1 justify-between items-center" id="inicio">
        <div class="left col-span-1 text-black">
            <h1 class="h1 mb-7">O que é a agricultura orgânica?</h1>
            <p class=" mb-8 indent-8 text-justify">A agricultura orgânica é um sistema de produção agrícola que se baseia em práticas 
                    sustentáveis e que valoriza a conservação do solo, da água, da biodiversidade e da saúde dos seres humanos e dos animais. O objetivo da agricultura orgânica é produzir alimentos saudáveis e nutritivos, sem o uso de agrotóxicos, fertilizantes sintéticos e organismos geneticamente modificados. Na agricultura orgânica, a fertilidade do solo é mantida por meio de técnicas como a adição de compostagem, rotação de culturas e uso de adubos naturais, como esterco e restos de plantas. O controle de pragas e doenças é realizado de forma integrada, por meio do uso de métodos preventivos e de controle biológico. A agricultura orgânica é regulamentada por normas e certificações específicas, que visam garantir que os produtos sejam produzidos de acordo com os princípios da sustentabilidade e da saúde. Os produtos orgânicos são identificados por um selo de certificação, que garante que eles foram produzidos seguindo essas normas.</p>
            <div class="btn__group flex gap-5">
                <button class="join px-10 py-5 rounded-md text-base font-medium">
                    <a href="https://youtu.be/ze8b2d8HcI4">Saiba mais</a>
                </button>
                <div class="watch flex items-center gap-2 cursor-pointer text-base font-medium">
                    <a href="https://youtu.be/ze8b2d8HcI4">Vídeo sobre agricultura orgânica
</a>
                </div>
            </div>
        </div>
        <div class="right col-span-1">
            <img src="./img/Agricultura.png" alt="Agricultura orgânica">
        </div>
    </div>
    <!-- Um pouco sobre a agricultura orgânica | Cards -->
    <div class="services">
        <h1 class="text-4xl text-black font-bold text-center md:text-[42px]">
            Saiba mais sobre agricultura orgânica
        </h1>
        <p class="text-black text-center mt-[30px] mb-[40px] w-3/4 mx-auto">Aqui você encontrará informações complementares e curiosidades sobre a agricultura orgânica</p>
        <div class="cards flex justify-center gap-x-7 gap-y-10 flex-wrap text-black text-center">
            <div class="card w-[370px] px-6 py-9">
                <img class="pb-5 mx-auto" src="./img/AgriculturaImg/agricultores.webp" alt="Pontos positivos da Agricultura orgÃ¢nica">
                <h2 class="text-2xl font-medium pb-4">Pontos positivos da Agricultura orgânica</h2>
                <p class="text-base text-justify pb-6 indent-8">Um dos maiores pontos positivos da agricultura orgânica é a produção de alimentos mais saudáveis: Ao evitar o uso de agrotóxicos e fertilizantes químicos, os alimentos orgânicos se tornam mais saudáveis e seguros para o consumo humano.</p>
                <button><a class="no-underline text-black hover:underline hover:text-green-500 duration-500"
                           href="#">Veja mais</a></button>
            </div>
            <div class="card w-[370px] px-6 py-9">
                <img class="pb-5 mx-auto" src="./img/AgriculturaImg/ProdutosOganicos2.png" alt="Agricultura organica personagem">
                <h2 class="text-xl font-medium pb-6">A agricultura orgânica se beficia do uso de tecnologias</h2>
                <p class="text-base text-justify pb-6 indent-8">A agricultura orgânica se beneficia do uso de tecnologias, como monitoramento de cultivos, irrigação eficiente, manejo integrado de pragas, melhoria da fertilidade do solo, rastreabilidade e certificação, e comercialização e marketing. Essas tecnologias auxiliam na eficiência, produtividade e sustentabilidade da agricultura orgânica.</p>
                <button><a class="no-underline text-black hover:underline hover:text-green-500 duration-500"
                           href="#">Veja mais</a></button>
            </div>
            <div class="card w-[370px] px-6 py-10">
                <img class="pb-5 mx-auto" src="./img/AgriculturaImg/ProdutosOrganicos.png" alt="Alimentos organicos e seus beneficios">
                <h2 class="text-2xl font-medium pb-6">Alimentos orgânicos e seus beneficios</h2>
                <p class="text-base text-justify pb-6 indent-8">Maior teor de nutrientes: Os alimentos orgânicos são cultivados em solos mais saudáveis ​​e sem o uso de pesticidas, herbicidas ou fertilizantes sintéticos, o que pode resultar em um maior teor de nutrientes, como vitaminas, minerais e antioxidantes.</p>
                <button><a class="no-underline text-black hover:underline hover:text-green-500 duration-500"
                           href="#">Veja mais</a></button>
            </div>
            <div class="card w-[370px] px-7 py-10">
                <img class="pb-5 mx-auto" src="./img/AgriculturaImg/ProdutosOrganicosverde.png" alt="Um alimento convecional e prejudicial para o ser humano?">
                <h2 class="text-2xl font-medium pb-4">Alimentos convencionais são prejudiciais ?</h2>
                <p class="text-base text-justify  pb-6 indent-8">Não podemos afirmar que todos os produtos convencionais são prejudiciais para os seres humanos mais a grande maioria dos produtos são processados e contém aditivos quimicos,como conservantes, corante e flavorizantes artificiais.
                </p>
                <button><a class="no-underline text-black hover:underline hover:text-green-500 duration-500"
                           href="#">Veja mais</a></button>
            </div>
            <div class="card w-[370px] px-6 py-9">
                <img class="pb-5 mx-auto" src="./img/AgriculturaImg/AgricultorFazenda.webp" alt="Qual e melhor para voce alimento organico ou alimento convecional">
                <h2 class="text-2xl font-medium pb-4">Alimentos orgânicos?</h2>
                <p class="text-base text-justify pb-6 indent-8">Os alimentos orgânicos são cultivados sem o uso de produtos químicos sintéticos, como pesticidas, herbicidas e fertilizantes, e são geralmente produzidos com práticas mais sustentáveis e respeitosas ao meio ambiente. Eles também podem conter uma quantidade maior de nutrientes e menor quantidade de aditivos químicos.
                </p>
                <button><a class="no-underline text-black hover:underline hover:text-green-500 duration-500"
                           href="#">Veja mais</a></button>
            </div>
            <div class="card w-[370px] px-6 py-9">
                <img class="pb-5 mx-auto" src="./img/AgriculturaImg/fazendeiros.webp" alt="Lei agricultura orgÃ¢nica">
                <h2 class="text-2xl font-medium pb-4">LEI 10.831.2003 Agricultura orgânica</h2>
                <p class="text-base text-justify  pb-6 indent-8">Ela define a agricultura orgânica como um sistema de produção que busca preservar a saúde do solo, das plantas, dos animais e dos seres humanos, promovendo a biodiversidade e o equilíbrio ecológico. entretando um dos pontos que a lei 10.831.2003 pressupõe é a proibição do uso de agrotóxicos, adubos químicos e organismos geneticamente modificados (OGMs) na produção orgânica.
                </p>
                <button><a class="no-underline text-black hover:underline hover:text-green-500 duration-500"
                           href="#">Veja mais</a></button>
            </div>
        </div>
    </div>
    <!-- Descrição Parte 1 -->
    <div class="description1 grid grid-cols-1 my-40 items-center lg:grid-cols-2 justify-evenly gap-10 px-[5%]">
        <div class="left col-span-1 justify-self-center">
            <img src="./img/AgriculturaOrganica22.png" alt="Agricultura organica personagem">
        </div>
        <div class="right col-span-1 text-black">
            <h2 class="font-bold text-4xl  leading-[52px] lg:text-[42px]">O impacto da agricultura orgânica no Brasil</h2>
            <p class="font-normal my-8 text-base text-justify indent-8">A agricultura orgânica no Brasil tem um impacto positivo em diversos aspectos, tanto ambientais quanto sociais e econômicos. Algumas das principais vantagens da agricultura orgânica no Brasil incluem:
                <br>
                <b>1.Redução do uso de agrotóxicos:</b>  A agricultura orgânica não utiliza agrotóxicos sintéticos, o que reduz o impacto negativo desses produtos na saúde das pessoas e no meio ambiente.<br>
                <b>2.Preservação da biodiversidade:</b> A agricultura orgânica valoriza a conservação da biodiversidade, por meio da manutenção de áreas de preservação permanente, da rotação de culturas e do uso de adubos orgânicos. <br>
                <b>3.Produção de alimentos mais saudáveis:</b>  Os alimentos orgânicos são produzidos sem o uso de agrotóxicos, o que os torna mais saudáveis e nutritivos.<br>
                <b>4.Estímulo à agricultura familiar:</b>  A agricultura orgânica é uma alternativa viável para a agricultura familiar, pois permite a produção de alimentos de qualidade sem a necessidade de grandes investimentos em insumos externos.<br>
                <b>5.Fortalecimento da economia local:</b> A produção de alimentos orgânicos geralmente é voltada para o mercado local, o que fortalece a economia da região e incentiva o comércio justo.<br>No entanto, apesar dos benefícios da agricultura orgânica, ainda há desafios a serem enfrentados no Brasil, como a falta de incentivos governamentais e a dificuldade de acesso a crédito para os produtores orgânicos. Além disso, é importante garantir que os produtos orgânicos sejam produzidos de acordo com as normas e certificações específicas, para que possam ser
                comercializados de forma confiável e segura. </p>
            <button class="btn py-2 px-[14px] rounded">Saiba mais</button>                                             
        </div>
    </div>
    <!-- Descrição Parte 2 -->
    <div class="description2 grid grid-cols-1 my-40 items-center lg:grid-cols-2 justify-evenly gap-10 px-[5%]">
        <div class="left col-span-1 text-black">
            <h2 class="font-bold text-4xl  leading-[52px] lg:text-[42px]">Agricultura orgânica VS convencional</h2>
            <p class="font-normal my-8 text-base text-justify indent-8">A agricultura orgânica e a convencional são dois sistemas de produção agrícola com diferenças significativas em termos de práticas e impactos.

                Na agricultura convencional, os produtores utilizam agrotóxicos, fertilizantes sintéticos e sementes geneticamente modificadas para aumentar a produtividade das culturas. Além disso, as monoculturas são comuns nesse sistema, o que pode levar à perda de biodiversidade e à degradação do solo. A agricultura convencional também pode ter impactos negativos na saúde das pessoas e dos animais, devido ao uso excessivo de agrotóxicos.

                Por outro lado, a agricultura orgânica utiliza práticas sustentáveis e métodos naturais para aumentar a produtividade das culturas. Os produtores orgânicos não usam agrotóxicos sintéticos ou fertilizantes químicos, e geralmente usam técnicas de compostagem, rotação de culturas e uso de adubos orgânicos para manter a fertilidade do solo. Além disso, a agricultura orgânica incentiva a biodiversidade e a preservação do meio ambiente.

                Os alimentos orgânicos são produzidos sem o uso de agrotóxicos, o que os torna mais saudáveis e nutritivos. Além disso, a agricultura orgânica pode contribuir para a criação de empregos locais e para o fortalecimento da economia regional.

                Em resumo, a agricultura orgânica e a convencional apresentam diferenças significativas em termos de práticas e impactos. A escolha entre esses sistemas depende das prioridades e valores de cada produtor e consumidor.</p>
            <button class="btn py-2 px-[14px] rounded">Saiba mais</button>
        </div>
        <div class="right col-span-1 justify-self-center">
            <img src="./img/Agricultor-.png" alt="">
        </div>                                                                                                                                  
    </div>

    <!-- Desenvolvedores da aplicação -->
    <div class="team text-center my-40">
        <h1 class="text-4xl text-black font-bold leading-[55px] lg:text-[42px]" id="Desenvolvedores">Desenvolvedores</h1>
        <p class="my-8 text-black w-2/3 lg:w-1/3 mx-auto">Conheça os desenvolvedores dessa aplicação.</p>
        <div class="cards flex justify-center gap-10 flex-wrap">
            <div class="card w-[270px] py-8 px-14 text-black text-center">
                <img class="mx-auto -mb-[15px] rounded h-40" src="./img/Desenvolvedores/ellen1.jpeg" alt="Desenvolvedora Ellen">
                <h2 class="text-[25px] font-medium leading-9 mb-[7px] mt-6">Ellen Fontes</h2>
                <p class="font-normal leading-5 uppercase">Cursando Ciência da computação</p>
                <div class="icons flex mt-[10px] justify-center gap-2">
                    <a href="https://www.linkedin.com/in/ellen-fontes-617b21205/"><img src="./img/in.png" alt="" class="icon cursor-pointer"></a>
                </div>
            </div>
            <div class="card w-[270px] py-8 px-14 text-black text-center">
                <img class="mx-auto -mb-[15px] rounded h-40 w-50" src="./img/Desenvolvedores/igor.jpeg" alt="Desenvolvedor Igor">
                <h2 class="text-[25px] font-medium leading-9 mb-[7px] mt-6">Igor Augusto</h2>
                <p class="font-normal leading-5 uppercase">Cursando Ciência da Computação</p>
                <div class="icons flex mt-[10px] justify-center gap-2">
                    <a href="https://www.linkedin.com/in/igorbrz/"><img src="./img/in.png" alt="" class="icon cursor-pointer"></a>
                </div>
            </div>
            <div class="card w-[270px] py-8 px-14 text-black text-center">
                <img class="mx-auto -mb-[15px] rounded h-40" src="./img/Desenvolvedores/kaue.jpg" alt="Desenvolvedor Kaue de matos">
                <h2 class="text-[25px] font-medium leading-9 mb-[7px] mt-6">Kauê Matos</h2>
                <p class="font-normal leading-5 uppercase">Cursando Ciência da Computação</p>
                <div class="icons flex mt-[10px] justify-center gap-2">
                    <a href="https://www.linkedin.com/in/kau%C3%AA-matos-oliveira-a76410213/"><img src="./img/in.png" alt="" class="icon cursor-pointer"></a>
                </div>
            </div>
            <div class="card w-[270px] py-8 px-14 text-black text-center">
                <img class="mx-auto -mb-[15px] rounded h-40 w-50" src="./img/Desenvolvedores/gustavo.jpeg" alt="Desenvolvedor Gustavo pacheco">
                <h2 class="text-[25px] font-medium leading-9 mb-[7px] mt-6">Gustavo Pacheco</h2>
                <p class="font-normal leading-5 uppercase">Cursando Ciência da Computação</p>
                <div class="icons flex mt-[10px] justify-center gap-2">
                    <a href="https://www.linkedin.com/in/gusta9s/"><img src="./img/in.png" alt="" class="icon cursor-pointer"></a>
                </div>
            </div>
            <div class="card w-[270px] py-8 px-14 text-black text-center">
                <img class="mx-auto -mb-[15px] rounded" src="./img/Desenvolvedores/pedro.jpeg" alt="Desenvolvedor Pedro">
                <h2 class="text-[25px] font-medium leading-9 mb-[7px] mt-6">Pedro Prado</h2>
                <p class="font-normal leading-5 uppercase">Cursando Ciência da Computação</p>
                <div class="icons flex mt-[10px] justify-center gap-2">
                    <a href="https://www.linkedin.com/in/phpprado/"><img src="./img/in.png" alt="" class="icon cursor-pointer"></a>
                </div>
            </div>
        </div>
    </div>
    <!-- Contato -->
    <div class="contact text-center my-10 mx-[5%]" id="Contato">
        <div class="container px-[5%] mx-auto flex flex-col max-w-[900px] w-full justify-center items-center text-black">
            <form method="Post" action="mailto:programmerdeveloper@gmail.com">
                <h1 class="lg:text-[42px] text-3xl font-bold mt-[50px] mb-3">Inscreva-se para receber mais informações</h1>
                <p class="text-base text-center">Fique por dentro das nossas novidades acadêmicas</p>
                <div class="input mt-[30px] flex justify-between mb-10 max-w-[860px] w-[100%] p-[10px]">
                    <input class="border-none py-[15px] px-[34px] bg-[#0000] outline-none" type="text" placeholder="Digite seu Email">
                    <button class="btn flex items-center gap-3 py-[15px] pl-[26px] pr-[49px] rounded-[70px] opacity-9">
                        <img src="./img/send.png" alt="Enviar">
                        Enviar
                    </button>
            </form>
        </div>
    </div>
</div>
<!--Footer-->
<footer>
    <div class="line w-full h-[1px] absolute left-0 opacity-20 md-[6px] bg-[#000]"></div>
    <div class="bottom flex justify-center gap-5 md:justify-between flex-wrap px-[5%] py-[26px]">
        <div class="left">
            © 2023 Agricultura orgânica. - Todos os direitos reservados.
        </div>
    </div>
</footer>
<!--Fim Footer-->
<!--Fim javascript-->
<script src="./js/main.js"></script>
</body>

</html>
