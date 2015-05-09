var word = {
  secretWord:[],
  wrongArray: [],
  correctArray: [],
  secretUniqLetters: [],

  wordList: ['ruby', 'rails', 'javascript', 'array', 'hash', 'underscore', 'sinatra', 'model', 'controller', 'view', 'devise', 'authentication', 'capybara', 'jasmine', 'cache', 'sublime', 'terminal', 'system', 'twitter', 'facebook', 'function', 'google', 'amazon', 'development', 'data', 'design', 'inheritance', 'prototype', 'gist', 'github', 'agile', 'fizzbuzz', 'route', 'gem', 'deployment', 'database'],
 
  // Selects a random word from the word list sets the secret word
  setSecretWord: function(){
    this.secretWord = _.toArray(_.sample(this.wordList));
    this.secretUniqLetters = _.uniq(this.secretWord);
  },
 
  // Takes an array of letters as input and returns an array of two items:
  // 1) A string with the parts of the secret word that have been guessed correctly and underscore for the parts that haven't
  // 2) An array of all the guessed letters that were not in the secret word
  checkLetters: function(guessedLetters){

    guessedArray = _.toArray(guessedLetters.toLowerCase());
    correctArray = _.intersection(guessedArray, this.secretUniqLetters);
    wrongArray = _.difference(guessedArray, this.secretUniqLetters);

    console.log("correctArray = " + correctArray);
    
    if(_.size(wrongArray)>0) {
      //console.log("i dont have any changes");
    //   console.log("this.wrongArray  = " + this.wrongArray);
    //   console.log("this.wrongArray.length = " + _.size(this.wrongArray));
      if (_.size(this.wrongArray)>0) {
        this.wrongArray = wrongArray.concat(this.wrongArray);
      } else {
        this.wrongArray = wrongArray;
      }
      return false;
    } else {
      //console.log("i have new value");
      if (_.size(this.correctArray)>0) {
        this.correctArray = correctArray.concat(this.correctArray);
      } else {
        this.correctArray = correctArray;
      }
      return true;
    }
    
  },
  destroy: function() {
    this.correctArray= [];
    this.wrongArray = [];
  }

};
 
var player = {
  MAX_GUESSES: 8,
  guessedLetters: [],
  guessLeft: 8,
  // Takes a new letter as input and updates the game

  makeGuess: function(letter){
    
    if(this.guessLeft > 0) {
      var guess = word.checkLetters(letter);
      var same = _.isEqual(_.sortBy(word.correctArray), _.sortBy(word.secretUniqLetters));
      var isCorrectLetter = true;
      //console.log("guess =" + guess);
      if(!guess && !same) {
        console.log("Wrong guess");
        isCorrectLetter = false;
        player.guessLeft -=1;
        
      } else {
        console.log("correct guess");
        game.printToBox(letter, true);  
      }
      game.updateDisplay(letter, isCorrectLetter);
      if(this.guessLeft === 0) {
          this.checkLose();
      }
      if(same) {
        this.checkWin();
      }
      
    }  else{
      this.checkLose();
    }
    document.getElementById('letterField').value = "";
  },
 
  // Check if the player has won and end the game if so
  checkWin: function(wordString){
    //alert("You have won");
    document.getElementById('talk').innerHTML = "You have won";
    document.getElementById('letterField').setAttribute("disabled", true);
    console.log(word.correctArray);
  },
 
  // Check if the player has lost and end the game if so
  checkLose: function(wrongLetters){
    //alert("You have lost with these wrong guesses");
    document.getElementById('talk').innerHTML = "You have lost.";
    document.getElementById('letterField').setAttribute("disabled", true);
    alert('Answer is ' + word.secretWord);
    console.log(word.wrongArray);
  }
};
 
var game = {
  // Resets the game
  resetGame: function(){
    alert('resetting game');
    word.setSecretWord();
    game.setUpDisplay();
    player.guessLeft = player.MAX_GUESSES;
    word.destroy();
  },
 
  // Reveals the answer to the secret word and ends the game
  giveUp: function() { 
    alert('Answer is ' + word.secretWord);
    game.resetGame();
  },
 
  // Update the display with the parts of the secret word guessed, the letters guessed, and the guesses remaining
  updateDisplay: function(inputLetter, isWordCorrect){

    game.printToBox(inputLetter, isWordCorrect);
    document.getElementById('guessesLeft').innerHTML = player.guessLeft.toString();
  },
  setUpDisplay: function() {
    console.log("secret word = " + word.secretWord.join(''));
    game.resetHTML();
    _.times(_.size(word.secretWord), function (num) {
      var html = "<span class='letter box' id='letter"+(num+1)+"'>";
      html += "</span>";
      document.getElementById('wordString').innerHTML += html;
    });

    _.times(8, function(num) {
      var html = "<span class='letter wrong' id='wrong"+(num+1)+"'>";
      html += "</span>";
      document.getElementById('wrongLetters').innerHTML += html;
    });
  },
  printToBox: function(letter, correct) {
    if(correct === true) {
      var array = word.secretWord;
      _.times(_.size(array), function (num) {
        if(array[num] === letter ) {
          var letterName = "letter" + (num+1).toString();
          document.getElementById(letterName).innerHTML = letter.toUpperCase();
        }
      });
    } else {
      var sizeWrong = _.size(word.wrongArray);
      //console.log(sizeWrong);
      var name = "wrong"+ sizeWrong.toString()
      //console.log(name);
      //console.log.toUpperCase;
      document.getElementById(name).innerHTML = letter.toUpperCase();
    }
  },
  resetHTML: function() {
    document.getElementById('guessesLeft').innerHTML = player.MAX_GUESSES.toString();
    document.getElementById('letterField').value = "";
    document.getElementById('letterField').removeAttribute("disabled");
    document.getElementById('wrongLetters').innerHTML = "";
    document.getElementById('wordString').innerHTML = "";
    document.getElementById('talk').innerHTML = "Guess A Letter";
  }

};
 
window.onload = function(){
  // Start a new game
  word.setSecretWord();
  
  game.setUpDisplay();
  
  // events - keypress, keyup, keydown, click, change
  // Add event listener to the letter input field to grab letters that are guessed
  var input = document.getElementById('letterField');
  input.addEventListener('keyup', function(e) { 
    var key = e.keyCode;
    if ((key >= 65 && key <= 90) || (key >= 95 && key <= 122)) {
      player.makeGuess(input.value);
    } else {
      alert('Please only enter Letters.');
      document.getElementById('letterField').value = "";
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
  });
};