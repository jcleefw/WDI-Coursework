/*You're out enjoying a few green beers when you bump into Paddy in a bar. Write a JS program in paddy.js that takes input from an id='question' input box and returns Paddy's reply in a new <div>

Say 'Happy St Patrick's' and Paddy replies 'tildlely de, potatoes'

Ask him 'Do you want a pint of Guinness?' Paddy's had a pint or two and the Irish band is really loud so you might need to shout twice and he'll reply 'Just the luck of the Irish.'

Then say to him 'Paddy, it's your round.' and he'll reply 'Look, Leprechaun!'*/

var questionInput = document.getElementById("question");
var answerInput = document.getElementById('saySomething');
var question = [];
var counter = 0;
submit.addEventListener('click', logging);
var supposedQuestion = ['tildlely de, potatoes', 'Just the luck of the Irish.'];
var addShowTimer;
function reply(question) {
  answerInput.classList.remove('show');
  console.log(question);
  var answers = ["Happy St Patrick's ", "Do you want a pint of Guinness?", "Paddy, it's your round."];

  if(question.length > 0 ) {
    var number = question.length -1;
    console.log(number);

    if(question.length == 2) {

      for(counter=0; counter < 2; counter++){
        
        console.log("counter = " + counter);
        if(counter===0) {
          answerInput.innerHTML = answers[number];
          showAnswer();
        } else {

          addShowTimer = setInterval(function() { 
            answerInput.innerHTML = "<em>Hello!!!</em> " + answers[number];
            clearInterval(addShowTimer);
          }, 6000);
          showAnswer();
        }
        
      }


    } else {
      answerInput.innerHTML = answers[number];
    }

    if(question.length === 3) {
      clearInterval(addShowTimer);
    }
    
    //showAnswer();
    
  } 
}

function logging() {
  if(questionInput.value !== "") {
    //setInterval   removeAnswer();

    console.log("logging question");
    if(question.length < 3) {
      question.push(questionInput.value);
      return reply(question);

    }else {
      question = [];
      answerInput.innerHTML = "Let's start again.";
      return;
    }
  }
}

function showAnswer() {
  answerInput.classList.add('show');
}

function removeAnswer() {

  answerInput.classList.remove('show');
  
}