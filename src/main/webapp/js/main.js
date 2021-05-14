document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function(e) {
        e.preventDefault();

        document.querySelector(this.getAttribute('href')).scrollIntoView({
            behavior: 'smooth'
        });
    });
});

function validar() {
    let campos = [];
    let nome = document.getElementById('nome').value;
    let cpf = document.getElementById('cpf').value;
    let data = document.getElementById('nasc').value;
    let sexo = document.getElementById('sexo').value;
    let email = document.getElementById('mail').value;
    let celular = document.getElementById('cel').value;
    let media = document.getElementById('media').value;
    let nivel = document.getElementById('nivel').value;

    const dataForm = [
        { label: "Nome", valor: nome },
        { label: "CPF", valor: cpf },
        { label: "Nascimento", valor: data },
        { label: "Sexo", valor: sexo },
        { label: "E-mail", valor: email },
        { label: "Celular", valor: celular },
        { label: "Média", valor: media },
        { label: "Nível", valor: nivel }
    ];

    for (let i = 0; i < dataForm.length; i++) {
        if (dataForm[i].valor == "") {
            campos.push(dataForm[i].label);
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: `Por favor preencha o(s) campo(s) abaixo: ${campos.join(', ')}`,
            });
        } else {
            Swal.fire({
                position: 'top-end',
                icon: 'success',
                title: 'Aluno cadastrado com sucesso!',
                showConfirmButton: false,
                timer: 2500
            });
        }
    }
}

// Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
    'use strict'
  
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.querySelectorAll('.needs-validation')
  
    // Loop over them and prevent submission
    Array.prototype.slice.call(forms)
      .forEach(function (form) {
        form.addEventListener('submit', function (event) {
          if (!form.checkValidity()) {
            event.preventDefault()
            event.stopPropagation()
          }
  
          form.classList.add('was-validated')
        }, false)
      })
  })()