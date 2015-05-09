/* Iterate through the array. The output of every iteration should be the following:
- The first element of the array, all capital letters, labeled as name
- The second element of the array, labeled as age
- The third element of the array, reversed, labeled as favorite word

The console should log like this.

Name: HARI
Age: 50
Favorite word: bananas
*/

var array2 = [
  ["hari", 50, "sananab"],
  ["tony", 17, "regal"],
  ["mckenneth",9001,"poop"],
  ["will", 186, "knits"]
];
console.log(array2.length);

for(var i = 0; i < array2.length; i++ ){
  for(var j = 0; j < array2[i].length; j++) {
    if(j===0){
      console.log("Name: " + array2[i][j].toUpperCase());
    } else if (j===1) {
      console.log("Age: " + array2[i][j]);
    } else {
      console.log("Favourite word: " +  array2[i][j]);
    }
    
  }
}













