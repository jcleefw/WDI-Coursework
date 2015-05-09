var winner = 0;
var head = 0;
var tail = 0;
var coinFlip = function () {
  console.log("i am called");
  var coin = Math.round(Math.random());
  return coin;
}

var getsWinner = function () {
  //console.log(coin);
  if(head<5 && tail<5) {
    var coin = coinFlip();

    if(coin) {
        head+=1;
      }else {
        tail+=1;
    }
    printMessage("head: "+ head + "; tail = "+ tail);
  } else {
    printMessage("Found a winner");
    return (head===5) ? printMessage("Head Win!!") : printMessage.log("Tail Win!!")
  }
}

var printMessage = function(string) {
  document.getElementById('message').innerHTML += "<p>"+string+"</p>";
} 

var reset = function() {
  head =0; 
  tail=0;
  document.getElementById('message').innerHTML = "<p>"+"Start Again!!"+"</p>";
}
document.getElementById('coin').addEventListener ('click', getsWinner);

document.getElementById('reset').addEventListener ('click', reset);

