const btn = document.getElementById('button');

  document.getElementById('formFinal')
   .addEventListener('submit', function(event) {
     event.preventDefault();
  
     btn.value = 'Enviando...';
    
     const serviceID = 'default_service';
     const templateID = 'template_lh0asnb';

     if ((this.resultado.value / this.totalrespuestas.value)*100 >= 60) {
          message = 'usted aprobó el examen'
     }else if ((this.resultado.value / this.totalrespuestas.value)*100 <= 60) {
          message = 'usted no aprobó el examen'
     }
  
     emailjs.sendForm(serviceID, templateID, this)
      .then(() => {
        btn.value = 'Send Email';
        Swal.fire({
          title: `Su examen ha sido enviado, su resultado es ${this.resultado.value}, ${message}`,
          icon: 'success',
          allowOutsideClick: false
       }).then((result)=>{
        if (result.isConfirmed) {
            window.location.href = '/'
        }
    })
      }, (err) => {
        btn.value = 'Send Email';
        alert(JSON.stringify(err));
      });
  });