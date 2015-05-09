var wordList = ['ruby', 'rails', 'javascript', 'array', 'hash', 'underscore', 'sinatra', 'model', 'controller', 'view', 'devise', 'authentication', 'capybara', 'jasmine', 'cache', 'sublime', 'terminal', 'system', 'twitter', 'facebook', 'function', 'google', 'amazon', 'development', 'data', 'design', 'inheritance', 'prototype', 'gist', 'github', 'agile', 'fizzbuzz', 'route', 'gem', 'deployment', 'database'];
var game = {
  config: function() {
    this.secretWord = [];
    this.MAX_GUESSES = 8;
    this.wrongGuessed = [];
    this.rightGuessed = [];
  },
  setSecretWord: function() {
    this.secretWord = _.toArray(_.sample(wordList));
    this.secWordLength = _.uniq(this.secretWord).length;
  },
  setGameUp: function() {
    var html = '';
    _.times(_.size(this.secretWord), function (num) {
      html += "<span class='letter box'></span>";
    });
    return html;
  },
  setWrongGuess: function(letter) {
    if(this.guessesLeft() > 0) {
      this.wrongGuessed.push(letter);
      display.pushWrongLetter(letter);
      display.updateGuessLeft();
      return this.lose();
    }
  },
  guessesLeft: function() {
    return this.MAX_GUESSES - this.wrongGuessed.length;
  },

  guessInput: function(letters) {
    if(this.rightGuessed.length < this.secWordLength) {
      var foundLetter = [];
      _.each(this.secretWord, function(char, index) {
        if (char === letters) {
          foundLetter.push(char);
          display.pushCorrectLetter(index, char);
        } 
      });
      if(_.size(foundLetter) <= 0) {
          this.setWrongGuess(letters);
      } else {
        this.rightGuessed = _.union(foundLetter, this.rightGuessed);
      }
      this.win();
    }
    
  },
  lose: function() {
    
    if (this.guessesLeft() <= 0) {
      display.birdTalk('You\'ve lost!!!');
      display.toggleInput();
    } else {
      return false;
    }
    
  },
  win: function() {
    
    if (this.rightGuessed.length === this.secWordLength) {
      display.birdTalk('You\'ve won!!!');
      display.toggleInput();
    } else {
      return false;
    }
  },
  resetGame: function() {
    console.log('resettingGame');
    game.init();
    display.setPuzzleBox();
    display.clearWrongLetter();
    display.removeHiddenInput();
  },

  init: function() {
    this.config();
    this.setSecretWord();
    display.setPuzzleBox();
    display.updateGuessLeft();
    display.birdTalk("Guess A Letter!");
    display.birdEntering();
  }
};

var display = {
  birdEntering: function() {
    document.getElementById('red').getElementsByTagName('img')[0].style.display = "block";
  },
  birdHide: function() {
    document.getElementById('red').getElementsByTagName('img')[0].style.display = "none";
  },
  birdTalk: function(message) {
    document.getElementById('talk').innerHTML = message;
  },
  setPuzzleBox: function() {
    document.getElementById('wordString').innerHTML = game.setGameUp();
  },
  clearInput: function() {
    document.getElementById('letterField').value = "";
  },
  clearWrongLetter: function() {
    document.getElementById('wrongLetters').innerHTML = "";
  },
  pushCorrectLetter: function(index, letter) {
    document.getElementById('wordString').getElementsByTagName('span')[index].innerHTML = letter;
  },
  pushWrongLetter: function(letter) {
    document.getElementById('wrongLetters').innerHTML += "<span class='letter wrong'>" + letter + "</span>";
  },
  updateGuessLeft: function() {
    document.getElementById('guessesLeft').innerHTML = game.guessesLeft();
  },
  toggleInput: function() {
    document.getElementById('letterField').classList.toggle('hidden');
  },
  removeHiddenInput: function() {
    document.getElementById('letterField').classList.remove('hidden');
  }
}

