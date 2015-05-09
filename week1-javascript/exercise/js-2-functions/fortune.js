/*
The Fortune Teller
Why pay a fortune teller when you can just program your fortune yourself?

Write a function named tellFortune that:

takes 4 arguments: number of children, partner's name, geographic location, job title.
outputs your fortune to the screen like so: "You will be a X in Y, and married to Z with N kids."
Call that function 3 times with 3 different values for the arguments.
*/



var tellFortune = function (noChild, partnerName, place, job) {
  return "You will be a "+job+ " in " + place +", and married to "+partnerName+" with "+noChild +" kids.";
}

console.log(tellFortune(1,'Suzy', 'Melbourne', 'taxi driver'));
console.log(tellFortune(5,'Thomas', 'China', 'Gardener'));
console.log(tellFortune(2,'William', 'Sydney', 'Janitor'));