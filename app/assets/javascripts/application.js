document.querySelector('.q-button').addEventListener('click', (){
  let data = document.querySelector('.1990-1999').value;
  if (document.querySelector('.1990-1999').checked) {
     document.querySelector('.out-6').innerHTML = '5555';
  }
  else{
    document.querySelector('.out-6').innerHTML = '';
  }
});