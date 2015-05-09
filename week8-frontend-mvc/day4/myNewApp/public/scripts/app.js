_.templateSettings = {
  interpolate: /\{\{(.+?)\}\}/g
}

var AboutView = Backbone.View.extend({
  //el: '#quote', // this will not create a new element. it will use the existing element on the page
  tagName: 'h1',
  render: function() {
    this.$el.html("About");
    return this;
  }
});

var HomeView = Backbone.View.extend({
  tagName: 'h1', // this will create h1 tagname instead of the default div
  render: function() {
    this.$el.html("Home");
    return this;
  }
});

var Router = Backbone.Router.extend ({
  routes: {
    "home" :"home",
    "about" : "about",
    "foo/:bar" : "foobar"
  },
  foobar: function(bar) {
    console.log("foo bar " + bar);
  },

  home: function() {
    //console.log('at home');
    var view = new HomeView();
    $('.container').html(view.render().el);
  },

  about: function() {
    //console.log('at about');
    var view = new AboutView();
    $('.container').html(view.render().el);
  }
});

var router = new Router();
Backbone.history.start();

$('span').on('click', function() {
  //router.navigate('foo/bar', true)
  router.navigate('home', true);
});