$(document).on("click", function() {
    var numCep = $("#cep").val();
    var url = "https://viacep.com.br/ws/" + numCep + "/json";

    $.ajax({
        url: url,
        type: "get",
        dataType: "json",

        success: function(dados) {
            console.log(dados);
            $("#uf").val(dados.uf);
            $("#cidade").val(dados.localidade);
            $("#logradouro").val(dados.logradouro);
            $("#bairro").val(dados.bairro);

        }
    });
});

//Mascara CEP 
$(document).ready(function() {
    $('#cep').focus(function() {
        $(this).mask('00000-000');
    });
});

//Mascara + validação + ALERT
$(document).ready(function() {

    $('#telefone').focus(function() {
        $(this).mask('(11)00000-0000');
        if ($(this) == true) {
            $(this).addClass('outline-gray-400');
        }
    });

    //Todos os dados foram enviados com sucesso ALERT
    $('#btn').click(function() {
        var date = $('#nome,#sobrenome,#telefone,#cep').val() ? true : false;

        if (date == true) {
            alert('Todos os seus dados foram enviados com sucesso');
            //Recarrega a pagina!
            location.reload();
        } else if (date == false) {
            alert('Ocorreu um erro na hora do envio porfavor preecha novamente!');
            $(this).addClass('outline-red-950');
        }
    });
});

//Valida idade
$(document).ready(function() {
    if ($('#idade').val() > 2 || $('#idade').val() == null) {
        alert('Ocorreu um erro na hora do envio porfavor preecha novamente!');
        $('#idade').addClass('outline-red-950');
    }
});