// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require underscore
//= require backbone
//= require_tree .


_.templateSettings = {
  interpolate: /\{\{(.+?)\}\}/g
};

var Dish = Backbone.Model.extend({
  defaults: function(){
    this.set('title', this.randDish());
    this.set('starCount', 5);
  },

  // build function to be random dish
  randDish: function() {
    var names = ['Cake Pudding', 'Gnocchi', 'Steak', 'Snail Porridge'];
    //console.log(names[2]);
    return names[2];
  }
});

var dishes = [];
dishes.push(new Dish({
  title: 'cakepudding',
  starCount: 5
}));
dishes.push(new Dish({
  title: 'beer muffin',
  starCount: 9
}));

// var router = new Router();
// Backbone.history.start();


var DishItemView = Backbone.View.extend({
  events: {
    "click .star": "starClicked",
    //"click .dish-item": "dishClicked"
    "click .dish-item": "showDetail"
  },
  initialize: function() {
    this.listenTo(this.model, 'change', this.render);
  },
  starClicked: function() {
    console.log("star clicked");
    var count = this.model.get('starCount')+1;
    this.model.set('starCount', count);
    this.render();
  },
  dishClicked: function(){
    this.$el.parent().empty();
    $('#container').append($('<h1>').html(this.model.get('title')));
  },
  className: 'dish',
  render: function() {
    console.log("rendering... ");

    var htmlMaker = _.template( $('#dish-item-template').html());
    var html = htmlMaker(this.model.toJSON());
    this.$el.html(html);
  }
});





$(document).ready(function() {
  $.ajax({
    url: '/dishes',
    dataType: 'json'
  }).done(function(data) {
    console.log(data);
    _.each(dishes, function(dish){
    // create a new view passing in the data
      var view = new DishItemView({model: dish});

      // render to construct to html
      view.render();
      // append html back to document
      $('#container').append(view.el);
    });
  });
});


$('#magic-btn').on('click', function(){

  // create a new view passing in the data
  var dishModel = new Dish();
  var view = new DishItemView({model: dishModel});
  // render to construct to html
  view.render();
  // append html back to document
  $('#container').append(view.el);
});




