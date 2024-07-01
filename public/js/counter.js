
// Set the date we're counting down to
var countDownDate = new Date().getTime() + 6000000;
// 2401000
var tenAlertTime = 0; 
var finAlertTime = 0;
// Update the count down every 1 second
var x = setInterval(function() {

  // Get today's date and time
  var now = new Date().getTime();
    
  // Find the distance between now and the count down date
  var distance = countDownDate - now;
    
  // Time calculations for days, hours, minutes and seconds
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
  // Output the result in an element with id="demo"
  document.getElementById("demo").innerHTML = minutes + "m " + seconds + "s " + "<br>To finish";
    
  // If the count down is over, write some text
  if (600000 > distance && tenAlertTime == 0) {
        
        Swal.fire({
           title: 'Faltan 10 minutos para terminar el examen',
           icon: 'warning'
        })
        tenAlertTime = 1;
  }
  if (10 > distance && finAlertTime == 0) {
    // alert('Se acabo el tiempo su examen sera enviado')
    clearInterval(x);
    document.getElementById("demo").innerHTML = "TIEMPO AGOTADO";
    Swal.fire({
        title: 'Se acabo el tiempo su examen sera enviado',
        icon: 'warning',
        allowOutsideClick: false
     }).then((result)=>{
        if (result.isConfirmed) {
            document.getElementById("formLogin").submit();
        }
    })
     finAlertTime = 1;
}
}, 1000);


