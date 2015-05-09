String.prototype.reverse = function(){
  string = this.split('').reverse().join('').toLowerCase();
  return string;
}
  

String.prototype.checkPalindrome = function(){
    var string = this.split('').join('').toLowerCase();
   var reverse = this.reverse();
  if(reverse === string) {
      return true;
  } else {
      return false;
  }
}
  

"blolb".checkPalindrome();