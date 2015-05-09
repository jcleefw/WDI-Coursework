var Scrabble = {

  score: function (word) {

    var lookup = {
      'a': 1,
      'b': 3,
      'c': 3
    }

    var chars = word.split('');
    var total = 0;

    for(var i=0; i<chars.length; i++) {
      total = total + lookup[chars[i]];
    }

    return total;
  }

}