function caesarCipher (message) {
  var message = message.split('');

  message = message.map(function(letter, i){
    if ((letter >= 'A' && letter <= 'Z') || (letter >= 'a' && letter <= 'z')){
    return letter.charCodeAt(0) - 3
  }else {
    return letter.charCodeAt(0);
  }});
  message = message.map(function(num){
    return String.fromCharCode(num)
  });
  message = message.reduce(function(sum, i){
    return sum + i
  });
  return message;
}
var encrypted = caesarCipher ('Oh, my G@D!!!')
console.log(encrypted);
