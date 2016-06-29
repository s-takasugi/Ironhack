function decoder(array){
  var index = 0;
  var secretMessage = '';
  // for (var i = 0; i<array.length; i++){
  //   secretMessage += array[i].charAt(index % 5)
  //   index++;
  //   }
  array.forEach(function(word, indexNew){
    secretMessage += word[indexNew % 5];
  })
    return secretMessage
}

module.exports = decoder
