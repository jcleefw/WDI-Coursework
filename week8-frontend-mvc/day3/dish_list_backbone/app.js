_.templateSettings = {
  interpolate: /\{\{(.+?)\}\}/g
};

// $.ajax({
//   url: 'http://localhost:3000/dishes',
//   dataType: 'json'
// }).done(function(dishes) {
//   console.log('win!');
  // _.each(dishes, function(dish){
  //   var dishModel = new Dish(dish);
  // // create a new view passing in the data
  //   var view = new DishItemView({model: dishModel});

  //   // render to construct to html
  //   view.render();
  //   // append html back to document
  //   $('#container').append(view.el);
  // });
// });


// var dish1 = new Dish ({title: 'test dish 1', starCount: 2});
// var dish2 = new Dish ({title: 'test dish 2', starCount: 5});
// var dish3 = new Dish ({title: 'test dish 3', starCount: 9});

// var lunch_menu = new Dishes([dish1, dish2, dish3]);

var dishes = new Dishes();

// callback from fetch then set to done
dishes.fetch().done(function() {
  dishes.each(function(dish) {
    var view = new DishItemView({model: dish});
    // render to construct to html
    view.render();
    // append html back to document
    $('#container').append(view.el);

  });
});





$('#magic-btn').on('click', function(){
  // create a new dish model object
  //var dishModel = new Dish({title: 'fairy floss', starCount: 100});
  // create a new view passing in the data
  var dishModel = new Dish();
  var view = new DishItemView({model: dishModel});
  // render to construct to html
  view.render();
  // append html back to document
  $('#container').append(view.el);
});



