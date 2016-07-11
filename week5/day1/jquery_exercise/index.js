
var phrase = [
  "My name is Soichiro.",
  "You can call me 'Soy' for short.",
  "Some of my classmates call me 'beast'."
];
var phraseList = $('ul')
// var phrase = []

$(document).ready(function(){
  var randomPhrase = Math.floor(Math.random() * phrase.length);
  $('.random_phrase').text(phrase[randomPhrase]);
  phraseList.toggle()
});

$('button').click(function() {
  var randomPhrase = Math.floor(Math.random() * phrase.length);
  $('.random_phrase').text(phrase[randomPhrase]);
});

// This takes input and pushes is into the array and then recreates list
$('.form').keypress(function(e) {
  if (e.which == 13){
  event.preventDefault();
  var inputs = $(':text').val();
  phrase.push(inputs);
  createList();
}
});

var createList = function(){
  phraseList.empty()
  $.each(phrase, function(i) {
   var li = $('<li/>')
   li.text(phrase[i])
   li.appendTo(phraseList)
  });
};
createList();

$('.show').click(function() {
  phraseList.show()

});

$('.hide').click(function() {
  phraseList.hide('active')
});
