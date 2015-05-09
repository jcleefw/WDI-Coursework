/*The Lifetime Supply Calculator
Ever wonder how much a "lifetime supply" of your favorite snack is? Wonder no more!

Write a function named calculateSupply that:
takes 2 arguments: age, amount per day.
calculates the amount consumed for rest of the life (based on a constant max age). outputs the result to the screen like so: "You will need NN to last you until the ripe old age of X"
Call that function three times, passing in different values each time.
Bonus: Accept floating point values for amount per day, and round the result to a round number.*/

var calculateSupply = function (age, amount) {
  var maxAge = 60;
  var supplyNeed = (maxAge - age) * amount * 365;

  console.log('You will need '+ Math.round(supplyNeed) + ' to last you until the ripe old age of ' + maxAge);
}

calculateSupply(15, 5.7);
calculateSupply(50, 6.666);
calculateSupply(35, 48);