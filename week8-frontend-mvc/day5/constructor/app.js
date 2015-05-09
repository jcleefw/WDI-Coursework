function Foobar(title) {
  //return {foo: "bar"};
  this.title = title;

  var hello = function() {
    console.log('Hello world');
  }

  this.helloWorld = hello;
}

var fb = new Foobar();
fb = new Foobar();
console.log(fb);
console.log(fb.helloWorld);

fb = new Foobar('little pony');
console.log(fb);


// add a function to objects the Foobar create
Foobar.prototype.greetings = function() {
  console.log('greetings');
}

function Account(amount) {
  this.balance = amount;
}

// Account is a function which is an object
// prototype is a property that points to an object
// deposit in the property

// if there's a prototype used is only a link. the function actually does not appear in the object. It's just a pointer.
Account.prototype.deposit = function(amount) {
  this.balance = this.balance + amount;
}

