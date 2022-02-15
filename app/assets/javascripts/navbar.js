document.addEventListener("DOMContentLoaded", function(){
  var navbarBrandElements = document.querySelector('.navbar-brand');

  navbarBrandElements.addEventListener('onclick', ()=>{
    window.location.reload();
  });
});
