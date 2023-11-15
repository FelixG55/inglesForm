document.getElementById('formFinal')
         .addEventListener('submit', function(event) {
                Swal.fire({
                    title: `Su examen ha sido enviado, su resultado es ${this.resultado.value}`,
                    icon: 'warning'
                 })
         })