$(document).ready(function() {
  var h1 = $('.outer h1');
  h1.html('I am very hungry'); //.getElementsByTagName('h1')[0]

  //instead of using array notation, we can use a jquery object with .eq()
  console.log(h1.eq(0).html('it works.'));  

  //.menu li:last-child
  var lastListItemOfMenu = $('.menu li:last-child').html('Gummy');

  //var $newElement = $('<li>Free</li>');
  //var $newElement = $('<li>').addClass('cool').html('free');

  var $newElement = $('<li>', { class: 'cool', id: 'sweet', html:'object'});
  $('.menu').append($newElement);
  //$('.menu').prepend($newElement);

  //$newElement.appendTo('.menu');
});