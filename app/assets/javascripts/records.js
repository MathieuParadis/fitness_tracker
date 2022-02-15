document.addEventListener("DOMContentLoaded", function(){
  var duration_input = document.querySelector('.duration-field');
  var time = document.querySelector('.time');
  time.innerText = duration_input.value;
  
  duration_input.addEventListener('input', ()=>{
    time.innerText = duration_input.value;
  })
});
