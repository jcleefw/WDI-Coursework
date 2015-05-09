_.templateSettings = {
  interpolate: /\{\{(.+?)\}\}/g
};

var profiles = [{
  username: 'phil',
  blurp: 'little pony',
  flirt: 55,
  image_url: 'https://placekitten.com/g/300/200'
}, {
  username: 'beta',
  blurp: 'phil',
  flirt: 5,
  image_url: 'https://placekitten.com/g/300/200'
}];

// var profileItem = _.template($("#profile-item-template").html());

// _.each(profiles, function(profile) {
//   //console.log(profile.username);
//   var html = profileItem(profile);
//   $('#container').append(html);
// });

// $('.profile-item').on('click', function() {
//   console.log('360 rotation');
//   console.log("Hello " + $(this).find("h2").html());
// });

var ProfileItemView = Backbone.View.extend({
  // events: {
  //   "click": "itemClicked"
  // },
  // itemClicked: function() {
  //   console.log("item clicked");
  // },
  render: function() {
    var template = _.template($("#profile-item-template").html());
    //this.$el.html(template({username: 'dt', blurp: 'wat', image_url: '', flirt: 100}));
    this.$el.html(template(this.model));
  }

});

_.each(profiles, function(profile) {
  //console.log(profile.username);
  // var view = new ProfileItemView();
  var view = new ProfileItemView({model:profile});
  view.render();
  $('#container').append(view.el);
});


// var MenuView = Backbone.View.extend({
//   el: '#menu',
//   events: {
//     'click': 'menuClick'
//   },
//   menuClick: function() {
//     console.log('menuClick');
//   }

// });
// var menuView = new MenuView();

// var view = new ProfileItemView();
// view.render();

var likeWidgetView = Backbone.View.extend({

  elements: "<div><span>sdfwer</span><button class='like-btn'></button></div>",

  events: {
    "click .like-btn" : "likeThis"
  },
  likeThis: function() {

  }
});