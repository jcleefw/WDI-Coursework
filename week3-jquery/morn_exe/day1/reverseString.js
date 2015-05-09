String.prototype.reverse = function(num){
  var newString = '';
  for(var i = this.length-1; i >= 0; i--) {
     newString += this[i];
  }
  //newString.join()
  return newString;
}
  
"String".reverse();