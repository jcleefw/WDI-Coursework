/* Forgot how old you are? Calculate it!

Write a function named calculateAge that:

takes 2 arguments: birth year, current year.
calculates the 2 possible ages based on those years. outputs the result to the screen like so: "You are either NN or NN"
Call the function three times with different sets of values.
Bonus: Figure out how to get the current year in JavaScript instead of passing it in. */

var i = 0;


var birthYear = prompt('What year are you born?');


function calculateAge( birthYear, currentYear) {
  if(!currentYear) {
    currentYear = new Date().getFullYear();
  }
  var age = currentYear - birthYear;
  var ageStatement = 'You are either ' + age + ' or ' + (age-1);
  console.log(ageStatement);
}