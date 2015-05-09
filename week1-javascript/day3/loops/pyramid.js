/*Write a program that takes user input and creates a simple ASCII art pyramid using only one character:

Ask the user for a character
Ask the user for the number of rows in the pyramid
Print out a simple ASCII art pyramid
**Bonus **- Ask the user if they want their pyramid upside-down and print it the way that they want it.*/
var userChar = '$';
var maxRow =4;
var row = 1;
var charCount = 1;
var spaceChar = ' ';
var spaceCount; 



while (row <= maxRow) {
  spaceCount = maxRow - row;
  var line = spaceChar.repeat(spaceCount) + userChar.repeat(charCount) + spaceChar.repeat(spaceCount);
  console.log(line);

  row++;
  charCount += 2;
  
}