/*Never forget another recipe!

Create an object to hold information on your favorite recipe. It should have properties for title (a string), servings (a number), and ingredients (an array of strings).

On separate lines (one console.log statement for each), log the recipe information so it looks like:

Mole
Serves: 2
Ingredients:
cinnamon
cumin
cocoa*/

var recipe = {
  title: 'Mole',
  Serves: 2,
  Ingredients: ['cinnamon','cumin','cocoa']
}

var keys = Object.keys(recipe);
//console.log(keys);

console.log(recipe.title);
console.log('Serves: ' + recipe.Serves);
console.log('Ingredients: ');


for (var i = 0; i < recipe.Ingredients.length i++) {
  console.log(recipe.Ingredients[i]);
}

for (var i = 0; i < keys.length; i++) {
    //console.log(keys[i]);
    var val = recipe[keys[i]];
    var len = val.length;
    //console.log('len = ' + len);
    
    //console.log(val);
    // if(len>1) {
        
    //     var val = recipe[keys[i]];
    //     for (var j = 0; j < len; j++) {
    //         console.log(val);
    //     }
    // }
    
    // (var i = 0; i < keys.length; i++) {
    
}