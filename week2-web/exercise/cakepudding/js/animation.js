window.onload = function(){

  // game.init();

  // display.updateGuessLeft();

  // display.setPuzzleBox();

  // Add event listener to the input field when clicked a key is released. Only accept characters from A-Z && a-z
  var input = document.getElementById('letterField');
  input.addEventListener('keyup', function(e) { 
    var key = e.keyCode;
    if ((key >= 65 && key <= 90) || (key >= 95 && key <= 122)) {
      game.guessInput(input.value);
      display.clearInput();
    } else {
      alert('Please only enter Letters.');
      display.clearInput();
    }
   });

  // Add event listener to the reset button to reset the game when clicked
  var reset = document.getElementById('resetButton');
  reset.addEventListener('click', game.resetGame);

  // Add event listener to the give up button to give up when clicked
  var giveup = document.getElementById('giveUpButton');
  giveup.addEventListener('click', game.giveUp);

  var start = document.getElementById('startGame');
  var startButton = start.getElementsByTagName("button")[0];
  startButton.addEventListener('click', function() {
    start.classList.toggle('hidden');

    var timer = setInterval( function() {
      console.log("init game");
      game.init();
      clearInterval(timer);
    }, 400);

  });
}