/*Check the results of assignGrade function from the conditionals exercise for every value from 60 to 100 - so your log should show "For 89, you got a B. For 90, you got an A.", etc.*/


function assigngGrade (number) {
  var grade;

  if(number >= 60 ){
    if(number >= 90) {
      grade = 'A';
    } else if (number <= 89 && number >= 80) {
      grade = 'B';
    } else if (number <= 79 && number >= 70) {
      grade = 'C';
    } else if (number <= 69 && number >= 60) {
      grade = 'D';
    } 
    return console.log('For '+ number +', you got an '+ grade +'.')
  } else {
    console.log('You failed');
  }
  
}


for(var i = 0; i <=100; i++) {
  assigngGrade(i);
}
