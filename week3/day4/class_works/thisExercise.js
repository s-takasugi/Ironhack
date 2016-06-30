// var Car = function(model, noise){
//   this.model = model
//   this.noise = noise
//   this.numberOfWheels = 4
// }
//
// Car.prototype.makeNoise = function() {
//   console.log('the noise of the car is ' + this.noise )
// };
//
// var myCar = new Car('fiat','BROOOOOM!' );
//
// console.log(myCar.makeNoise());

var x = {
  name: 'matias',
  printName: function(){
    console.log(this.name)
  }
}

x.printName()

var f = x.printName;
// =>matias
f();
// =>undefined
f.bind(x)();
// =>matias
