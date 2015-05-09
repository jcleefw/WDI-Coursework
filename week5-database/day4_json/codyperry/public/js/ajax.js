/* This whole top part was using pure javascript. The hard way... */

// var request = new XMLHttpRequest();

// request.onreadystatechange = function() {
//   // console.log('readyState has changed');
//   // console.log("readyState", this.readyState);
//   // console.log("responseText", this.responseText);

//   if(this.readyState === 4) {
//     console.log("done");
//     document.write ( this.responseText )
//   }
// };

// request.open('GET', '/slow');
// request.send();

// console.log('AJAX request is probably still loading');

/* This is when we use jquery. The easy way....*/

$(document).ready(function() {

  // $.getJSON ('/api/students').done(function(data) {
  //   console.log(data.luckyNumber);
  // });

  var displayResult = function (data) {
    console.log(data);
  }

  $.getJSON ('/api/students').done(displayResult);

  $button.on('click', displayResult);

});
