var allTasks = ['have lunch', 'morning tea', 'afternoon drinks', 'cronut for snack'];

function newTask(text) {
  // convert local storage strings back to array so that new item can be pushed into task
  var tasks = JSON.parse( localStorage.getItem('tasks') );
  // push item to array
  tasks.push(text);
  // convert array back to string with JSON and store it back to localStorage
  localStorage.setItem('tasks', JSON.stringify(tasks));

  var $task = $('#tasks');
  var $newTask = $('<li>').html(text);

  $task.append($newTask);
} 

$(document).ready(function () {
  console.log('good to go');

  var tasks = JSON.parse( localStorage.getItem('tasks'));
  var completedTasks = JSON.parse( localStorage.getItem('completedTasks'));
  $.each(tasks, function(index, elem){
    var $task = $('#tasks');
    var $newTask = $('<li>').html(elem);

    $task.append($newTask);
  });

  $.each(completedTasks, function(index, elem){
    console.log(elem);
    var $completedTask = $('#completed');
    var $newCompletedTask = $('<li>').html(elem);

    $completedTask.append($newCompletedTask);
  });

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

  //   
  //   $('#completed').append(string);
  //   console.log("test");
  // });

  $('ul').on('click', 'li', function() {
    var grabbedText = $(this).html();

    $(this).remove();

    //create a new list item elem and set the html to the grabbed text
    var $newListItem = $('<li></li').html(grabbedText).addClass('done');
    
    var completedTasks = JSON.parse( localStorage.getItem('completedTasks'));
    var tasks = JSON.parse( localStorage.getItem('tasks') );
    completedTasks.push(grabbedText);
    tasks.splice(tasks.indexOf(grabbedText), 1);

    localStorage.setItem('completedTasks', JSON.stringify(completedTasks));
    localStorage.setItem('tasks', JSON.stringify(tasks));

    $newListItem.appendTo('#completed');
  });

});