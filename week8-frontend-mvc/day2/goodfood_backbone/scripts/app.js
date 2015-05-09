_.templateSettings = {
  interpolate: /\{\{(.+?)\}\}/g
};

var DishItemView = Backbone.View.extend({
  events: {
    "click .star": "starClicked"
  },

  starClicked: function() {
    console.log("star clicked");
    // spanLikes = this.$el.find('.likes em');
    // spanLikes.html(Number(this.$el.find('.likes em').html())+1);
    //console.log();
    this.model.likes = this.model.likes+1;
    this.render();
  },
  className: 'dish',
  render: function() {
    console.log("rendering... ");
    var template = _.template($("#dish-item-template").html());
    this.$el.html(template(this.model));
  }
});

var AddNewDishView = Backbone.View.extend({

  events: {
    "click button": "add"
  },
  add: function() {
    console.log('add Click');

    var dishes = {dish_name: ['Cake Pudding', 'Gnocchi', 'Steak', 'Snail Porridge'], location: ['General Assembly', 'Master Chef', 'Steak Hour', 'Anywhere', 'Fat Duck'], image_url: ['http://resources1.news.com.au/images/2010/11/15/1225953/971937-taste-junior-masterchef-winner.jpg','http://1.bp.blogspot.com/-bd3QHtfyLko/T5W1rlQlR8I/AAAAAAAAODY/8VI1Ykbw-3E/s640/11_edited.jpg','http://www.tuckingawesome.com/wp-content/uploads/2015/02/grilled-pepper-steak.jpg','https://s-media-cache-ak0.pinimg.com/474x/90/c4/2f/90c42f1d37f88af014e409d82cdd206d.jpg']};

    var randLikes = getRandomInfo(100);
    var randDishname = getRandomInfo(dishes.dish_name.length, dishes.dish_name);
    var randLocation = getRandomInfo(dishes.location.length, dishes.location);
    var randImage = getRandomInfo(dishes.image_url.length, dishes.image_url);

    console.log(randDishname);
    var randomDish = {dish_name: randDishname, location: randLocation, likes: randLikes, image_url: randImage};
      console.log(randLocation);
      generateNewDish(randomDish);
  },
  className: 'addDish',
  render: function() {
    var template = _.template($("#add-button-template").html());
    this.$el.html(template);
    console.log(this.$el);
  }
});

function generateNewDish(dish) {
  var view = new DishItemView({model: dish});
  view.render();
  $('.container').append(view.el);
}
function getRandomInfo (max, element) {
  number = Math.floor(Math.random() * (max - 0));
  if(element) {
    return element[number];
  } else {
    return number
  }
}


$(document).ready(function(){
  var button = new AddNewDishView();
  button.render();
  $('.container').append(button.el);
});

