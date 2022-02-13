var activityCards = document.querySelectorAll('.activity-card');

alert(activityCards.length);


activityCards.forEach((card)=>{
  card.addEventListener('click', ()=>{
    card.classList.add('d-none');  
  })
});

