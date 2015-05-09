/*Have students write a JavaScript application using for loops that logs all numbers from 1 - 100.

If a number is divisible by 3 log "Fizz" instead of the number.
If a number is divisible by 5 log "Buzz" instead of the number.
If a number is divisible by 3 and 5 log "FizzBuzz" instead of the number.*/

 var number = 0;

// for(var i = 0; i <= 100; i++) {

// }

while(number <=  100) {
  if((number % 3===0 ) && (number %5 === 0)) {
    console.log('FizzBuzz');
  } else if(number % 3 ===0) {
    console.log('Fizz');
  } else if (number % 5 ===0) {
    console.log('Buzz');
  } else {
    console.log(number);
  }

  number++;
}