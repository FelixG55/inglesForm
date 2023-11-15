document.getElementById('formLogin')
         .addEventListener('submit', function(event) {
        
            let lengthPreguntas = document.getElementsByName('pregunta').length
            let respVacia = 0;  

            for (let i = 0; i < lengthPreguntas; i++) {
                let preguntaGrupo = document.querySelector(`.preg${i + 1}`);
                let resp = preguntaGrupo.querySelectorAll('[name^="pregunta"]');
                let preguntaRespondida = false;
        
                for (let j = 0; j < resp.length; j++) {
                    if (resp[j].checked) {
                        preguntaRespondida = true;
                        break;
                    }
                }
        
                if (!preguntaRespondida) {
                    preguntaGrupo.classList.add('error-pregunta');
                } else {
                    preguntaGrupo.classList.remove('error-pregunta');
                    respVacia++;
                }
            }
        
            if (respVacia != lengthPreguntas) {
                event.preventDefault();
                Swal.fire({
                    title: 'Faltan preguntas por responder',
                    icon: 'warning'
                 })
            }
         })