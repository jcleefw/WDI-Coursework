// Now work out each golfers round compared to the course par.
var bobScore = [3,2,6,11,9,2,6,9,10];
var jimboScore = [5,12,9,22,13,7,16,10,11];
var fishScore = [2,2,4,5,4,3,6,4,1];

var parScore = [3,4,5,5,3,3,4,3,5];

var score = {
  bob: { score: bobScore},
  jimbo: {score: jimboScore},
  fish: {score: fishScore},
  par: { score: parScore }
}

var totalScore = function (array) {
  console.log(array);
  var total = 0;
  // for(var i = 0; i < array.length; i++) {
    
  //   total += array[i];
  // }
  total = array.reduce(function(a,b) { 
    return a+b;
  });
  return total;
}

score.bob.totalScore = totalScore(score.bob.score);
score.jimbo.totalScore = totalScore(score.jimbo.score);
score.fish.totalScore = totalScore(score.fish.score);

score.par.totalScore = totalScore(score.par.score);

var compareWithPar = function (playerTotal, parTotal) {
  var comparison = parTotal - playerTotal;
  var keyword;
  var message = "Player with total score " + playerTotal + " is " + Math.abs(comparison) + " ";

  if (comparison < 0) {
    message += "behind";
  } else {
    message += "ahead";
  }
  message+= " Par with totalScore " + parTotal;
  console.log(message)
  return comparison;
}

score.bob.comparisonWithPar = compareWithPar(score.bob.totalScore, score.par.totalScore);
score.jimbo.comparisonWithPar = compareWithPar(score.jimbo.totalScore, score.par.totalScore);
score.fish.comparisonWithPar = compareWithPar(score.fish.totalScore, score.par.totalScore);

/*Fish loves a punt. Having placed a $1 bet on each stroke over par that Bob and Jimbo played per hole calculate his winnings.*/

var calculateFishWinnings = function(bob, jimbo, par){

  console.log("Fish have $" + Math.abs(bob) + " as winnings over Bob");
  console.log("Fish have $" + Math.abs(jimbo) + " as winnings over Jimbo");
  console.log("Fish have $" + Math.abs(bob+jimbo) + " as winnings in total");
  return bob+jimbo;
}

calculateFishWinnings(score.bob.comparisonWithPar, score.jimbo.comparisonWithPar);