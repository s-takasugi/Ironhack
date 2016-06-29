function caesarCipher (message, shift) {
  var message = message.split('');
  shift = shift || -3

  message = message.map(function(letter) {
    if (letter >= 'A' && letter <= 'Z') {
      letter = letter.charCodeAt(0) + shift; {
        if (letter < 65) {
          return letter + 26
        } else if (letter > 90) {
            return letter -26
          } else {
              return letter;
          }
          return letter;
        };
        return letter
    } else if (letter >= 'a' && letter <= 'z') {
        letter = letter.charCodeAt(0) + shift;
        if (letter < 97) {
          return letter + 26
        } else if (letter >122) {
            return letter -26
          } else {
              return letter;
          }
          return letter;
      } else {
          return letter.charCodeAt(0);
        };
      return message
  });
  message = message.map(function(num) {
      return String.fromCharCode(num);
  });
  message = message.reduce(function(sum, i) {
    return sum + i;
  });
  return message;
}
var encrypted = caesarCipher ('Et tu brute?', -6);
console.log(encrypted);
