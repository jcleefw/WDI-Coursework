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
    // var count  = this.$el.find('.count').html();
    // count++;
    //this.$el.find('.count').html(count);
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