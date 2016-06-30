function blastOff(n){
  var counter = 0;

  function start(){
    if (counter <= n) {
      console.log(counter);
      counter ++;
      setTimeout(start, 1000);
    } else {
      console.log('Blast Off!!!')
    }
  }
  start();
}
blastOff(10)

// // below solution is a typical mistake
//
// function blastOff(n){
//   for (var i = 0; i < n; i++) {
//     setTimeout(function(){console.log(i)}, 1000);
//   }
// }
