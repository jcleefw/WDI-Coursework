###REVERSE STRING
---

Create a function named "reverse" for the String prototype that will allow the following functionality:

EXAMPLE: 
    
    "String".reverse();         //=> returns "gnirtS"
    "I like cookies".reverse(); //=> "seikooc ekil I"
  

HINT: To add functions to the the STRING prototype use the following syntax:

    String.prototype.myCoolFunction = function(){
      console.log("You only had one job! To the naughty desk!");
      }
      
    "I forgot the hook".myCoolFunction() #=> "You only had one job! To the naughty desk!"




###PALINDROME

---

A palindrome is a word, phrase, number, or other sequence of characters which reads the same backward or forward.

Write a function named "palindrome" that accepts one parameter, a STRING. If the word is a palindrome return true, if not return false.

EXAMPLE:

palindrome("Glenn")  #=> false
palindrome("Anna")   #=> true

Make a list of words and test your program 