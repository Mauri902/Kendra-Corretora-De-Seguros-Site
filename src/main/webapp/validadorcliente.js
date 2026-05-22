function validarcliente(){
    let nome = frmContato.nome.value
    let cpf = frmContato.cpf.value.replace(/\D/g, "")
    let cnpj = frmContato.cnpj.value.replace(/\D/g, "")
    let telefone = frmContato.telefone.value.trim().replace(/\D/g, "")
    let email = frmContato.email.value
    let seguros = frmContato.seguros.value
    let nascimento  = frmContato.nascimento.value
    let sexo = frmContato.sexo.value
    let estado = frmContato.estado.value

    let regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/

    if(nome === ""){
        alert('Preencha o campo nome')
        frmContato.nome.focus()
        return false

    } else if(nome.length < 3){
        alert('O nome deve ter pelo menos 3 caracteres')
        frmContato.nome.focus()
        return false

    } else if(cpf === ""){
        alert("Preencha o CPF")
        frmContato.cpf.focus()
        return false

    } else if(cpf.length !== 11){
        alert("CPF deve ter 11 números")
        frmContato.cpf.focus()
        return false

    } else if(cnpj !== "" && cnpj.length !== 14){
        alert("CNPJ deve ter 14 números")
        frmContato.cnpj.focus()
        return false

    } else if(telefone === ""){
        alert('Preencha o campo telefone')
        frmContato.telefone.focus()
        return false

    } else if(telefone.length !== 11){
        alert('O campo telefone deve ter 11 caracteres')
        frmContato.telefone.focus()
        return false

    } else if(email === ""){
        alert('Preencha o campo email')
        frmContato.email.focus()
        return false

    } else if(!regex.test(email)){
        alert("Digite um email válido")
        frmContato.email.focus()
        return false

    } else if(nascimento === ""){
        alert("Preencha a data de nascimento")
        frmContato.nascimento.focus()
        return false

    } else if(sexo === "Selecione um sexo"){
        alert("Selecione o sexo")
        frmContato.sexo.focus()
        return false

    } else if(estado === "Selecione um estado civil"){
        alert("Selecione o estado civil")
        frmContato.estado.focus()
        return false

    } else if(seguros === "Selecione um serviço"){
        alert('Selecione alguma opção de seguro')
        return false

    } else{
        return true
    }
}

window.onload = function () {

    frmContato.telefone.addEventListener("input", function () {
        this.value = this.value.replace(/\D/g, "").slice(0, 11)
    });

    frmContato.nome.addEventListener("input", function () {
        this.value = this.value.replace(/[0-9]/g, "")
    });

    frmContato.cpf.addEventListener("input", function () {
        this.value = this.value.replace(/\D/g, "").slice(0, 11)
    });

    frmContato.cnpj.addEventListener("input", function () {
        this.value = this.value.replace(/\D/g, "").slice(0, 14)
    });

}

function limparForm() {
    document.frmContato.reset();
}

