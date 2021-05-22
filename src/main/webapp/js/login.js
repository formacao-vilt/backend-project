function validar() {
    let campos = [];
    let nome = document.getElementById('nome').value;
    let senha = document.getElementById('senha').value;

    const dataForm = [
        { label: "Nome", valor: nome },
        { label: "Senha", valor: senha },
    ];

    for (let i = 0; i < dataForm.length; i++) {
        if (dataForm[i].valor == "") {
            campos.push(dataForm[i].label);
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: `Por favor preencha o(s) campo(s) abaixo: ${campos.join(', ')}`,
				timer: 2500
            });
        } else {
            Swal.fire({
                position: 'top-end',
                icon: 'success',
                title: 'Login efetuado com sucesso!',
                showConfirmButton: false,
                timer: 2500
            });
        }
    }
}
