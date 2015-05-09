var simpsons= ['lisa', 'bart', 'maggie']

function logSimpson(simpson) {
  console.log(simpson);
}

/* Typical Way of javascript*/
var collection = {
  each: function(array, fn) {
  var something = array;
  console.log(fn);
    for(var i =0; i < array.length; i++) {
        fn(array[i]);
    }
    return something;
  }
}
console.log("typical raw javascript");
collection.each(simpsons, logSimpson);

console.log("with the help of underscore");
/* using underscore.js */
_.each(simpsons, logSimpson);
