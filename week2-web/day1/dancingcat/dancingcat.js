var movePixels = 10;
var delayMs = 50;
var catTimer = null;

var flip = false;
var pass = false;
function catWalk() {
  var img = document.getElementsByTagName('img')[0];
  var currentLeft =parseInt(img.style.left);
  
  flipImage(img, currentLeft);

  if(flip === true) {
    img.style.left = (currentLeft - movePixels) + 'px';
  } else {
    img.style.left = (currentLeft + movePixels) + 'px';   
  }

  var center = parseInt(((window.innerWidth/2) - (img.width/2))/10)*10;
  console.log("center = " + center);
  if(currentLeft === center && pass === false) {
  //   img.style.left = currentLeft;
    clearInterval(catTimer);
    makeCatDance()
    pass = true;
  //   //startCatWalk();
  }
  console.log("pass after = center : " + pass);
  //if(pass && currentLeft <= window.innerWidth - img.width){
  if(flip === true) {
    img.style.left = (currentLeft - movePixels) + 'px';
  } else {
    if(pass && currentLeft <= window.innerWidth - img.width) {
      img.style.left = (currentLeft + movePixels) + 'px';  
      //console.log(parseInt((window.innerWidth - img.width)/10)*10 ); 
      var endFrame = parseInt((window.innerWidth - img.width)/10)*10; 
      if(currentLeft === endFrame) {
        pass = false;
      }
    }
    
  }
} 
function startCatWalk() {
  catTimer = window.setInterval(catWalk, delayMs);
}

function speedCat() {
  console.log(delayMs);

  if(catTimer) {
    clearInterval(catTimer);
  }
  delayMs -=10;
  startCatWalk();
}

function flipImage(elem, value) {
  if (value > (window.innerWidth-elem.width) ) {
    console.log("currentLeft >. currentLeft : " + value); 
    //console.log("window.innerWidth-img.width = " + (window.innerWidth-img.width));
    elem.style.transform = "rotateY(180deg)";
    flip = true;
  } else if (value < 0) {
    console.log("currentLeft <. currentLeft : " + value); 
    elem.style.transform = "rotateY(0deg)";
    flip = false;
  }
}

function makeCatDance() {
  var img = document.getElementsByTagName('img')[0];
  var currentLeft =parseInt(img.style.left);
  console.log("makeCatDance - currentLeft : " + currentLeft); 
  img.style.transform = "rotateX(360deg)";
  img.style.transition =  ".4s";
  //img.style.transform = "rotateX(360deg)";
  startCatWalk();
  return true;
}

/* Add Event listener */
document.getElementById("start-button").addEventListener('click', startCatWalk);
document.getElementById("stop-button").addEventListener('click', function() { clearInterval(catTimer);});

document.getElementById("speed-button").addEventListener('click', function() { speedCat() });

