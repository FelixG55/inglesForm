window.addEventListener('load', function () {
    let formLogin = document.getElementById('formLogin');
    formLogin.addEventListener('submit', function (event) {
            let lengthPreguntas = document.getElementsByName('pregunta').length
            let respVacia = 0;
            for (let i = 0; i < lengthPreguntas; i++) {    
                let resp = document.getElementsByName(`pregunta${i+1}`);
                for (let j = 0; j < resp.length; j++) {
                    if (resp[j].checked) {
                        respVacia++
                    }
                }
            }
            if (respVacia != lengthPreguntas) {
                event.preventDefault();
                alert('Faltan preguntas por responder')
            }
})})