  var flashSection = document.getElementById('flash-section');
  var flashMsg = document.getElementById('flash-message');
  var yield = document.getElementById('yield');


const displayFlash = () => {
  yield.classList.add("mt-3");
  flashSection.classList.add("alert", "alert-success");
  flashMsg.innerHTML = "Record was successfully destroyed";
}

const removeFlash = () => {
  yield.classList.remove("mt-3");
  flashSection.classList.remove("alert", "alert-success");
  flashMsg.innerHTML = "";
}

const flashDeleteRecord = () => {
  $.when(displayFlash()).then(function(){
    setTimeout(removeFlash, 1500);
  })
}