// window.addEventListener('load', function() {
  
//     // Esperar 5 segundos (5000 milisegundos) antes de enviar el formulario
//     setTimeout(function() {
      
//                       // Obtener los valores del formulario
//                   const form = document.getElementById('form');
//                   // Enviar correo con Email.j
//                   emailjs.sendForm("default_service", "template_lh0asnb", this.form)
//                       .then(function(response) {
//                           console.log("Correo enviado con éxito:", response);
//                       })
//                       .catch(function(error) {
//                           console.error("Error al enviar el correo:", error);
//                       });
  
//                   // Enviar el formulario
//                   form.submit();
//                   alert(`Su examen ha sido enviado, resultado fue ${this.form.resultado.value}`)
  
//     }, 0.1); // Cambia este valor al tiempo que desees en milisegundos
    
//   });

const btn = document.getElementById('button');

  document.getElementById('formFinal')
   .addEventListener('submit', function(event) {
     event.preventDefault();
  
     btn.value = 'Sending...';
    
     const serviceID = 'default_service';
     const templateID = 'template_lh0asnb';
  
     emailjs.sendForm(serviceID, templateID, this)
      .then(() => {
        btn.value = 'Send Email';
        alert(`Su examen ha sido enviado, du resultado es ${this.resultado.value}`);
        window.location.href = '/'
      }, (err) => {
        btn.value = 'Send Email';
        alert(JSON.stringify(err));
      });
  });