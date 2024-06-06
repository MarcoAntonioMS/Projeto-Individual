
function limparSessao() {
    sessionStorage.clear();
}

function aguardar() {
    var divAguardar = document.getElementById("div_aguardar");
    divAguardar.style.display = "flex";
}

function finalizarAguardar() {
    var divAguardar = document.getElementById("div_aguardar");
    divAguardar.style.display = "none";
}

