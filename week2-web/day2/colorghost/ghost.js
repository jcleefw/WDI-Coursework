var ghost = {
  color: function () {
    var R = Math.floor(Math.random() * (255 - 0) + 0);
    var G = Math.floor(Math.random() * (255 - 0) + 0);
    var B = Math.floor(Math.random() * (255 - 0) + 0);
    return "rgb(" + R + "," + G + "," + B + ")";
  }
}

var button = document.getElementById('submit');
button.addEventListener('click', function() {
  var color = ghost.color();
  console.log(color);
  document.getElementById('random').style.background = color;
});