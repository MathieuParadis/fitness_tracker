document.addEventListener("DOMContentLoaded", function(){
  let duration_input = document.querySelector('.duration-field');
  let time = document.querySelector('.time');

  duration_input.addEventListener('input', ()=>{
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

    time.innerText = result ;
    return time.innerText
  })
});



var flashSection = document.getElementById('flash-section');
var flashMsg = document.getElementById('flash-message');
var yield = document.getElementById('yield');

const displayFlashDeleteRecord = () => {
  yield.classList.add("mt-3");
  flashSection.classList.add("alert", "alert-success");
  flashMsg.innerHTML = "Record was successfully destroyed";
}

const removeFlashDeleteRecord  = () => {
  yield.classList.remove("mt-3");
  flashSection.classList.remove("alert", "alert-success");
  flashMsg.innerHTML = "";
}

const flashDeleteRecord = () => {
  $.when(displayFlashDeleteRecord ()).then(function(){
    setTimeout(removeFlashDeleteRecord , 1500);
  })
}