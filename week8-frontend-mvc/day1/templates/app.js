$(document).ready(function() {
  //<div>phil</div>



});
function profileTemplate(name) {
    return "<div>"+name+"</div>"
  }

var profileItem = _.template($("#profile-item-tpl").html());