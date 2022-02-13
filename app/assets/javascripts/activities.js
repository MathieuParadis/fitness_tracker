document.addEventListener("DOMContentLoaded", function(){
  var activityCards = document.querySelectorAll('.activity-card');


  activityCards.forEach((card)=>{
    card.addEventListener('mouseover', ()=>{
      card.children[0].classList.toggle('d-none');  
      card.children[1].classList.toggle('d-none');  
    })
  });
  
  activityCards.forEach((card)=>{
    card.addEventListener('mouseout', ()=>{
      card.children[0].classList.toggle('d-none');  
      card.children[1].classList.toggle('d-none');  
    })
  });
});
