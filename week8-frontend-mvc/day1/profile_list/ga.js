
_.templateSettings = {
  interpolate: /\{\{(.+?)\}\}/g
};

var ga = [{
  name: 'Matt Cameron',
  blurp: 'Full Stack Developer (in training) at General Assembly',
  image_url: 'http://m.c.lnkd.licdn.com/mpr/mpr/shrink_200_200/AAEAAQAAAAAAAALaAAAAJGZmNGFkN2RkLTdmOGUtNDc4MC05MGZmLTBlNGI4OGUyZTYxZQ.jpg'
}, {
  name: 'Jaya Wijono',
  blurp: 'Full-Stack Developer & Innovative Technologist',
  image_url: 'http://m.c.lnkd.licdn.com/mpr/mpr/shrink_200_200/p/6/005/0b5/117/2d17e90.jpg'
}];

// var gaProfile = _.template($("#ga-item-template").html());


// _.each(ga, function(profile) {
//   //console.log(profile.username);
//   var html = gaProfile(profile);
//   $('#container').append(html);
// });

var gaItemView = Backbone.View.extend({
  events: 'itemClicked';
});