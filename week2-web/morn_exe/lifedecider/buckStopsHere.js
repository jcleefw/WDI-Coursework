var array = 
["No", "Not today", "It is decidedly so", "Without a doubt", "Yes definitely", "You may rely on it", "As I see it yes", "Most likely", "Outlook good", "Signs point to yes", "Reply hazy try again", "Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don't count on it","My reply is no","My sources say no","Outlook not so good", "Very doubtful" 
];

function randomOpinion() {
  var length = array.length;
  //console.log(length);
  // return Math.floor(Math.random() * (length - 0)) + 0;
  var num = Math.floor(Math.random()*(length-1));
  //console.log(num);
  return array[num];
}

document.getElementById('message').innerHTML = "<p>"+randomOpinion()+"</p>";

