  function newTask(text) {
    console.log($(text));
    var $task = $('#tasks');
    var $newTask = $('<li>').html(text);

    $task.append($newTask);
  } 

$(document).ready(function () {
  console.log('good to go');


  // addEventListener()
  $('form').on('submit', function(e) {
    e.preventDefault();
    console.log('submitting');
    var $newTask = $('form input');
    newTask($newTask.val());
    $newTask.val('');
  });

  // event delegation.
  // go to the parent element, then select what child element to look for.
  // $('#tasks').on('click', 'li', function() {
  //   var string = $(this).addClass('done');
  //   //$(this).toggleClass('done');
  //   //$(this).parent().remove();
  //   $('#completed').append(string);
  //   console.log("test");
  // });
  $('ul').on('click', 'li', function() {
    var grabbedText = $(this).html();

    $(this).remove();

    //create a new list item elem and set the html to the grabbed text
    var $newListItem = $('<li></li').html(grabbedText);

    $newListItem.appendTo('#completed');
  });

});