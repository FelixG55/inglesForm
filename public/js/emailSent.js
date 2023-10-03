
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