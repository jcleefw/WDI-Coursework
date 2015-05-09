
function app() {

  /* function declaration */
  /* a good way to use this is for debugging purposes */
  function doSomething() {

  }

  /* function expression */
  var doSomething = function() {

  }

  var hey = "hi";

}

app(); // this is still technically a setting app to global


/* this is Immediate Invoking Function Expression. this have no way to get back into function */
(function(){
  /* function declaration */
  /* a good way to use this is for debugging purposes */
  function doSomething() {

  }

  /* function expression */
  var doSomething = function() {

  }

  var hey = "hi";
}) (); // this whole line in declaring and calling it straigt away