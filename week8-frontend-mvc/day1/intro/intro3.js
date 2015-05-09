var fullname = 'dt';

function person() {
  console.log(this.fullname);
}

var cody = {
  fullname: 'cody',
  greet: person,
  foo: function() {
    console.log('my fullname is ' + this.fullname);
  }
}

var perry = {
  fullname: 'perry';
}

person(); // it's this in the person function is pointing to default global
cody.person(); // this is implicit
person.call(perry); // this is explicit. will return perry
person.apply(perry); // this is also explicit. will return perry

cody.greet(); // cody
cody.fullname; // "cody"
cody.foo();  //my fullname is cody

var myFoo = cody.foo;
myFoo();  // my fullname is dt


var dt = new person();

/* this keyword is actually a reference to an object. or a pointer to a function.
  it changes according to its context
*/
Rules of THIS
order of priority goes from 4(highest) - 1(lowest)
1. default reference is global
2. implicit (calling a function via and object)
  - this will set to the object
3. explicit
  - changing the context of this
4. new keyword
  - new have the highest priority. it will overwrite every rule before the other


someObject = {
  name: 'dt',
  bar: function() {

    //var self = this;  // this is not a very good way to do. ugly way
    var doSomething = function(0 {
      self.
    })
    $().on('click', doSomething.call(this)); // this is a better way to refer to the someObject context instead of using self=this
  }
}
