function validar() {
    // ARMAZENA O VALOR DE CADA ELEMENTO SELECIONADO PELO ID INSERIDO NO ARQUIVO HTML
    var nome = document.getElementById("nome").value;
    var cpf = document.getElementById("cpf").value;
    var nasc = document.getElementById("data").value;
    var sexo = document.getElementById("sexo").value;
    var email = document.getElementById("email").value;
    var cel = document.getElementById("celular").value;
    var nivel = document.getElementById("nivel").value;
    var media = document.getElementById("media").value;
    
    //SE O USUÁRIO NÃO INSERIU OS ELEMENTOS, O PROGRAMA O AVISARÁ! ASSIM QUE INSERIDOS, O AVISO DESAPARECE. 

    if(nome == "") {
        document.getElementById('errorNome').innerHTML = "Insira um nome!";
    }
    else {
        document.getElementById('errorNome').innerHTML = "";
    }
    if(cpf == "") {
        document.getElementById('errorCpf').innerHTML = "Insira um CPF válido!";
    }
    else {
        document.getElementById('errorCpf').innerHTML = "";
    }
    if(nasc == "") {
        document.getElementById('errorData').innerHTML = "Insira uma data de nascimento!";
    }
    else {
        document.getElementById('errorData').innerHTML = "";
    }
    if(sexo == "") {
        document.getElementById('errorSexo').innerHTML = "Selecione um sexo!";
    }
    else {
        document.getElementById('errorSexo').innerHTML = "";
    }
    if(email == "") {
        document.getElementById('errorEmail').innerHTML = "Insira um endereço de email!";
    }
    else {
        document.getElementById('errorEmail').innerHTML = "";
    }
    if(cel == "") {
        document.getElementById('errorCel').innerHTML = "Insira um número de celular!";
    }
    else {
        document.getElementById('errorCel').innerHTML = "";
    }
    if(nivel == "") {
        document.getElementById('errorNivel').innerHTML = "Selecione seu nível!";
    }
    else {
        document.getElementById('errorNivel').innerHTML = "";
    }
    if(media == "") {
        document.getElementById('errorMedia').innerHTML = "Insira sua média!";
    }
    else {
        document.getElementById('errorMedia').innerHTML = "";
    }
}