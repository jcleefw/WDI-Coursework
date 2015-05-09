/* - Hari can't remember his name. Remove Haris name from his array.
- Tony just had his birthday, change the Tonys array to reflect him being a year older
- Mckenneth has another favorite word, `"swag"`, add this to his array
- Will doesn't like knits anymore. Remove Wills favorite word from his array. */

var hari = ["hari", 50, "sananab"]
var tony = ["tony", 17, "regal"]
var mck = ["mckenneth",9001,"jazz"]
var will = ["will", 186, "knits"]

hari.shift();
tony[1] = tony[1] +1;
mck.push('swag');
will.pop();

console.log(hari);
console.log(tony);
console.log(mck);
console.log(will);