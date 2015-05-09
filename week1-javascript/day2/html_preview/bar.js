
var message = document.getElementById('message');
var submitBtn = document.getElementById('submit');
var userAge;
var setType = function () {
  
  userAge = document.getElementById('userAge').value;



  //alert(userAge);
  if(userAge) {
      if(userAge >= 18) {
      message.innerHTML = 'Welcome';
    } else {
      message.innerHTML = 'GET OUT';
    }
  }
  
}


submit.addEventListener('click', setType);
