function caesarCipher (message) {
  var message = message.split('');
  message = message.map(function(letter, i){
    return letter.charCodeAt(0) - 3
  });
  message = message.map(function(num){
    return String.fromCharCode(num)
  });
  message = message.reduce(function(sum, i){
    return sum + i
  });
  return message;
}
var encrypted = caesarCipher ('brutus')
console.log(encrypted);
