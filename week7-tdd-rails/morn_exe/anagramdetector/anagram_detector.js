array = ["enlists", "google", "inlets", "banana"]

test_word = "listen".split("").sort();

array.forEach(function(word) {
  letters = word.split("");

  /* solution 2 with function*/
  // if(findAnagram(letters, test_word)){
  //   console.log(word);
  // }

  /* Solution 2 */
  if(letters.sort().join("") === test_word.join("")){
    console.log(word);
  }
});

function findAnagram(string1, string2) {
  string1 = string1.sort();

  if(string1.length !== string2.length) {
    return false;
  } else {
    for(var i= 0; i < string1.length; i++) {
      if(string1[i] !== string2[i]) {
        return false;
      }
    }
    return true;
  }
}