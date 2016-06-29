var decoder = require('./decoder.js')

var sentence = "fill the proper tank for the cow";

function super_decoder(string, type, order) {
  var array = sentence.split(' ');

  if (type == 'even'){
    array = array.filter(function(word, index) {
      return index % 2 == 0;
    })
  } else if (type == 'odd'){
    array = array.filter(function(word, index) {
      return index % 2 != 0;
    })
  }
  if (order == 'backwards') {
    array = array.reverse();
  }

  return decoder(array);
}

console.log(super_decoder(sentence, 'odd', 'backwards'));

// //=>"cool"
