var Dish = Backbone.Model.extend({
  defaults: function(){
    this.set('title', this.randDish());
    this.set('starCount', 5);
  },

  // build function to be random dish
  randDish: function() {
    var names = ['Cake Pudding', 'Gnocchi', 'Steak', 'Snail Porridge'];
    //console.log(names[2]);
    return getRandomInfo(names.length, names);
  },
  urlRoot: 'http://localhost:3000/dishes'
});

function getRandomInfo (max, element) {
  number = Math.floor(Math.random() * (max - 0));
  if(element) {
    return element[number];
  } else {
    return number
  }
}
