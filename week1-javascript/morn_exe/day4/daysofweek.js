/* In a new js file, create an array (and assign it to a variable) containing the days of the week as strings, with Monday as the first and Sunday as the last.*/
var week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];

/* My calendar says Sunday is the first day of the week. Write code to move Sunday from the end of the array to the beginning.*/
var sundayIndex = week.indexOf("Sunday");

var arrayLength = week.arrayLength;

console.log(sundayIndex);

if(sundayIndex !== 0) {
  var removeValue = week.pop();
  console.log(removeValue);
  week.unshift(removeValue);
}
/* I'm really excited about Friday for some reason. Write code to find that day in the array and make it all uppercase.*/
var fridayIndex = week.indexOf("Friday");

week[fridayIndex] = week[fridayIndex].toUpperCase();

console.log(week);

/* Create and assign a new array which contains two sub-arrays: One containing all the weekdays, and one containing the weekends. */


var newWeek = {
  "weekday" : ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"],
  "weekend" : ["Saturday", "Sunday"]
}

var weekday  = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"];
var weekend = ["Saturday", "Sunday"];
var wholeWeek = [weekday, weekend];

/*function findDayIndex(array, string) {
  for(var i = 0; i < array.length; i++) {
    //console.log(array[i]);
    //console.log(array[i].indexOf(string));
    //console.log('array['+i+'][' + array[i].indexOf(string)+']');
    return '['+i+'][' + array[i].indexOf(string)+']';
  }
}

var findWedArray = 'wholeWeek'+findDayIndex(wholeWeek, 'Wednesday');

findWedArray = "Stubbies Day";
findWedArray;

console.log(findWedArray);
console.log(wholeWeek);*/

//console.log(newWeek.weekday);

/*Let's get in touch with our Bogan heritage. With your new array of arrays, write code that will change Wednesday to "Stubbies Day".*/
var newWeekWed = newWeek.weekday.indexOf('Wednesday');
newWeek.weekday[newWeekWed] = "Stubbies Day";

console.log(newWeek.weekday);
/*var daysAlphabetically = sortArray(newWeek);
console.log(daysAlphabetically);*/

/*On second thought, I don't like weekdays at all. Write code that deletes the weekdays from the array of arrays, leaving only the weekends.*/

delete newWeek.weekend;
console.log(newWeek);

/*Going back to your original array of days, write code that sorts the days alphabetically and assigns these to a new variable.*/

function sortArray(array) {
  var sortLine = []
  Object.keys(array).forEach(function (key) {
      sortLine.push(array[key].sort());
      // use val
  });
  return sortLine;
}
var daysAlphabetically = sortArray(newWeek);

/*Finally, print out (on the console) the list of sorted days, with each day on its own line.*/
console.log(daysAlphabetically);

  