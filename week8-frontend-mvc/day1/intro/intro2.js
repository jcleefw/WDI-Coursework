// hoisting

// javascript always runs twice.
// first time looking for declaration, 2nd time execute/express it.

var myName = 'cody perry';

doSomething();

function doSomething() {
  console.log('hi cody perry');
}