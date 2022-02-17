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