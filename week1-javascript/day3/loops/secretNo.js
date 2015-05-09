//Math.floor(Math.random() * (max - min) )+ min;
var secretNo = Math.floor(Math.random() * (100 - 0) )+ 0;
var guess = prompt('Guess a number');


while(parseInt(guess,10) !== secretNo) {

  console.log('guess again');

  if(guess < secretNo) {
    console.log('Number should be larger');
  } else {
    console.log('Number should be smaller');
  }

  guess = prompt('Guess a number');
}

console.log('Hooray');

