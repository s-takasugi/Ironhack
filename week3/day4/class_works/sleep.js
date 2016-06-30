sleep(10, function(){
  console.log('It\'s been 10 seconds.');
});

function sleep(time, callback){
  var seconds = time * 1000;
  setTimeout(callback, seconds);
}
