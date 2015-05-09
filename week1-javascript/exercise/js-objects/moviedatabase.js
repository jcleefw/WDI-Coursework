// It's like IMDB, but much much smaller!

// Create an object to store the following information about your favorite movie: title (a string), duration (a number), and stars (an array of strings).

// Create a function to print out the movie information like so: "Puff the Magic Dragon lasts for 30 minutes. Stars: Puff, Jackie, Living Sneezes."

var movie = {
  title: 'Puff the Magic Dragon',
  duration: '30',
  star: ['Puff', 'Jackie', 'Living Sneezes']
}

function printMovie(array) {
  var title = array.title;
  var duration = array.duration;
  
  var star ='';
  for(var i=0; i < array.star.length; i++) {
      star += array.star[i] + ', ';
  }
  console.log(title + ' last for '+ duration + ' minutes. Stars: ' + star);
}

printMovie(movie);
