// //$(document).ready() {
//   $(<button>).on(click, function(e) {
//     e.preventDefault();
//     var message = $(input[name="message"]).val();
//     var keyword = $(input[name="keyword"]).val();

function cipher(message, keyword){
  var messageLength = message.length;

  //generate cipher key according to message length
  generateCipherKey(messageLength, keyword);

  var numberMessageArray = $.map(message.split(""), function(alphabet) {
    return alphabet.charCodeAt();
  });

  var numberKeywordArray = $.map(keyword.split(""), function(alphabet) {
    return alphabet.charCodeAt();
  });
  console.log(numberMessageArray);
  console.log(numberKeywordArray);
}

function generateCipherKey(messageLength, keyword) {
  var leftover = messageLength % keyword.length
  var repeat = messageLength / keyword.length


}

cipher("attackatdawn","lemon");