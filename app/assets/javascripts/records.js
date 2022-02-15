document.addEventListener("DOMContentLoaded", function(){
  let duration_input = document.querySelector('.duration-field');
  let time = document.querySelector('.time');

  hours = Math.floor(duration_input.value / 60);
  let minutes = duration_input.value % 60;
  let result = '';

  hours = Math.floor(duration_input.value / 60);
  minutes = duration_input.value % 60;
  
  if (hours == 0 && minutes > 1) {
    result = minutes + ' minutes' ;
  } else if (hours == 1 && minutes > 1) {
    result = hours + ' hour ' + minutes + ' minutes' ;
  } else if (hours == 1 && minutes == 0) {
    result = hours + ' hour' ;
  } else if (hours > 1 && minutes == 0) {
    result = hours + ' hours' ;
  } else if (hours > 1 && minutes > 1) {
    result = hours + ' hours ' + minutes + ' minutes' ;
  } else if (hours == 0 && minutes == 1) {
    result = minutes + ' minute' ;
  } 

  time.innerText = result ;

  duration_input.addEventListener('input', ()=>{
    time.innerText = result ;
    return time.innerText
  })
});
